.class public Lcom/nuance/swype/input/IME;
.super Landroid/inputmethodservice/InputMethodService;
.source "IME.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
.implements Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;
.implements Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;,
        Lcom/nuance/swype/input/IME$KeyboardState;,
        Lcom/nuance/swype/input/IME$IntentDecorator;,
        Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;,
        Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;
    }
.end annotation


# static fields
.field protected static final ANDROID_DEFAULT_IME_ID:Ljava/lang/String; = "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

.field private static final ARROW_KEYS_ACCELERATE_AT:I = 0x14

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final FX_VOLUME:F = -1.0f

.field private static final HARD_KEYBOARD_REOPEN_INPUTVIEW:I = 0x3f2

.field private static final INITIAL_DELAY_IN_MILLIS:J = 0x1388L

.field public static final MAX_DLM_TEXTS_TO_SCAN:I = 0x1

.field private static final MAX_TRIAL_USE_COUNT:I = 0x5

.field public static final MAX_WORDS_TO_SCAN:I = 0xa

.field public static final MSG_ADD_OEM_LDB_WORDS:I = 0x7d

.field public static final MSG_BACKGROUND_LOADED:I = 0x7c

.field public static final MSG_CYCLING_KEYBOARD_INPUTS:I = 0x67

.field public static final MSG_CYCLING_LANGUAGE:I = 0x66

.field public static final MSG_DELAY_CHECK_LANGUAGE_UPDATE:I = 0x77

.field public static final MSG_FINISHVIEW_RUNNABLE_POSTED:I = 0x7b

.field public static final MSG_FIRST:I = 0x64

.field public static final MSG_HARDKEY_HANDLE_CUSTOM_KEY_EVENT:I = 0x74

.field public static final MSG_HARDKEY_START_HIDE_WCL:I = 0x73

.field public static final MSG_HARDKEY_START_SHOW_WCL:I = 0x75

.field public static final MSG_LAST:I = 0x7d

.field public static final MSG_LAUNCH_SETTINGS:I = 0x69

.field public static final MSG_NEW_WORDS_SCAN:I = 0x71

.field public static final MSG_REFRESH_INPUTVIEW:I = 0x6c

.field public static final MSG_RELEASE_EMOJI_INPUT:I = 0x78

.field public static final MSG_RESUME_EMOJI_INPUT:I = 0x79

.field public static final MSG_SHOW_EMOJI_INPUT:I = 0x7a

.field public static final MSG_SHOW_FIRST_TIME_MESSAGES:I = 0x6d

.field public static final MSG_SWITCH_INPUTVIEW:I = 0x64

.field public static final MSG_SWITCH_INPUTVIEW_NO_RESTARTING:I = 0x65

.field public static final MSG_SWITCH_LANGUAGE:I = 0x6f

.field public static final MSG_TOGGLE_FULLSCREEN_HWR:I = 0x6b

.field public static final MSG_TOGGLE_HWR_KEYBOARD:I = 0x6a

.field public static final MSG_TOGGLE_TO_ANDROID_KEYBOARD:I = 0x70

.field public static final MSG_UPDATE_INCOMPATIBLE_LANGUAGE:I = 0x76

.field public static final NEXT_SCAN_IN_MILLIS:J = 0x7d0L

.field private static final QUICK_PRESS:I = 0x2ee

.field public static final RETRY_DELAY_IN_MILLIS:J = 0x2710L

.field private static final SAMSUNG:Ljava/lang/String; = "Samsung"

.field private static final WAIT_TIME_FILTER_STARTINPUT:I = 0x2bc

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mLastActiveWord:Ljava/lang/StringBuilder; = null

.field private static mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source; = null

.field public static final skipLvlError:Z = true

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private allowCandidateViewShown:Z

.field private alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field appPrefs:Lcom/nuance/swype/input/AppPreferences;

.field private appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

.field private audioManager:Landroid/media/AudioManager;

.field private checkPackageUpdateRunnable:Ljava/lang/Runnable;

.field private final checkedLanguageUpdateList:Landroid/util/SparseIntArray;

.field private closeRunnable:Ljava/lang/Runnable;

.field private currentLicense:Lcom/nuance/swype/input/License;

.field private final devanagariInputMode:Ljava/lang/String;

.field private dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

.field private dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

.field public emojiExtraRegion:I

.field private extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

.field private finishInputViewRunnable:Ljava/lang/Runnable;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field public handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

.field private hwAccelEnabled:Z

.field private ignoreFirstUpdateSelectionPostOrientationChange:Z

.field private inUse:Z

.field private initializeCoreNeeded:Z

.field private inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

.field private isAccessibilityChanged:Z

.field private isCandidateViewOpening:Z

.field private isEditorAttributeChanged:Z

.field private isHardKeyboardAttached:Z

.field private isHardkeyboardEnabled:Z

.field private isOrientationChanged:Z

.field private isStartInputPending:Z

.field private isStartupActivityShown:Z

.field protected keySoundOn:Z

.field public keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

.field private languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

.field private languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

.field private languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

.field private lastAccessibility:Z

.field private lastAllowedTime:J

.field private lastConfiguration:Landroid/content/res/Configuration;

.field private mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

.field public mAlertMessageDialog:Landroid/app/AlertDialog;

.field public mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

.field public mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field public mCurrentInputViewName:Ljava/lang/String;

.field private mEditState:Lcom/nuance/swype/input/EditState;

.field private final mHandler:Landroid/os/Handler;

.field public mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

.field public mInputMethods:Lcom/nuance/swype/input/InputMethods;

.field private mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

.field public mLastKey:I

.field private mLastKeyTime:J

.field private mNeedLanguageInToast:Z

.field private mNetworkPromptMessage:Landroid/app/AlertDialog;

.field public mOptionsDialog:Landroid/app/AlertDialog;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepeatedKeyCount:I

.field private mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

.field private mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

.field private mTouchableRegionRect:Landroid/graphics/Rect;

.field private mUsedEditLayer:Z

.field private mValidBulid:Z

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field public mWantToast:Z

.field private myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

.field private needRrefreshKeyboard:Z

.field private pendingHibernateState:Ljava/lang/Runnable;

.field private popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

.field private portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

.field private prevLastInput:I

.field private recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

.field protected recaptureWhenSwitching:Z

.field private final savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

.field private simulateTapOnPostOrientationChangePending:Z

.field private startupActivityShown:Z

.field public tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

.field private toggleButton:Landroid/widget/ImageButton;

.field private trialCheckCount:I

.field private upgrade:Z

.field protected vibrateOn:Z

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "IME"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 133
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    .line 232
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sput-object v0, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 149
    const-string/jumbo v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 190
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->needRrefreshKeyboard:Z

    .line 211
    new-instance v0, Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-direct {v0}, Lcom/nuance/swype/input/IME$KeyboardState;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    .line 218
    iput v1, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    .line 251
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    .line 258
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->lastAccessibility:Z

    .line 259
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    .line 268
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 269
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->mValidBulid:Z

    .line 271
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->toggleButton:Landroid/widget/ImageButton;

    .line 272
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->view:Landroid/view/View;

    .line 277
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    .line 281
    const-string/jumbo v0, "devanagariAlphabetic"

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->devanagariInputMode:Ljava/lang/String;

    .line 308
    sget-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 470
    new-instance v0, Lcom/nuance/swype/input/IME$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$1;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    .line 1734
    new-instance v0, Lcom/nuance/swype/input/IME$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$3;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    .line 1976
    new-instance v0, Lcom/nuance/swype/input/IME$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$4;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->checkPackageUpdateRunnable:Ljava/lang/Runnable;

    .line 3218
    new-instance v0, Lcom/nuance/swype/input/IME$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$7;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3423
    new-instance v0, Lcom/nuance/swype/input/IME$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$8;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    .line 3704
    new-instance v0, Lcom/nuance/swype/input/IME$14;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$14;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->handlerCallback:Landroid/os/Handler$Callback;

    .line 3854
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    .line 4359
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    .line 4637
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 4638
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    .line 314
    sget v0, Lcom/nuance/swype/input/R$style;->InputMethodTheme:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->setTheme(I)V

    .line 315
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->checkPackageUpdate()V

    return-void
.end method

.method static synthetic access$1002(Lcom/nuance/swype/input/IME;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->needRrefreshKeyboard:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showFirstTimeMessages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->toggleToAndroidKeyboard()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->checkForLanguageUpgrade(Lcom/nuance/swype/input/InputMethods$Language;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ThirdPartyLicense;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/LanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/IME;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->toggleInputMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/IME;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/IME;->doFinishInputView(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/IME$KeyboardState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/IME;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->getIntentFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/IME;)Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    return-object v0
.end method

.method private checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
    .locals 9
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "runnable"    # Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4642
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "checkForLanguageUpdateRunnable: "

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4644
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    .line 4645
    .local v0, "sdkMgr":Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageAvailableForUpdate(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4646
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "checkForLanguageUpdateRunnable: "

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string/jumbo v4, " no update available"

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4649
    if-eqz p2, :cond_0

    .line 4650
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4669
    :cond_0
    :goto_0
    return-object v1

    .line 4656
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->access$1700(Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-static {p2}, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->access$1800(Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 4657
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "checkForLanguageUpdateRunnable: "

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string/jumbo v3, " pending"

    aput-object v3, v2, v7

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move-object v1, p2

    .line 4659
    goto :goto_0

    .line 4662
    :cond_2
    if-eqz p2, :cond_3

    .line 4663
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4666
    :cond_3
    new-instance p2, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .end local p2    # "runnable":Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
    invoke-direct {p2, p1, v0, v1}, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/input/IME$1;)V

    .line 4667
    .restart local p2    # "runnable":Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v1, p2

    .line 4669
    goto :goto_0
.end method

.method private checkForLanguageUpgrade(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 8
    .param p1, "currentLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 4673
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "checkForLanguageUpgrade: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4674
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4701
    :cond_0
    :goto_0
    return-void

    .line 4677
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v3

    .line 4678
    .local v3, "ssInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v4

    .line 4679
    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowStartup(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4683
    :cond_2
    instance-of v4, p1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v4, :cond_6

    move-object v0, p1

    .line 4684
    check-cast v0, Lcom/nuance/swype/input/BilingualLanguage;

    .line 4685
    .local v0, "bi":Lcom/nuance/swype/input/BilingualLanguage;
    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget v1, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 4686
    .local v1, "firstLangId":I
    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget v2, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 4687
    .local v2, "secondLangId":I
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    .line 4688
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v4

    if-gez v4, :cond_4

    .line 4690
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 4689
    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/IME;->checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 4692
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    .line 4693
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 4695
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 4694
    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/IME;->checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    goto :goto_0

    .line 4698
    .end local v0    # "bi":Lcom/nuance/swype/input/BilingualLanguage;
    .end local v1    # "firstLangId":I
    .end local v2    # "secondLangId":I
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    invoke-direct {p0, p1, v4}, Lcom/nuance/swype/input/IME;->checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    goto :goto_0
.end method

.method private checkPackageUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->hasNewWordsScanning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 505
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/UserPreferences;->setCheckPackageUpdate(Z)V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "begin check if Package available to upgrade."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    goto :goto_0
.end method

.method private connectLearnContextBuffer(Ljava/lang/String;)V
    .locals 4
    .param p1, "contextBuffer"    # Ljava/lang/String;

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/swype/input/IME$9;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/IME$9;-><init>(Lcom/nuance/swype/input/IME;Ljava/lang/String;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3457
    return-void
.end method

.method private doFinishInputView(ZZ)V
    .locals 4
    .param p1, "finishingInput"    # Z
    .param p2, "startScan"    # Z

    .prologue
    .line 1742
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 1743
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return-void

    .line 1748
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onFinishInputView(Z)V

    .line 1749
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDialogs()V

    .line 1750
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 1751
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 1752
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_2

    .line 1753
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {p0, p1, v1, v2}, Lcom/nuance/swype/input/IME;->onFinishInputViewProjectOverride(ZLcom/nuance/swype/input/InputView;Lcom/nuance/swype/input/IME$KeyboardState;)V

    .line 1755
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1756
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1757
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1758
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/IMEHandler;->onFinishInputView(Z)V

    .line 1762
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1763
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->notifyKeyboardClose(Landroid/content/Context;)V

    .line 1766
    :cond_4
    if-eqz p2, :cond_0

    .line 1767
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1768
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->startPendingScanning()V

    goto :goto_0
.end method

.method private doRecaptureWhenSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4612
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    if-eqz v0, :cond_1

    .line 4613
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4614
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, v1, v1}, Lcom/nuance/swype/input/RecaptureHandler;->onSingleTap(ZZ)Z

    .line 4616
    :cond_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 4618
    :cond_1
    return-void
.end method

.method private doStartInputInternal()V
    .locals 1

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->updateFullscreenMode()V

    .line 1345
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 1346
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->syncWithDeviceAccessiblityState()V

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->detectAccessibilityChange()V

    .line 1351
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->detectLocaleChange()V

    .line 1354
    :cond_1
    return-void
.end method

.method private getCandidatesView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1278
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Getting candidates view"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1279
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCandidatesViewCreate()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getIntentFlags()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 3845
    const v0, 0x10008000

    return v0
.end method

.method public static getLastSavedActiveWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    return-object v0
.end method

.method public static getLastSavedActiveWordAndSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    sget-object v1, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "word":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 400
    return-object v0
.end method

.method public static getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 427
    .local v0, "last":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 428
    return-object v0
.end method

.method private getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I
    .locals 1
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 4422
    const/4 v0, 0x1

    return v0
.end method

.method private handleBackspace(I)V
    .locals 3
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2917
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2918
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2919
    invoke-virtual {v0, v1, v2, p1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2925
    :goto_0
    return-void

    .line 2924
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private handleLeftRightKey(II)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 2949
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2950
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, v1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2956
    :goto_0
    return-void

    .line 2955
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_0
.end method

.method private handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 5
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4368
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "handleNewWordsDelayScanning()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4369
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4370
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4371
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    if-eqz v0, :cond_0

    .line 4372
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->initializedCore()V

    .line 4373
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    .line 4376
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_1

    .line 4378
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/IME;->scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V

    .line 4380
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4381
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    .line 4389
    :cond_1
    :goto_0
    return-void

    .line 4385
    :cond_2
    iput-boolean v4, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    .line 4386
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0
.end method

.method private handleSpace(ZI)V
    .locals 4
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2929
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    const/16 v2, 0x20

    .line 2930
    invoke-virtual {v0, v2, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2932
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isAutoReturnToEditorDefaultLayerEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2937
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    .line 2938
    .local v1, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getDefaultLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v2, v3, :cond_0

    .line 2939
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->returnToDefaultLayer()V

    .line 2946
    .end local v1    # "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    :cond_0
    :goto_0
    return-void

    .line 2945
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->sendSpace()V

    goto :goto_0
.end method

.method private isHardwareAccelerationEnabled()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    return v0
.end method

.method private isLVLEnabled()Z
    .locals 2

    .prologue
    .line 4471
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->google_play_show_lvl_default:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isSamsungDevice()Z
    .locals 2

    .prologue
    .line 2274
    const-string/jumbo v0, "Samsung"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2276
    :cond_0
    const/4 v0, 0x1

    .line 2278
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private learnContextBuffer(Ljava/lang/String;)V
    .locals 6
    .param p1, "contextBuffer"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1560
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1561
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "input view is null or monkey, skipping learn context"

    aput-object v3, v1, v0

    invoke-interface {v2, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1570
    :goto_0
    return-void

    .line 1565
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "context text on restart input: "

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1566
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "wcl active: "

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getSuggestionCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getSuggestionCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    if-lez v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1568
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->connectLearnContextBuffer(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->markActiveWordUsedIfAny()V

    goto :goto_0
.end method

.method private onIMEUpgrading()V
    .locals 3

    .prologue
    .line 4882
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v1

    .line 4883
    .local v1, "swib":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4897
    :cond_0
    :goto_0
    return-void

    .line 4887
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getCurrentSWIB()Ljava/lang/String;

    move-result-object v0

    .line 4888
    .local v0, "currentSWIB":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4889
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/AppPreferences;->setCurrentSWIB(Ljava/lang/String;)V

    goto :goto_0

    .line 4893
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4894
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/AppPreferences;->setCurrentSWIB(Ljava/lang/String;)V

    .line 4895
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postBackgroundCheckPackageUpdate()V
    .locals 4

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkPackageUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1986
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkPackageUpdateRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1988
    :cond_0
    return-void
.end method

.method private postDelayAddOemLDBWordsMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x7d

    .line 1550
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1551
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1556
    :cond_1
    return-void
.end method

.method private postDelayCheckLanguageUpdateMessage()V
    .locals 5

    .prologue
    const/16 v4, 0x77

    .line 1519
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1520
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v1, v1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v1, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    check-cast v0, Lcom/nuance/swype/input/BilingualLanguage;

    .line 1522
    .local v0, "bi":Lcom/nuance/swype/input/BilingualLanguage;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    .line 1523
    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1537
    .end local v0    # "bi":Lcom/nuance/swype/input/BilingualLanguage;
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1533
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1534
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private registerCursorMonitor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1573
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldMonitoringCursorChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1576
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "registerCursorMonitor"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1578
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->requestCursorUpdates(I)Z

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->requestCursorUpdates(I)Z

    goto :goto_0
.end method

.method private scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V
    .locals 11
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "maxItemToScan"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 4392
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "scan() itemsToScan = "

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4394
    const/4 v6, 0x0

    .line 4395
    .local v6, "itemScanned":I
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->setScanContext(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 4397
    :goto_0
    if-ge v6, p2, :cond_3

    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    move-result-object v8

    .local v8, "words":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 4398
    add-int/lit8 v6, v6, 0x1

    .line 4400
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    if-nez v0, :cond_2

    .line 4401
    const-string/jumbo v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4402
    .local v7, "names":[Ljava/lang/String;
    if-eqz v7, :cond_0

    aget-object v0, v7, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v7, v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4403
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    aget-object v1, v7, v4

    iget-boolean v2, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isHighQualityWord:Z

    iget-boolean v3, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    aget-object v5, v7, v9

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmImplicitScanBuf(Ljava/lang/String;ZZZLjava/lang/String;)Z

    .line 4406
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4407
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "scan mls over"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4408
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImportedOver(Z)V

    .line 4414
    .end local v7    # "names":[Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "scan() words = "

    aput-object v2, v1, v4

    aput-object v8, v1, v9

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4415
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeWordListManager;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeWordListManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/ThemeWordListManager;->updateStateForBucket(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto :goto_0

    .line 4411
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-boolean v2, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isHighQualityWord:Z

    iget-boolean v3, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmImplicitScanBuf(Ljava/lang/String;ZZZLjava/lang/String;)Z

    goto :goto_1

    .line 4417
    .end local v8    # "words":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "scan() itemScanned = "

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4418
    return-void
.end method

.method private setCurrentInputViewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "newView"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 433
    return-void
.end method

.method private setInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 5
    .param p1, "inputLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1061
    if-nez p1, :cond_0

    .line 1063
    sget-object v3, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "IME::setInputLanguage(): inputLanguage is null"

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 1064
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getDefaultAlphabeticInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object p1

    .line 1065
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 1067
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    move v0, v2

    .line 1068
    .local v0, "langChanged":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1069
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 1072
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    .line 1074
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1075
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/IMEApplication;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1076
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 1077
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_5

    .line 1078
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->updateCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1080
    :cond_5
    return v0

    .end local v0    # "langChanged":Z
    :cond_6
    move v0, v1

    .line 1067
    goto :goto_0
.end method

.method public static setLastActiveWord(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 379
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 380
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    if-eqz p0, :cond_1

    .line 384
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1
    return-void
.end method

.method public static setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 0
    .param p0, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 416
    sput-object p0, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 417
    return-void
.end method

.method private setRunningState(I)V
    .locals 4
    .param p1, "runningStage"    # I

    .prologue
    .line 485
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->setRunningState(I)V

    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    :cond_0
    return-void
.end method

.method private showFirstTimeMessages()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3597
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3653
    :cond_0
    :goto_0
    return-void

    .line 3600
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->upgrade:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLicenseValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3602
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    if-nez v0, :cond_0

    .line 3604
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    if-eqz v0, :cond_2

    .line 3605
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showThirdPartyNonLicenseAppDialog()V

    goto :goto_0

    .line 3608
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showNonLicenseAppDialog()V

    goto :goto_0

    .line 3613
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThirdPartyLicense;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3614
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    if-nez v0, :cond_4

    .line 3617
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showThirdPartyNonLicenseAppDialog()V

    .line 3621
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-nez v0, :cond_5

    .line 3622
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 3624
    :cond_5
    iget v0, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    .line 3625
    iput v3, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    .line 3626
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->showTrialExpireMessage(Landroid/os/IBinder;)V

    .line 3628
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isTrialBuildFirstMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3629
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 3631
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 3629
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->onInstallMessage(Landroid/os/IBinder;)V

    .line 3633
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 3635
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3636
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_9

    .line 3637
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 3638
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowNetworkDialogFromKeyboard()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3639
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isInputFieldStartupOrPassword(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3640
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    check-cast v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;

    .line 3641
    invoke-virtual {v0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->hasBeenShown()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3642
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 3643
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    check-cast v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->setShowFromKeyboard(Z)V

    .line 3644
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 3645
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3650
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isTrialBuildFirstMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3651
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/AppPreferences;->setOnInstallFirstMessage(Z)V

    goto/16 :goto_0
.end method

.method private showNonLicenseAppDialog()V
    .locals 6

    .prologue
    .line 3924
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3925
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3928
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3929
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    .line 3930
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 3931
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3932
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    .line 3933
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3935
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 3937
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->unlicensed_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3938
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 3940
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 3942
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3944
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3945
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3947
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3948
    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3951
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3952
    return-void
.end method

.method private showStartupActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4188
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4189
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4209
    :cond_0
    :goto_0
    return v1

    .line 4192
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-nez v2, :cond_0

    .line 4193
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 4194
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 4196
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->canShow(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4197
    const/4 v0, 0x0

    .line 4199
    .local v0, "needToClearPreviousTask":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4200
    const/4 v0, 0x1

    .line 4202
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 4204
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 4202
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStartup(ZZLandroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method private showThirdPartyNonLicenseAppDialog()V
    .locals 15

    .prologue
    const/4 v9, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 3956
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    if-nez v8, :cond_1

    .line 4045
    :cond_0
    :goto_0
    return-void

    .line 3960
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThirdPartyLicense;->getActivityIntentForInvalidLicense()Landroid/content/Intent;

    move-result-object v6

    .line 3962
    .local v6, "thirdPartyIntent":Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 3967
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/AppPreferences;->getThirdPartyLicenseMessageTimes()I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 3968
    .local v5, "showTimes":I
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/nuance/swype/input/AppPreferences;->setThirdPartyLicenseMessageTimes(I)V

    .line 3971
    if-eq v5, v13, :cond_2

    if-eq v5, v9, :cond_2

    const/4 v8, 0x4

    if-eq v5, v8, :cond_2

    const/16 v8, 0x8

    if-ne v5, v8, :cond_0

    .line 3975
    :cond_2
    sget-object v8, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "ThirdPartyLicense"

    aput-object v10, v9, v14

    const-string/jumbo v10, "The third party license checking failed %d times"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3977
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 3978
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v8, "app_title"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3979
    .local v1, "appTitle":Ljava/lang/String;
    const-string/jumbo v8, "app_message"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3981
    .local v0, "appMessage":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3982
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 3985
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3987
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 3988
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 3989
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    new-instance v10, Lcom/nuance/swype/input/IME$17;

    invoke-direct {v10, p0}, Lcom/nuance/swype/input/IME$17;-><init>(Lcom/nuance/swype/input/IME;)V

    .line 3990
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/nuance/swype/input/IME$16;

    invoke-direct {v10, p0}, Lcom/nuance/swype/input/IME$16;-><init>(Lcom/nuance/swype/input/IME;)V

    .line 3998
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/nuance/swype/input/IME$15;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/IME$15;-><init>(Lcom/nuance/swype/input/IME;)V

    .line 4020
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4028
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 4030
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4031
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 4033
    .local v7, "window":Landroid/view/Window;
    if-eqz v7, :cond_4

    .line 4035
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 4037
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v9, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    iput-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4038
    const/16 v8, 0x3eb

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4040
    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4041
    const/high16 v8, 0x20000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 4044
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private startApp(Ljava/lang/String;Landroid/net/Uri;ILcom/nuance/swype/input/IME$IntentDecorator;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "flags"    # I
    .param p4, "decorator"    # Lcom/nuance/swype/input/IME$IntentDecorator;

    .prologue
    const/4 v4, 0x0

    .line 4139
    if-nez p1, :cond_1

    .line 4173
    :cond_0
    :goto_0
    return v4

    .line 4146
    :cond_1
    if-nez p2, :cond_4

    .line 4147
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4148
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4149
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4156
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 4157
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4159
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4160
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4161
    if-eqz p4, :cond_3

    .line 4162
    invoke-interface {p4, v2}, Lcom/nuance/swype/input/IME$IntentDecorator;->decorate(Landroid/content/Intent;)V

    .line 4165
    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 4166
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->hideWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4170
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 4151
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4152
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1

    .line 4167
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 4168
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v4, p1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private startLoadingKeyboardBackground()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1012
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    .line 1013
    .local v3, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1014
    .local v4, "orientation":I
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\t Dock mode is: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1015
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\t Orientation is: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1016
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v6

    .line 1018
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .line 5269
    iget-boolean v0, v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mReloadRequiredFromResources:Z

    .line 1018
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .line 1019
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->hasConfigChanged(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .line 1020
    invoke-virtual {v0, v6, v3}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->shouldLoadFromDisk(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "Config has changed, loading the background"

    aput-object v2, v1, v7

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1022
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    .line 6128
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;-><init>(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILandroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6134
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1026
    :goto_0
    return-void

    .line 1024
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "Config has not changed or should not load from disk."

    aput-object v2, v1, v7

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startPendingScanning()V
    .locals 7

    .prologue
    .line 4306
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getNewWordBuckets()[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 4307
    .local v0, "buckets":[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 4308
    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->startDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 4307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4312
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 4313
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v5, "mls_hot_words_left_num"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4314
    .local v3, "leftNum":I
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getMlsHotWordsImported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4315
    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isImportedMlsHotWordsOver()Z

    move-result v5

    if-nez v5, :cond_1

    if-lez v3, :cond_1

    .line 4316
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 4317
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    .line 4318
    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v5

    .line 4320
    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4322
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v5

    invoke-virtual {v5, p0, v3}, Lcom/nuance/swype/input/ThemeManager;->importMls(Landroid/content/Context;I)V

    .line 4325
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_1
    return-void
.end method

.method private toggleInputMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputModeName"    # Ljava/lang/String;

    .prologue
    .line 4927
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v1

    .line 4928
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 4929
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4930
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->setCurrent()V

    .line 4931
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->refreshKeyboard()V

    .line 4935
    .end local v0    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_1
    return-void
.end method

.method private toggleToAndroidKeyboard()V
    .locals 4

    .prologue
    .line 4265
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4267
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    iget-object v2, v2, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->myToken:Landroid/os/IBinder;

    const-string/jumbo v3, "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4273
    :goto_0
    return-void

    .line 4268
    :catch_0
    move-exception v0

    .line 4271
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public attachDialog(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 3587
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3588
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3589
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3590
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3591
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3592
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3593
    return-void
.end method

.method public checkBuildValid()V
    .locals 1

    .prologue
    .line 3900
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLicenseValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->mValidBulid:Z

    .line 3901
    return-void

    .line 3900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLanguageUpdates(IZ)V
    .locals 1
    .param p1, "langId"    # I
    .param p2, "add"    # Z

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 1541
    if-eqz p2, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0
.end method

.method cleanupAccessibility()V
    .locals 2

    .prologue
    .line 3375
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3376
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3377
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 3378
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->cleanupAccessibility()V

    .line 3381
    .end local v0    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    return-void
.end method

.method public clearSavedKeyboardState()V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME$KeyboardState;->clear()V

    .line 1776
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 3475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 3476
    return-void
.end method

.method public closeAndLaunchSettings()V
    .locals 0

    .prologue
    .line 3488
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->close()V

    .line 3489
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->launchSettings()V

    .line 3490
    return-void
.end method

.method closeDialogs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3344
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->dimissTip()V

    .line 3346
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3347
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-eqz v1, :cond_0

    .line 3348
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->dismiss()V

    .line 3349
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 3352
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3353
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3354
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 3357
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3358
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3359
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3362
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v1}, Lcom/nuance/swype/widget/PopupLanguageList;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3363
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v1}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 3366
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3367
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_4

    .line 3368
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->closeDialogs()V

    .line 3371
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeNetworkDialog()V

    .line 3372
    return-void
.end method

.method closeDictationLanguageMenu()V
    .locals 1

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3404
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3405
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3409
    :cond_0
    return-void
.end method

.method public closeLanguageList()V
    .locals 1

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 4605
    :cond_0
    return-void
.end method

.method closeNetworkDialog()V
    .locals 2

    .prologue
    .line 3412
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 3413
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3414
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3417
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    check-cast v0, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->resetStatics()V

    .line 3419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 3421
    :cond_0
    return-void
.end method

.method protected createInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1159
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "createInputContainerView()"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1160
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1161
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1160
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1162
    sget v2, Lcom/nuance/swype/input/R$layout;->input_container_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/InputContainerView;

    .line 1164
    .local v0, "out":Lcom/nuance/swype/input/view/InputContainerView;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 1165
    return-object v0
.end method

.method public createInputViewFor(Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "inputViewName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 779
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateKeyboardInput(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 780
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 782
    .local v2, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 783
    if-eq v3, v2, :cond_0

    .line 784
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 787
    :cond_0
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v1

    .line 788
    .local v1, "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    if-eqz v1, :cond_1

    .line 789
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 790
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    .line 789
    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/IMEApplication;->setInputCategory(II)V

    .line 793
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 795
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 796
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->updateExpirationPeriod()V

    .line 798
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->checkBuildValid()V

    .line 802
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 803
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 804
    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/RecaptureHandler;->isUsingInputView(Lcom/nuance/swype/input/InputView;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 805
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v4, :cond_4

    .line 806
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v4}, Lcom/nuance/swype/input/RecaptureHandler;->clearMessages()V

    .line 807
    iput-object v7, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 809
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isRecaptureEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 810
    new-instance v4, Lcom/nuance/swype/input/RecaptureHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Lcom/nuance/swype/input/RecaptureHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Z)V

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 811
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->createTapHandlers(Lcom/nuance/swype/input/InputView;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->createTapDetector(Ljava/util/List;)Lcom/nuance/swype/input/AbstractTapDetector;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 829
    :cond_5
    :goto_0
    return-object v3

    .line 814
    :cond_6
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->createTapHandlers(Lcom/nuance/swype/input/InputView;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->createTapDetector(Ljava/util/List;)Lcom/nuance/swype/input/AbstractTapDetector;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    goto :goto_0

    .line 819
    :cond_7
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v4, :cond_8

    .line 820
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v4}, Lcom/nuance/swype/input/RecaptureHandler;->clearMessages()V

    .line 821
    iput-object v7, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 823
    :cond_8
    iput-object v7, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    goto :goto_0
.end method

.method public createTapDetector(Ljava/util/List;)Lcom/nuance/swype/input/AbstractTapDetector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;",
            ">;)",
            "Lcom/nuance/swype/input/AbstractTapDetector;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "tapHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;>;"
    new-instance v1, Lcom/nuance/swype/input/TapDetectorWindow;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/nuance/swype/input/TapDetectorWindow;-><init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;Landroid/view/Window;)V

    return-object v1
.end method

.method protected createTapHandlers(Lcom/nuance/swype/input/InputView;)Ljava/util/List;
    .locals 2
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/InputView;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    return-object v0
.end method

.method protected cursorUpdateReceivedFromSingleTap()Z
    .locals 1

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractTapDetector;->singleTapDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cursorUpdateReceivedFromTap()Z
    .locals 1

    .prologue
    .line 4764
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractTapDetector;->tapDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V
    .locals 1
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .prologue
    .line 4076
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/IME;->deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)V

    .line 4077
    return-void
.end method

.method public deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)V
    .locals 10
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .param p2, "maxWordLen"    # I

    .prologue
    const/4 v9, 0x0

    .line 4087
    if-nez p1, :cond_1

    .line 4128
    :cond_0
    :goto_0
    return-void

    .line 4091
    :cond_1
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {p1, v6, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 4092
    .local v2, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4094
    invoke-static {p0}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    .line 4103
    .local v1, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v7, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4104
    .local v3, "searchStart":I
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4105
    .local v0, "ch":C
    invoke-static {v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4106
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 4110
    :cond_3
    move v5, v3

    .local v5, "wordStart":I
    :goto_1
    if-lez v5, :cond_4

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    .line 4112
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4115
    invoke-static {v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4110
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4120
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v4

    .line 4121
    .local v4, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v4, :cond_5

    .line 4122
    invoke-virtual {v4}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v6

    iget-object v7, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v8, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4123
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4122
    invoke-interface {v6, v7}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordDeletedWord(Ljava/lang/String;)V

    .line 4126
    :cond_5
    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method public final detectAccessibilityChange()V
    .locals 2

    .prologue
    .line 4525
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->lastAccessibility:Z

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    .line 4528
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->lastAccessibility:Z

    .line 4530
    :cond_0
    return-void
.end method

.method public dismissLangPopupMenu()V
    .locals 1

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 2753
    :cond_0
    return-void
.end method

.method protected final doEnableHardwaredAcceleration()V
    .locals 3

    .prologue
    .line 324
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/UserPreferences;->isHardwareAccelerationEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    .line 325
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p0}, Lcom/nuance/android/compat/InputMethodServiceCompat;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    .line 328
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IME(): hardware accel enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public dragLock(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 4777
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 4778
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->dragLock(Z)V

    .line 4780
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1205
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method public enableHwAccel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isHardwareAccelerationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareLayer(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 339
    :cond_0
    return-void
.end method

.method public getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4483
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 4484
    .local v1, "imeApplication":Lcom/nuance/swype/input/IMEApplication;
    if-nez v1, :cond_1

    .line 4493
    :cond_0
    :goto_0
    return-object v2

    .line 4488
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4489
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v0, :cond_0

    .line 4493
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v2

    goto :goto_0
.end method

.method getAlphaInputViewName(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;
    .locals 1
    .param p1, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1085
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Alpha.HandWriting"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Alpha.KeyboardInput"

    goto :goto_0
.end method

.method public getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .locals 1

    .prologue
    .line 4071
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 705
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 709
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-object v0

    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    check-cast v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    goto :goto_0
.end method

.method public getBottomBarHeight(Lcom/nuance/swype/input/InputView;)I
    .locals 4
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 4593
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4594
    .local v0, "winOffset":[I
    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputView;->getLocationInWindow([I)V

    .line 4595
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4596
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4597
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 4598
    return v1
.end method

.method public getCandidatesViewCreate()Landroid/view/View;
    .locals 7

    .prologue
    .line 838
    const/4 v1, 0x0

    .line 839
    .local v1, "cv":Landroid/view/View;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 840
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 841
    .local v3, "iv":Lcom/nuance/swype/input/InputView;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 842
    .local v0, "appPreferences":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v3, :cond_1

    .line 843
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v1

    .line 844
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->updateCandidatesView()V

    .line 845
    if-nez v1, :cond_2

    .line 846
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v1

    .line 847
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 848
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nuance/swype/input/InputView;->addCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 851
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 877
    :cond_1
    :goto_0
    return-object v1

    .line 854
    :cond_2
    sget v5, Lcom/nuance/swype/input/R$id;->toggle:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 855
    .local v4, "toggle":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isHindiLanguage()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isBilingualLanguage()Z

    move-result v5

    if-nez v5, :cond_3

    .line 856
    new-instance v5, Lcom/nuance/swype/input/IME$2;

    invoke-direct {v5, p0, v4, v2, v0}, Lcom/nuance/swype/input/IME$2;-><init>(Lcom/nuance/swype/input/IME;Landroid/widget/ImageButton;Lcom/nuance/swype/input/IMEApplication;Lcom/nuance/swype/input/AppPreferences;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 871
    :cond_3
    if-eqz v4, :cond_1

    .line 872
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCurrentActiveCoreId()I
    .locals 3

    .prologue
    .line 4444
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v2, :cond_0

    .line 4445
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 4446
    .local v1, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 4447
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    .line 4448
    .local v0, "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    if-eqz v0, :cond_0

    .line 4449
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v2

    .line 4453
    .end local v0    # "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .end local v1    # "view":Lcom/nuance/swype/input/InputView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 6

    .prologue
    .line 682
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 683
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 684
    const/4 v1, 0x0

    .line 700
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-object v1

    .line 690
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-eq v1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-nez v0, :cond_2

    .line 695
    new-instance v0, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    const-string/jumbo v2, "clipboard"

    .line 696
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/ClipboardManager;

    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;Landroid/text/ClipboardManager;Lcom/nuance/swype/util/CharacterUtilities;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .line 700
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setTarget(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;)V

    goto :goto_1
.end method

.method public getCurrentInputView()Lcom/nuance/swype/input/InputView;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v0

    return-object v0
.end method

.method public getEditState()Lcom/nuance/swype/input/EditState;
    .locals 3

    .prologue
    .line 445
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    if-nez v2, :cond_0

    .line 446
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 447
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->isStatisticsCollectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    new-instance v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-direct {v2, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 453
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 454
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 455
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->setEditState(Lcom/nuance/swype/input/EditState;)V

    .line 458
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    return-object v2

    .line 450
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_1
    new-instance v2, Lcom/nuance/swype/input/EditState;

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/EditState;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    goto :goto_0
.end method

.method public getExtendedEventForView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 4479
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->getExtendedEventForView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3860
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    return-object v0
.end method

.method public getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    return-object v0
.end method

.method public getInputMethods()Lcom/nuance/swype/input/InputMethods;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_0

    .line 1050
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    return-object v0
.end method

.method public getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;
    .locals 1

    .prologue
    .line 4900
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    return-object v0
.end method

.method public getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    return-object v0
.end method

.method public getSoftInputWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 3867
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    iget-object v0, v0, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->myToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleClose()V
    .locals 4

    .prologue
    .line 3460
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "handleClose"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3461
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDialogs()V

    .line 3463
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3464
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3465
    return-void
.end method

.method public handleGoogleMapGesture()V
    .locals 5

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2737
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 2738
    .local v2, "selectedText":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "geo:0,0"

    .line 2739
    .local v0, "geoUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2742
    :cond_0
    const-string/jumbo v3, "com.google.android.apps.maps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/IME;->startApp(Ljava/lang/String;Landroid/net/Uri;)Z

    .line 2743
    return-void

    .line 2737
    .end local v0    # "geoUrl":Ljava/lang/String;
    .end local v2    # "selectedText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public hasCurrentActiveCore()Z
    .locals 2

    .prologue
    .line 4461
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_0

    .line 4462
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4463
    .local v0, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 4464
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->hasInputContext()Z

    move-result v1

    .line 4467
    .end local v0    # "view":Lcom/nuance/swype/input/InputView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNewWordsScanning()Z
    .locals 3

    .prologue
    .line 4328
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getNewWordBuckets()[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 4329
    .local v0, "buckets":[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 4330
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4331
    const/4 v2, 0x1

    .line 4334
    :goto_1
    return v2

    .line 4329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4334
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method hideDictationLanguageMenu()V
    .locals 1

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3559
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    if-eqz v0, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3566
    :cond_0
    return-void
.end method

.method public hideWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1934
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "hideWindow() : method called : "

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1936
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    instance-of v1, v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v1, :cond_0

    .line 1937
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    check-cast v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-virtual {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->getHideWindowInputContents()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/IME;->connectLearnContextBuffer(Ljava/lang/String;)V

    .line 1940
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1941
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 1942
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->handleClose()V

    .line 1944
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->recordKeyboardOpen(Landroid/content/Context;)V

    .line 1946
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1947
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->hasCheckedPackageUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1949
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->postBackgroundCheckPackageUpdate()V

    .line 1950
    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/UserPreferences;->setCheckPackageUpdate(Z)V

    .line 1953
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v1

    .line 1954
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isInputFieldStartupOrPassword(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1955
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/AppPreferences;->setNewThemeAvailableInStore(Z)V

    .line 1957
    :cond_2
    return-void
.end method

.method protected initInputContainerView(Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .param p1, "candidatesView"    # Landroid/view/View;
    .param p2, "inputView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1174
    iget-object v7, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-nez v7, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->createInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    .line 1177
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    .line 1178
    .local v3, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported(I)Z

    move-result v2

    .line 1179
    .local v2, "miniFloatSupported":Z
    invoke-static {}, Lcom/nuance/android/compat/InputMethodServiceCompat;->isTouchableRegionSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    if-eqz v2, :cond_5

    sget-object v7, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v3, v7, :cond_5

    :cond_1
    move v0, v6

    .line 1182
    .local v0, "forceUseWing":Z
    :goto_0
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-nez v0, :cond_6

    move v7, v6

    :goto_1
    invoke-virtual {v8, p2, p1, v7}, Lcom/nuance/swype/input/view/InputContainerView;->init(Landroid/view/View;Landroid/view/View;Z)V

    .line 1183
    iget-object v7, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/view/InputContainerView;->setFullScreenMode(Z)V

    .line 1184
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v6

    :goto_2
    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/view/InputContainerView;->showInputArea(Z)V

    .line 1185
    const/4 v4, 0x1

    .line 1186
    .local v4, "showCandidate":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    .line 1187
    .local v1, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    if-eqz v1, :cond_2

    .line 1188
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v7

    if-nez v7, :cond_8

    move v4, v6

    .line 1190
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v7, v4}, Lcom/nuance/swype/input/view/InputContainerView;->showCandidates(Z)V

    .line 1191
    iget-object v7, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v6, v5}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1192
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1194
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1197
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v5, v3}, Lcom/nuance/swype/input/view/InputContainerView;->setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1198
    return-void

    .end local v0    # "forceUseWing":Z
    .end local v1    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    .end local v4    # "showCandidate":Z
    :cond_5
    move v0, v5

    .line 1179
    goto :goto_0

    .restart local v0    # "forceUseWing":Z
    :cond_6
    move v7, v5

    .line 1182
    goto :goto_1

    :cond_7
    move v7, v5

    .line 1184
    goto :goto_2

    .restart local v1    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    .restart local v4    # "showCandidate":Z
    :cond_8
    move v4, v5

    .line 1188
    goto :goto_3
.end method

.method public initializedCore()V
    .locals 5

    .prologue
    .line 4428
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "initializedCore()"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4430
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 4431
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4432
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 4433
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 4437
    :goto_0
    return-void

    .line 4435
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    goto :goto_0
.end method

.method public isAccessibilitySupportEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4497
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4500
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isAccessibilitySupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isChangingOrientation()Z
    .locals 1

    .prologue
    .line 4856
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    return v0
.end method

.method public isDeviceExploreByTouchOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4504
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4507
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isDeviceExploreByTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isEditorComposingText()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 730
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 731
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->supportsGetTextWithStyles()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 733
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isTraceComposingText()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 735
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 733
    goto :goto_0

    .line 735
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public isHardKeyboardActive()Z
    .locals 1

    .prologue
    .line 4708
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isHardKeyboardAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isHardkeyboardEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHardKeyboardEnabled()Z
    .locals 1

    .prologue
    .line 4704
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isHardkeyboardEnabled:Z

    return v0
.end method

.method public isImeInUse()Z
    .locals 1

    .prologue
    .line 4287
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    return v0
.end method

.method public isKeySoundAllowed()Z
    .locals 1

    .prologue
    .line 4278
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/SystemState;->isKeySoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->keySoundOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLangPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicenseValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3908
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 3909
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/License;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    invoke-virtual {v1}, Lcom/nuance/swype/input/License;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3919
    :cond_0
    :goto_0
    return v0

    .line 3912
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThirdPartyLicense;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3917
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/AppPreferences;->setThirdPartyLicenseMessageTimes(I)V

    .line 3919
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeedRefreshKeyboard()Z
    .locals 1

    .prologue
    .line 2906
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->needRrefreshKeyboard:Z

    return v0
.end method

.method public isShowCandidatesViewAllowed()Z
    .locals 1

    .prologue
    .line 2087
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    return v0
.end method

.method public isTalkBackOn()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 4735
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 4736
    .local v2, "imeApplication":Lcom/nuance/swype/input/IMEApplication;
    if-nez v2, :cond_1

    .line 4750
    :cond_0
    :goto_0
    return v3

    .line 4740
    :cond_1
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 4741
    .local v1, "appPref":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v1, :cond_0

    .line 4745
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v0

    .line 4747
    .local v0, "ai":Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isTalkBackOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4748
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isTrialBuildFirstMessage()Z
    .locals 3

    .prologue
    .line 4904
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getOnInstallFirstMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isInputFieldStartupOrPassword(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingSpellCheckerService()Z
    .locals 1

    .prologue
    .line 4760
    const/4 v0, 0x0

    return v0
.end method

.method public isValidBuild()Z
    .locals 1

    .prologue
    .line 3904
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->mValidBulid:Z

    return v0
.end method

.method public isVibrateAllowed()Z
    .locals 1

    .prologue
    .line 4283
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/SystemState;->isVibrateEnabled()Z

    move-result v0

    return v0
.end method

.method launchSettings()V
    .locals 2

    .prologue
    .line 3480
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3481
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3482
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->SWYPE_KEY:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 3483
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 3485
    .end local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    return-void
.end method

.method public loadSettings()V
    .locals 3

    .prologue
    .line 3494
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 3495
    .local v0, "settings":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isVibrateOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->vibrateOn:Z

    .line 3496
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isKeySoundOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->keySoundOn:Z

    .line 13023
    sget-boolean v1, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 3498
    if-eqz v1, :cond_0

    .line 3499
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setKeyboardHeight(F)V

    .line 3501
    :cond_0
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 11
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 2197
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 2199
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 2200
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->isShown()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2265
    :cond_0
    :goto_0
    return-void

    .line 2206
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 2208
    .local v2, "decor":Landroid/view/View;
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2213
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-static {p1, v3}, Lcom/nuance/android/compat/InputMethodServiceCompat;->setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z

    .line 2215
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->isFullAppAreaMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2218
    invoke-static {p1, v3}, Lcom/nuance/android/compat/InputMethodServiceCompat;->setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z

    .line 2219
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2221
    sget-object v6, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    if-ne v6, v7, :cond_2

    .line 2223
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2224
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2251
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 2252
    .local v1, "curInputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->hasWidgetViews()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2253
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getWidgetViewTouchableRegion()Landroid/graphics/Region;

    move-result-object v5

    .line 2254
    .local v5, "widgetsRegion":Landroid/graphics/Region;
    if-eqz v5, :cond_0

    .line 2256
    invoke-static {p1}, Lcom/nuance/android/compat/InputMethodServiceCompat;->getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;

    move-result-object v4

    .line 2257
    .local v4, "region":Landroid/graphics/Region;
    if-eqz v4, :cond_0

    .line 2259
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 2226
    .end local v1    # "curInputView":Lcom/nuance/swype/input/InputView;
    .end local v4    # "region":Landroid/graphics/Region;
    .end local v5    # "widgetsRegion":Landroid/graphics/Region;
    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2227
    sget-object v6, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->ALL_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    if-ne v6, v7, :cond_3

    .line 2229
    iget v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1

    .line 2232
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1

    .line 2238
    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2239
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2240
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2245
    :goto_2
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iget v8, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2246
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    invoke-static {p1, v6}, Lcom/nuance/android/compat/InputMethodServiceCompat;->setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 2242
    :cond_5
    iget v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_2
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 3
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2158
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->startupActivityShown:Z

    if-eqz v1, :cond_0

    .line 2160
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2161
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2162
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2163
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->startupActivityShown:Z

    .line 2169
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeNetworkDialog()V

    .line 2170
    return-void

    .line 2165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 2166
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 544
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 546
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 549
    :cond_0
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 550
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->postUserUnlock()V

    .line 5018
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$bool;->enable_ads:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 5019
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getTagForChildDirectedTreatment()Z

    move-result v3

    sput-boolean v3, Lcom/nuance/swype/util/AdsUtil;->sTagForChildDirectedTreatment:Z

    .line 554
    new-instance v3, Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/KeyboardInputInflater;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    .line 555
    new-instance v3, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .line 556
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/IMEApplication;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 557
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setContext(Landroid/content/Context;)V

    .line 558
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    .line 559
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->isUpgrade()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->upgrade:Z

    .line 560
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 561
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->doEnableHardwaredAcceleration()V

    .line 563
    sget-object v3, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "%s version:%s BuildType:%s BuildDate:%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/nuance/swype/input/R$string;->ime_name:I

    .line 564
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 565
    invoke-virtual {v7}, Lcom/nuance/swype/input/BuildInfo;->getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/BuildInfo$BuildType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v7}, Lcom/nuance/swype/input/BuildInfo;->getBuildDateStr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 563
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 567
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 569
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 570
    .local v2, "window":Landroid/view/Window;
    new-instance v3, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;-><init>(Landroid/view/Window$Callback;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    .line 571
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 573
    iput-boolean v8, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 574
    iput-boolean v8, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    .line 575
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->registerReceiverMessages()V

    .line 577
    invoke-static {v9}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 578
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v3}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 580
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/UserPreferences;->isHardwareKeyboardEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->isHardkeyboardEnabled:Z

    .line 581
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/SystemState;->openWatch(Ljava/lang/Object;)V

    .line 583
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->registerObserver(Landroid/content/Context;)V

    .line 584
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->addListener(Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;)V

    .line 586
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->createPortraitCandidatesViewFilter()Lcom/nuance/swype/input/Whitelist;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

    .line 588
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$integer;->drag_inset_adjust_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 587
    invoke-static {v3}, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->fromInt(I)Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 591
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->vendor_licensing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "vendorCheckerClassName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    new-instance v3, Lcom/nuance/swype/input/ThirdPartyLicense;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/ThirdPartyLicense;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    .line 600
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->onIMEUpgrading()V

    .line 604
    return-void

    .line 597
    :cond_2
    iput-object v9, p0, Lcom/nuance/swype/input/IME;->mThirdPartyLicense:Lcom/nuance/swype/input/ThirdPartyLicense;

    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 1031
    new-instance v0, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1034
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/IME$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    .line 374
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->startLoadingKeyboardBackground()V

    .line 978
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 979
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandler;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1008
    :goto_0
    return-object v1

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 986
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->syncWithDeviceAccessiblityState()V

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v1, :cond_2

    .line 991
    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 993
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 995
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 996
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->getAlphaInputViewName(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/IME;->setCurrentInputViewName(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->createInputViewFor(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 999
    .local v0, "inputAreaView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->setCurrentInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1000
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_3

    .line 1001
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->updateCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1004
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->getCandidatesView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/IME;->initInputContainerView(Landroid/view/View;Landroid/view/View;)V

    .line 1008
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 609
    sget-object v5, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "onDestroy()"

    aput-object v7, v6, v8

    const-string/jumbo v7, "called >>>>>>>>>>"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 610
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v5, :cond_0

    .line 611
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 5176
    iget-object v6, v5, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v6, :cond_0

    .line 5177
    iget-object v5, v5, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v5}, Lcom/google/android/voiceime/Trigger;->onDestroy()V

    .line 614
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 615
    .local v3, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 616
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getMlsHotWordsImported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 617
    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isImportedMlsHotWordsOver()Z

    move-result v5

    if-nez v5, :cond_1

    .line 618
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    .line 619
    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 620
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 621
    sget-object v5, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "scanning mls bucket interrupted"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImportedOver(Z)V

    .line 623
    const-string/jumbo v5, "mls_hot_words_left_num"

    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 630
    .end local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    :cond_1
    :goto_0
    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/UserPreferences;->setCheckPackageUpdate(Z)V

    .line 631
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hide()V

    .line 632
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 634
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->removeListener(Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;)V

    .line 635
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->unregisterObserver()V

    .line 636
    invoke-static {v10}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 637
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 638
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 639
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 641
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_1
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->destroySyncDataProviderManager()V

    .line 649
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->destroySpeechWrapperInstance()V

    .line 651
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/nuance/swype/input/SystemState;->closeWatch(Ljava/lang/Object;)V

    .line 653
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 654
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandler;->onDestroy()V

    .line 657
    :cond_2
    iput-object v10, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 659
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    if-eqz v5, :cond_3

    .line 660
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    iput-object v10, v5, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->myToken:Landroid/os/IBinder;

    .line 661
    iput-object v10, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    .line 664
    :cond_3
    invoke-static {}, Lcom/nuance/swype/input/KeyboardStyle;->recycleDrawable()V

    .line 665
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 666
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v2, :cond_4

    .line 667
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 670
    :cond_4
    invoke-virtual {v3, v10}, Lcom/nuance/swype/input/IMEApplication;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 671
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->releaseBillboardManager()V

    .line 672
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 673
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 674
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 678
    return-void

    .line 625
    .end local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    :cond_5
    sget-object v5, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "scanning mls bucket over"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 626
    invoke-virtual {v4, v9}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImportedOver(Z)V

    .line 627
    const-string/jumbo v5, "mls_hot_words_left_num"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 642
    .end local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    :catch_0
    move-exception v1

    .line 644
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1992
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onDisplayCompletions: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2001
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2002
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 2005
    :cond_0
    return-void
.end method

.method public onDoublePress(I)V
    .locals 0
    .param p1, "PrimaryCode"    # I

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 3174
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .prologue
    .line 2178
    .line 2179
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported(I)Z

    move-result v0

    .line 2180
    .local v0, "isMiniFloatingKeyboardSupported":Z
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    .line 2181
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2182
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/InputFieldInfo;->noFullscreenMode(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 2114
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    .line 2116
    const/4 v0, 0x1

    return v0
.end method

.method public onExploreByTouchChanged(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4836
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4837
    .local v0, "iv":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4838
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->addCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 4842
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 4843
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_1

    .line 4844
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->setExploreByTouch(Z)V

    .line 4848
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->refreshKeyboard()V

    .line 4849
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractTapDetector;->onExtractedTextClicked()V

    .line 2028
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1781
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onFinishInput() : method called :"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1783
    iput-boolean v4, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1784
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1785
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1787
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandler()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1788
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandler()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandler;->onFinishInput()V

    .line 1791
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1792
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1793
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandler;->onFinishInput()V

    .line 1797
    :cond_1
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 5
    .param p1, "finishingInput"    # Z

    .prologue
    const/16 v4, 0x7b

    const/4 v3, 0x0

    .line 1705
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFinishInputView() : method called : "

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1707
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    if-eqz p1, :cond_3

    .line 1712
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-eqz v0, :cond_2

    .line 1713
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCachedContextBuffer()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IME;->learnContextBuffer(Ljava/lang/String;)V

    .line 1719
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/nuance/swype/input/IME;->doFinishInputView(ZZ)V

    .line 1731
    :goto_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onFinishInputView(Z)V

    goto :goto_0

    .line 1725
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1726
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1727
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1728
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onFinishInputViewProjectOverride(ZLcom/nuance/swype/input/InputView;Lcom/nuance/swype/input/IME$KeyboardState;)V
    .locals 1
    .param p1, "finishingInput"    # Z
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "savedState"    # Lcom/nuance/swype/input/IME$KeyboardState;

    .prologue
    .line 1681
    iget-object v0, p2, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p2, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->resetLayerState()V

    .line 1686
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 1694
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 1695
    if-eqz p1, :cond_1

    .line 1696
    invoke-virtual {p3}, Lcom/nuance/swype/input/IME$KeyboardState;->clear()V

    .line 1701
    :goto_0
    return-void

    .line 1698
    :cond_1
    invoke-virtual {p3, p2}, Lcom/nuance/swype/input/IME$KeyboardState;->save(Lcom/nuance/swype/input/InputView;)V

    goto :goto_0
.end method

.method public onFlushActiveWord()V
    .locals 5

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4770
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 4771
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "cursor onClearActiveWord"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4772
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->selectDefaultCompostingText()V

    .line 4774
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 3864
    return-void
.end method

.method public onHardKeyLangPopupMenu(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2756
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2757
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    .line 10262
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 10263
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 10264
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 10265
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10268
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 10274
    :cond_1
    :goto_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    .line 10275
    if-ne v1, v2, :cond_3

    .line 10276
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    add-int/lit8 v1, v6, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 10277
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_2
    :goto_2
    move v0, v3

    .line 2760
    :goto_3
    return v0

    .line 10279
    :cond_3
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 10280
    add-int/lit8 v0, v1, -0x1

    .line 10281
    if-ltz v0, :cond_4

    .line 10282
    iget-object v1, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 10284
    :cond_4
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_2

    .line 10287
    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_8

    .line 10288
    if-ne v1, v2, :cond_6

    .line 10289
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 10290
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_2

    .line 10292
    :cond_6
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 10293
    add-int/lit8 v0, v1, 0x1

    .line 10294
    if-ge v0, v6, :cond_7

    .line 10295
    iget-object v1, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 10297
    :cond_7
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_2

    .line 10300
    :cond_8
    const/16 v0, 0x42

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_2

    .line 10302
    :cond_9
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    if-eqz v0, :cond_a

    .line 10303
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10304
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-interface {v0}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onMoreLanguages()V

    .line 10314
    :cond_a
    :goto_4
    invoke-virtual {v5}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    goto :goto_2

    .line 10306
    :cond_b
    iget-object v0, v5, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 10307
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 10308
    iget-object v1, v5, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onHardLangSelected(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move v0, v4

    .line 2760
    goto/16 :goto_3

    :cond_e
    move v1, v2

    goto/16 :goto_1
.end method

.method public onHardwareCharKey(I[I)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 2441
    return-void
.end method

.method public onInitializeInterface()V
    .locals 2

    .prologue
    .line 959
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 963
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 965
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->onInitializeInterfaceCommon()V

    .line 968
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandler;->onInitializeInterface()V

    .line 973
    :cond_0
    return-void
.end method

.method public onInitializeInterfaceCommon()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 898
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 899
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 900
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 901
    .local v3, "inputView":Lcom/nuance/swype/input/InputView;
    const/4 v4, 0x0

    .line 902
    .local v4, "isLocaleChanged":Z
    if-eqz v3, :cond_0

    .line 903
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    .line 904
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    invoke-virtual {v3, v6, v0, v9}, Lcom/nuance/swype/input/InputView;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputConnection;)V

    .line 908
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_1

    .line 909
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 910
    .local v1, "diffMask":I
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_7

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    .line 911
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_8

    move v4, v7

    .line 913
    .end local v1    # "diffMask":I
    :cond_1
    :goto_1
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    .line 915
    iput-boolean v8, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    .line 916
    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    .line 918
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    .line 923
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v6

    iput-boolean v6, p0, Lcom/nuance/swype/input/IME;->ignoreFirstUpdateSelectionPostOrientationChange:Z

    .line 926
    :cond_3
    if-eqz v4, :cond_4

    .line 927
    iput-object v10, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    .line 930
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v6

    iget-boolean v9, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    invoke-virtual {v6, v9}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onConfigChanged(Z)V

    .line 933
    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    move v6, v7

    .line 934
    :goto_2
    if-nez v6, :cond_5

    .line 936
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    .line 937
    .local v5, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v5, :cond_5

    .line 938
    sget-object v6, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v9, "onInitializeInterfaceCommon(): cancel speech..."

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 939
    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 943
    .end local v5    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 944
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 945
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->runLicenseCheck()V

    .line 946
    invoke-static {v10}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 947
    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v6}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 949
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v6, :cond_6

    .line 950
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v6}, Lcom/nuance/swype/input/AbstractTapDetector;->onInitializeInterface()V

    .line 954
    :cond_6
    return-void

    .restart local v1    # "diffMask":I
    :cond_7
    move v6, v8

    .line 910
    goto :goto_0

    :cond_8
    move v4, v8

    .line 911
    goto :goto_1

    .end local v1    # "diffMask":I
    :cond_9
    move v6, v8

    .line 933
    goto :goto_2
.end method

.method public onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .locals 23
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 2446
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v5, :cond_1

    .line 2729
    :cond_0
    :goto_0
    return-void

    .line 2451
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xb79

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0x193f

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    .line 2457
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    .line 2459
    .local v4, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v4, :cond_0

    .line 2463
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->shouldDisableInput(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 2469
    .local v20, "when":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mLastKey:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_e

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nuance/swype/input/IME;->mLastKeyTime:J

    const-wide/16 v8, 0x2ee

    add-long/2addr v6, v8

    cmp-long v5, v20, v6

    if-gez v5, :cond_e

    const/16 v16, 0x1

    .line 2470
    .local v16, "quickPressed":Z
    :goto_1
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/IME;->mLastKeyTime:J

    .line 2471
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mLastKey:I

    move/from16 v0, p2

    if-eq v0, v5, :cond_3

    .line 2472
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    .line 2474
    :cond_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/IME;->mLastKey:I

    .line 2476
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    .line 2477
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v12

    .line 2479
    .local v12, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/nuance/swype/input/RecaptureHandler;->onKey(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2483
    :cond_4
    if-eqz v12, :cond_5

    .line 2484
    invoke-virtual {v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2487
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    if-nez v5, :cond_6

    .line 2488
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    .line 2492
    :cond_6
    sparse-switch p2, :sswitch_data_0

    .line 2680
    :goto_2
    if-eqz v12, :cond_b

    .line 2683
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2685
    const/4 v11, 0x0

    .line 2686
    .local v11, "handled":Z
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v13

    .line 2687
    .local v13, "imeHandler":Lcom/nuance/swype/input/IMEHandler;
    if-eqz v13, :cond_7

    .line 2688
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lcom/nuance/swype/input/IMEHandler;->onKey(Landroid/graphics/Point;I[I)Z

    move-result v11

    .line 2691
    :cond_7
    if-ltz p2, :cond_b

    if-nez v11, :cond_b

    .line 2693
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isPopupKeyboardShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2695
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0xa

    move/from16 v0, p2

    if-eq v0, v5, :cond_9

    .line 2700
    :cond_8
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->reconstructWord()V

    .line 2701
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/IME;->handleBackspace(I)V

    .line 2703
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v5, :cond_a

    .line 2704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    move/from16 v0, p2

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/RecaptureHandler;->onCharKey(C)Z

    .line 2706
    :cond_a
    if-eqz p4, :cond_18

    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v5

    .line 2707
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/KeyboardManager;->supportsTapCoordinates(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v18

    .line 2708
    .local v18, "supportsTapCoords":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2709
    if-eqz v18, :cond_19

    move-object/from16 v5, p1

    :goto_4
    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 2720
    .end local v11    # "handled":Z
    .end local v13    # "imeHandler":Lcom/nuance/swype/input/IMEHandler;
    .end local v18    # "supportsTapCoords":Z
    :cond_b
    :goto_5
    if-eqz v12, :cond_c

    .line 2721
    invoke-virtual {v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2724
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isLongMessageField()Z

    .line 2728
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/nuance/swype/input/InputView;->handlePostTap(Landroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 2469
    .end local v12    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v16    # "quickPressed":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 2494
    .restart local v12    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v16    # "quickPressed":Z
    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2497
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_5

    .line 2501
    :sswitch_1
    invoke-static/range {p0 .. p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2504
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->close()V

    .line 2505
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->launchSettings()V

    goto :goto_5

    .line 2512
    :sswitch_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/IME;->handleBackspace(I)V

    goto :goto_5

    .line 2516
    :sswitch_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 2517
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2518
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterResize()V

    goto :goto_5

    .line 2523
    :sswitch_4
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 2524
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    .line 2534
    :cond_f
    :sswitch_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto :goto_5

    .line 2541
    :sswitch_6
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->handleUniversalKeyboardResize(I)V

    .line 2542
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2543
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->updateCandidatesView()V

    .line 2544
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto :goto_5

    .line 2550
    :sswitch_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/IME;->handleSpace(ZI)V

    goto/16 :goto_5

    .line 2554
    :sswitch_8
    const/16 v5, 0xb7c

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 2555
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setSpaceKeyAsLanguageSwitchKey()V

    goto/16 :goto_5

    .line 2560
    :sswitch_9
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v17

    .line 2561
    .local v17, "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_10

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, v17

    if-eq v0, v5, :cond_10

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_12

    .line 2563
    :cond_10
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 2564
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 2569
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 2570
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2572
    :cond_11
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 2576
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6a

    const-wide/16 v8, 0x32

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 2566
    :cond_12
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 2567
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentExactWord()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2574
    :cond_13
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->clearCurrentActiveWord()V

    goto :goto_7

    .line 2581
    .end local v17    # "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :sswitch_a
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v5

    if-nez v5, :cond_b

    .line 2584
    new-instance v15, Lcom/nuance/swype/input/IME$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/nuance/swype/input/IME$5;-><init>(Lcom/nuance/swype/input/IME;)V

    .line 2590
    .local v15, "putExtras":Lcom/nuance/swype/input/IME$IntentDecorator;
    const-string/jumbo v5, "com.nuance.balerion"

    const/4 v6, 0x0

    const/high16 v7, 0x14000000

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v15}, Lcom/nuance/swype/input/IME;->startApp(Ljava/lang/String;Landroid/net/Uri;ILcom/nuance/swype/input/IME$IntentDecorator;)Z

    goto/16 :goto_5

    .line 2597
    .end local v15    # "putExtras":Lcom/nuance/swype/input/IME$IntentDecorator;
    :sswitch_b
    const/16 v5, 0x193f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_5

    .line 2601
    :sswitch_c
    const/16 v5, 0xfea

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_5

    .line 2607
    :sswitch_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_14

    .line 2608
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->handleKeyWithModifiers(I)V

    .line 2610
    :cond_14
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->handleKeyWithModifiers(I)V

    goto/16 :goto_5

    .line 2613
    :sswitch_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nuance/swype/input/IME;->deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V

    goto/16 :goto_5

    .line 2616
    :sswitch_f
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2617
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    .line 2618
    .local v10, "app":Lcom/nuance/swype/input/IMEApplication;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    if-eqz v5, :cond_16

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isGestureTipSupported()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2619
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2620
    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/ToolTips;->triggerEditGestureTip(Landroid/view/View;)V

    .line 2622
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2624
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2625
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2626
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2629
    .end local v10    # "app":Lcom/nuance/swype/input/IMEApplication;
    :sswitch_10
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2630
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2631
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2632
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2635
    :sswitch_11
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2636
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2637
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2638
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2639
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2643
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2644
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/nuance/swype/input/InputView;->handlePostTap(Landroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 2647
    :cond_17
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2648
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2649
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2650
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2653
    :sswitch_13
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    goto/16 :goto_5

    .line 2656
    :sswitch_14
    const/16 v5, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    goto/16 :goto_5

    .line 2659
    :sswitch_15
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/IME;->handleLeftRightKey(II)V

    goto/16 :goto_5

    .line 2662
    :sswitch_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/IME;->handleLeftRightKey(II)V

    goto/16 :goto_5

    .line 2665
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getLastLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v14

    .line 2666
    .local v14, "lastLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v14, :cond_b

    .line 2667
    new-instance v5, Lcom/nuance/swype/input/LangSwitchAction;

    const/4 v6, 0x5

    invoke-direct {v5, v14, v6}, Lcom/nuance/swype/input/LangSwitchAction;-><init>(Lcom/nuance/swype/input/InputMethods$Language;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/IME;->switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;I)V

    .line 2668
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto/16 :goto_5

    .line 2677
    .end local v14    # "lastLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->enterSent()V

    goto/16 :goto_2

    .line 2707
    .restart local v11    # "handled":Z
    .restart local v13    # "imeHandler":Lcom/nuance/swype/input/IMEHandler;
    :cond_18
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 2709
    .restart local v18    # "supportsTapCoords":Z
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    .line 2712
    invoke-virtual/range {v4 .. v9}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_5

    .line 2492
    :sswitch_data_0
    .sparse-switch
        -0x75 -> :sswitch_6
        -0x74 -> :sswitch_6
        -0x73 -> :sswitch_6
        -0x72 -> :sswitch_6
        -0x71 -> :sswitch_6
        -0x6f -> :sswitch_17
        0x8 -> :sswitch_2
        0xa -> :sswitch_18
        0x20 -> :sswitch_7
        0xb54 -> :sswitch_3
        0xb78 -> :sswitch_9
        0xb79 -> :sswitch_9
        0xb7a -> :sswitch_1
        0xb7c -> :sswitch_8
        0xb7e -> :sswitch_5
        0xb7f -> :sswitch_a
        0xfbd -> :sswitch_d
        0xfcd -> :sswitch_d
        0xfdb -> :sswitch_d
        0xfdc -> :sswitch_d
        0xfdd -> :sswitch_15
        0xfde -> :sswitch_16
        0xfe1 -> :sswitch_5
        0xfe4 -> :sswitch_4
        0xfe7 -> :sswitch_13
        0xfea -> :sswitch_c
        0xfed -> :sswitch_11
        0xfee -> :sswitch_12
        0xff5 -> :sswitch_10
        0xff7 -> :sswitch_0
        0x191e -> :sswitch_14
        0x191f -> :sswitch_e
        0x192c -> :sswitch_f
        0x192d -> :sswitch_4
        0x193e -> :sswitch_5
        0x193f -> :sswitch_b
        0xaa38 -> :sswitch_5
        0xaa39 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x74

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2283
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-lez v6, :cond_2

    .line 2284
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->keyboard:I

    if-ne v6, v5, :cond_2

    .line 2285
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v6, v8, :cond_2

    .line 2287
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 2396
    :cond_1
    :goto_0
    return v4

    .line 2289
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v8, :cond_4

    .line 2290
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 2291
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v6, v5, :cond_4

    .line 2292
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v8, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isSamsungDevice()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2293
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 2296
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x4

    if-eq p1, v6, :cond_5

    const/16 v6, 0x52

    if-eq p1, v6, :cond_5

    const/16 v6, 0x1b

    if-eq p1, v6, :cond_5

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_5

    const/16 v6, 0x19

    if-eq p1, v6, :cond_5

    const/16 v6, 0xa4

    if-eq p1, v6, :cond_5

    const/16 v6, 0x18

    if-eq p1, v6, :cond_5

    const/16 v6, 0x54

    if-eq p1, v6, :cond_5

    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    const/16 v6, 0xdb

    if-le p1, v6, :cond_6

    .line 2302
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 2305
    :cond_6
    const/16 v6, 0x6f

    if-ne p1, v6, :cond_7

    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v6, :cond_7

    .line 2306
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 2310
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_8

    .line 2311
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 2313
    :cond_8
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    .line 2314
    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 2315
    .local v0, "hardKeyHandler":Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
    if-eqz v0, :cond_1

    .line 2316
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 2320
    invoke-virtual {v0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2324
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 2326
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v6, :cond_c

    .line 2328
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2331
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 2332
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_HKB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_HKB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2338
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->language_not_supported:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2337
    invoke-static {p0, v5, v4}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2341
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2343
    :cond_a
    invoke-virtual {v0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isInputModeSupportedByHardKeyboard()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2344
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2347
    :cond_b
    const-string/jumbo v6, "SETTINGS_HKB"

    invoke-virtual {v3, v6, v4}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2348
    const-string/jumbo v6, "SETTINGS_HKB"

    invoke-virtual {v3, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2350
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->hardkeyboard_shortcut_settings:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2349
    invoke-static {p0, v6, v4}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2356
    .end local v3    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_e

    .line 2357
    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2358
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 2360
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 2361
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 2362
    iput-boolean v5, p0, Lcom/nuance/swype/input/IME;->isCandidateViewOpening:Z

    .line 2363
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 2365
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x75

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2366
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x75

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2367
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2368
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3f2

    invoke-virtual {v6, v9, p1, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    move v4, v5

    .line 2372
    goto/16 :goto_0

    .line 2376
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isCandidateViewOpening:Z

    if-eqz v6, :cond_f

    .line 2377
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_f

    .line 2379
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v4, v5

    .line 2381
    goto/16 :goto_0

    .line 2385
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    .line 2386
    goto/16 :goto_0

    .line 2389
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 2392
    .local v2, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v2, :cond_11

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    .line 2393
    goto/16 :goto_0

    .line 2396
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onKeyDownInner(IILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "indicator"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2268
    const/16 v0, 0x3f2

    if-ne p2, v0, :cond_0

    .line 2269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->isCandidateViewOpening:Z

    .line 2271
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/IME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2272
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2401
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_1

    .line 2402
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_1

    .line 2403
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v2, :cond_1

    .line 2405
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2435
    :goto_0
    return v0

    .line 2408
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_3

    .line 2409
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_3

    .line 2410
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_3

    .line 2411
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2412
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2415
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x54

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_4

    const/16 v0, 0xdb

    if-le p1, v0, :cond_5

    .line 2421
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2424
    :cond_5
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_6

    .line 2425
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2429
    :cond_6
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2430
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2432
    goto/16 :goto_0

    .line 2435
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onLocaleChanged()V
    .locals 0

    .prologue
    .line 1358
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 3202
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onMultitapTimeout()V

    .line 3203
    return-void
.end method

.method public onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4510
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4511
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 4513
    :cond_0
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 3177
    if-nez p1, :cond_0

    .line 3189
    :goto_0
    return-void

    .line 3181
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 3182
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    .line 3188
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    iget v1, p0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/RecaptureHandler;->onRelease(II)V

    .line 3199
    :cond_0
    return-void
.end method

.method protected onSetCandidatesViewShown(Z)Z
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 2098
    if-nez p1, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isScreenMagnificationOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    const/4 p1, 0x1

    .line 2101
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isShowCandidatesViewAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShowInputRequested(IZ)Z
    .locals 4
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2034
    iget-boolean v3, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    if-eqz v3, :cond_0

    .line 2035
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doStartInputInternal()V

    .line 2036
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 2038
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showStartupActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2041
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 2042
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->startupActivityShown:Z

    .line 2043
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    move v1, v2

    .line 2070
    :cond_1
    :goto_0
    return v1

    .line 2046
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v3, :cond_3

    .line 2047
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v3, p1, p2}, Lcom/nuance/swype/input/AbstractTapDetector;->onShowInputRequested(IZ)V

    .line 2051
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2058
    .local v1, "showWindow":Z
    if-nez v1, :cond_1

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    .line 2059
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2060
    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v2, :cond_1

    .line 2067
    const/4 v1, 0x1

    goto :goto_0

    .line 2052
    .end local v1    # "showWindow":Z
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1310
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x75

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1313
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->isEditorAttributeChanged:Z

    .line 1314
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipWrongStartInputView()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->isEditorAttributeChanged:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 1341
    :cond_0
    :goto_1
    return-void

    .line 1313
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEquivalentTo(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1319
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v1, :cond_4

    .line 1320
    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1322
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputFieldInfo;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1324
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1325
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1327
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v1, :cond_5

    .line 1328
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AbstractTapDetector;->onStartInput()V

    .line 1331
    :cond_5
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1332
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 1333
    .local v0, "hardKeyHandler":Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 1335
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1336
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    .line 1337
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/IMEHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_1
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 10
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v8, 0x7b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1591
    sget-object v3, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "onStartInputView...restarting: "

    aput-object v7, v6, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1594
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->checkBuildValid()V

    .line 1596
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x75

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1597
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1598
    if-eqz p2, :cond_0

    .line 1606
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-eqz v3, :cond_0

    .line 1607
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCachedContextBuffer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/IME;->learnContextBuffer(Ljava/lang/String;)V

    .line 1612
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .line 8269
    iget-boolean v3, v3, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mReloadRequiredFromResources:Z

    .line 1612
    if-eqz v3, :cond_1

    .line 1613
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->startLoadingKeyboardBackground()V

    .line 1616
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1617
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1619
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipWrongStartInputView()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/nuance/swype/input/IME;->isEditorAttributeChanged:Z

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    .line 1674
    :cond_2
    :goto_0
    return-void

    .line 1624
    :cond_3
    iget-boolean v3, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    if-eqz v3, :cond_4

    .line 1625
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doStartInputInternal()V

    .line 1626
    iput-boolean v4, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1629
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1630
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1631
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1633
    invoke-direct {p0, v4, v4}, Lcom/nuance/swype/input/IME;->doFinishInputView(ZZ)V

    .line 1636
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1638
    if-eqz p2, :cond_6

    iget-boolean v3, p0, Lcom/nuance/swype/input/IME;->isEditorAttributeChanged:Z

    if-nez v3, :cond_6

    .line 1639
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldFilterInputViewRestarts()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1641
    .local v0, "currentTimestamp":J
    iget-wide v6, p0, Lcom/nuance/swype/input/IME;->lastAllowedTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x2bc

    cmp-long v3, v6, v8

    if-lez v3, :cond_b

    move v3, v5

    .line 1642
    :goto_1
    if-eqz v3, :cond_2

    .line 1643
    iput-wide v0, p0, Lcom/nuance/swype/input/IME;->lastAllowedTime:J

    .line 1650
    .end local v0    # "currentTimestamp":J
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/IME;->onStartInputViewCommon(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1651
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->setEmojiExtraRegion(I)V

    .line 1653
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 1654
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1655
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1656
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/nuance/swype/input/IMEHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1657
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v3

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1658
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    .line 1657
    invoke-virtual {v3, v6, v7}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleLanguageOrRestore(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputView;)V

    .line 1661
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v3, :cond_a

    .line 1664
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 9128
    iget-object v6, v3, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v6, :cond_c

    .line 9129
    iget-object v3, v3, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v3}, Lcom/google/android/voiceime/Trigger;->hasRecognitionResultToCommit()Z

    move-result v3

    .line 1664
    :goto_2
    if-eqz v3, :cond_8

    .line 1665
    sget-object v3, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "cursor onStartInputView"

    aput-object v6, v5, v4

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1666
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 1668
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 10105
    iget-object v4, v3, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v4, :cond_9

    .line 10106
    iget-object v4, v3, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v4}, Lcom/google/android/voiceime/Trigger;->onStartInputView()V

    .line 10110
    :cond_9
    invoke-virtual {v3}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 1671
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->registerCursorMonitor()V

    goto/16 :goto_0

    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v0    # "currentTimestamp":J
    :cond_b
    move v3, v4

    .line 1641
    goto :goto_1

    .end local v0    # "currentTimestamp":J
    .restart local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_c
    move v3, v4

    .line 9131
    goto :goto_2
.end method

.method public onStartInputViewCommon(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 1400
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/connect/Connect;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1401
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    .line 1402
    .local v8, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v8, v0}, Lcom/nuance/swype/input/IMEApplication;->setCurrentFieldInfo(I)V

    .line 1403
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/nuance/swype/input/IMEApplication;->setCurrentApplicationName(Ljava/lang/String;)V

    .line 1404
    if-nez p2, :cond_0

    .line 8023
    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 1404
    if-eqz v0, :cond_0

    .line 1405
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "Requesting incrementing session tracker"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1406
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->requestIncrement()V

    .line 1409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1410
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->loadSettings()V

    .line 1412
    invoke-virtual {p0, v12}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 1413
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isEditorAttributeChanged:Z

    iget-boolean v2, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    invoke-virtual {p0, p2, v0, v2}, Lcom/nuance/swype/input/IME;->onStartInputViewProjectOverride(ZZZ)Z

    move-result v9

    .line 1419
    .local v9, "restoreLayer":Z
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isEditorAttributeChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    if-eqz v0, :cond_2

    .line 1420
    :cond_1
    const/4 p2, 0x0

    .line 1424
    :cond_2
    sget v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_FOREGROUND_UI:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IME;->setRunningState(I)V

    .line 1425
    invoke-virtual {p0, v12}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 1426
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1427
    :cond_3
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 1428
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 1433
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1434
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "onStartInput(): no input view"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1516
    :cond_4
    :goto_1
    return-void

    .line 1430
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    goto :goto_0

    .line 1439
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    .line 1441
    .local v7, "currentInputView":Lcom/nuance/swype/input/InputView;
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1442
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "onStartInput(): no input view"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 1446
    :cond_7
    if-eqz v9, :cond_12

    .line 1447
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    if-eqz v0, :cond_11

    :cond_8
    move v0, v12

    :goto_2
    invoke-virtual {v2, v7, v0}, Lcom/nuance/swype/input/IME$KeyboardState;->restore(Lcom/nuance/swype/input/InputView;Z)V

    .line 1454
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 1456
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    .line 1458
    const-string/jumbo v0, "Chinesefs.handwriting"

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1459
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->showStartupMessage()V

    .line 1463
    :cond_a
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-eqz v0, :cond_d

    .line 1465
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v6

    .line 1466
    .local v6, "curInputView":Lcom/nuance/swype/input/InputView;
    invoke-static {p0}, Lcom/nuance/swype/stats/StatisticsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v11

    .line 1467
    .local v11, "stats":Lcom/nuance/swype/stats/StatisticsManager;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eqz v11, :cond_b

    .line 1468
    invoke-virtual {v11}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1469
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .local v10, "size":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1471
    const/16 v0, 0x78

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1474
    invoke-virtual {v11}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordKeyboardSizeChange(Ljava/lang/String;)V

    .line 1477
    .end local v10    # "size":Ljava/lang/StringBuilder;
    :cond_b
    iget v0, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    if-eqz v0, :cond_d

    .line 1478
    if-eqz v6, :cond_c

    .line 1479
    iget v0, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 1481
    :cond_c
    iput v1, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    .line 1486
    .end local v6    # "curInputView":Lcom/nuance/swype/input/InputView;
    .end local v11    # "stats":Lcom/nuance/swype/stats/StatisticsManager;
    :cond_d
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onStartInputView(Z)V

    .line 1488
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    .line 1489
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    .line 1495
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v7, :cond_f

    .line 1496
    const/4 v5, 0x0

    .line 1497
    .local v5, "languageInfo":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    if-eqz v0, :cond_e

    .line 1498
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 1499
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    .line 1501
    :cond_e
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1502
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v3

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    .line 1501
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->notifyKeyboardOpen(Landroid/content/Context;ILcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Ljava/lang/String;)V

    .line 1506
    .end local v5    # "languageInfo":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isScreenMagnificationOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1507
    invoke-virtual {p0, v12}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1510
    :cond_10
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1511
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->postDelayCheckLanguageUpdateMessage()V

    .line 1512
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->postDelayAddOemLDBWordsMessage()V

    goto/16 :goto_1

    :cond_11
    move v0, v1

    .line 1447
    goto/16 :goto_2

    .line 1448
    :cond_12
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1449
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1450
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 1449
    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleLanguageOrRestore(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputView;)V

    goto/16 :goto_3
.end method

.method public onStartInputViewProjectOverride(ZZZ)Z
    .locals 1
    .param p1, "restarting"    # Z
    .param p2, "editorChanged"    # Z
    .param p3, "orientation"    # Z

    .prologue
    .line 1362
    const/4 v0, 0x0

    .line 1363
    .local v0, "restoreLayer":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 1364
    const/4 v0, 0x1

    .line 1367
    :cond_0
    return v0
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 2959
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_1

    .line 2970
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    const/16 v1, 0xfdf

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->shouldDisableInput(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2965
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_2

    .line 2966
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->onText(Ljava/lang/CharSequence;)V

    .line 2969
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_0
.end method

.method protected onTokenAttached()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 1
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 3207
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_1

    .line 3216
    :cond_0
    :goto_0
    return-void

    .line 3211
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3215
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x1

    .line 463
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onTrimMemory("

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 465
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 466
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/IME;->setRunningState(I)V

    .line 468
    :cond_0
    return-void
.end method

.method public onUnbindInput()V
    .locals 5

    .prologue
    .line 883
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onUnbindInput() : method called : "

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 884
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 885
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 886
    .local v0, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 889
    :cond_0
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    const/4 v4, 0x0

    .line 2009
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onUpdateCursorAnchorInfo: "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2011
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 2012
    invoke-virtual {p1}, Landroid/view/inputmethod/CursorAnchorInfo;->getComposingTextStart()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2013
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2014
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2015
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 2016
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 2017
    invoke-virtual {p0, v4, v4}, Lcom/nuance/swype/input/IME;->recaptureOnSingleTap(ZZ)V

    .line 2021
    .end local v0    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 2075
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 2077
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUpdateSelection()...no input view"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2084
    :goto_0
    return-void

    .line 2083
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 14
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 1897
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1899
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onUpdateSelection() : method called : after "

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1900
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onUpdateSelection(): oss: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; ose: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; nss: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; nse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; cs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1903
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->ignoreFirstUpdateSelectionPostOrientationChange:Z

    if-eqz v1, :cond_1

    .line 1904
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->ignoreFirstUpdateSelectionPostOrientationChange:Z

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1909
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onUpdateSelection()...no input view"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 1917
    :cond_3
    const/4 v1, 0x2

    new-array v6, v1, [I

    const/4 v1, 0x0

    aput p5, v6, v1

    const/4 v1, 0x1

    aput p6, v6, v1

    .line 1918
    .local v6, "candidateIndices":[I
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 1921
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v1, :cond_0

    .line 1922
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->recordStartTimeDisplaySelection()V

    .line 1923
    iget-object v7, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    const/4 v1, 0x0

    aget v12, v6, v1

    const/4 v1, 0x1

    aget v13, v6, v1

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Lcom/nuance/swype/input/RecaptureHandler;->onUpdateSelection(IIIIII)V

    .line 1925
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1926
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->recordUsedTimeReselectDisplaySelectionList()V

    goto :goto_0
.end method

.method public onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isStreaming"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    .line 4868
    return-void
.end method

.method public onViewClicked(Z)V
    .locals 2
    .param p1, "focusChanged"    # Z

    .prologue
    .line 529
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 531
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/AbstractTapDetector;->onViewClicked(Z)V

    .line 538
    :cond_1
    return-void
.end method

.method public onWindowHidden()V
    .locals 4

    .prologue
    .line 1969
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onWindowHidden..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1970
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1972
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->updateCustomDimensions()V

    .line 1973
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->endSession(Landroid/content/Context;)V

    .line 1974
    return-void
.end method

.method public onWindowShown()V
    .locals 4

    .prologue
    .line 1961
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onWindowShown..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1962
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1964
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->startSession(Landroid/content/Context;)V

    .line 1965
    return-void
.end method

.method public onWrite(Ljava/util/List;)V
    .locals 2
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
    .line 3873
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v1, :cond_1

    .line 3885
    :cond_0
    :goto_0
    return-void

    .line 3877
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3881
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3882
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isWriteInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3883
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->handleWrite(Ljava/util/List;)V

    goto :goto_0
.end method

.method pauseSpeech()V
    .locals 2

    .prologue
    .line 3384
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 3387
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    .line 3388
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->pauseSpeech()V

    .line 3390
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 3391
    return-void
.end method

.method public performAction()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2976
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->getActionId()I

    move-result v1

    .line 2977
    .local v1, "idAction":I
    if-eq v1, v2, :cond_1

    .line 2978
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2979
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2980
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2984
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public playKeyClick(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 3296
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 3297
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->audioManager:Landroid/media/AudioManager;

    .line 3299
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isKeySoundAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3300
    const/4 v0, 0x5

    .line 3301
    .local v0, "sound":I
    sparse-switch p1, :sswitch_data_0

    .line 3314
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->audioManager:Landroid/media/AudioManager;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 3316
    .end local v0    # "sound":I
    :cond_1
    return-void

    .line 3303
    .restart local v0    # "sound":I
    :sswitch_0
    const/4 v0, 0x7

    .line 3304
    goto :goto_0

    .line 3306
    :sswitch_1
    const/16 v0, 0x8

    .line 3307
    goto :goto_0

    .line 3309
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 3301
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public recaptureOnSingleTap(ZZ)V
    .locals 2
    .param p1, "restarting"    # Z
    .param p2, "orientationChanged"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1377
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RecaptureHandler;->onStartInputView()V

    .line 1379
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    if-nez v0, :cond_0

    .line 1380
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1382
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    if-eqz v0, :cond_2

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, v1, p2}, Lcom/nuance/swype/input/RecaptureHandler;->onSingleTap(ZZ)Z

    .line 1387
    :cond_2
    return-void
.end method

.method public reconstructByTap()Z
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RecaptureHandler;->reconstructByTap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshInputViewLanguage()V
    .locals 2

    .prologue
    .line 2881
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2882
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 2883
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 2884
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->setupInputView(Z)V

    .line 2885
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->invalidate()V

    .line 2886
    return-void
.end method

.method public refreshKeyboard()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 2910
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "refreshKeyboard()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2911
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2912
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2914
    return-void
.end method

.method public refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 5
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p2, "view"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 1863
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v3, :cond_0

    .line 1864
    instance-of v3, p1, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 1865
    check-cast v2, Lcom/nuance/swype/input/XT9Keyboard;

    .line 1866
    .local v2, "xt9Keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 1867
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 1868
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->countEnabledLanguageMode()I

    move-result v3

    .line 1867
    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/input/XT9Keyboard;->setLanguageSwitchKey(Lcom/nuance/swype/input/InputMethods$Language;I)Ljava/util/List;

    move-result-object v3

    .line 1869
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1870
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p2, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 1874
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v2    # "xt9Keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    :cond_0
    return-void
.end method

.method public registerReceiverMessages()V
    .locals 3

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3279
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3282
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3284
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3286
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "language_update_notification"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3289
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3290
    return-void
.end method

.method public releaseRepeatKey()V
    .locals 1

    .prologue
    .line 3192
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    .line 3193
    return-void
.end method

.method public reloadKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2889
    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 2890
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RecaptureHandler;->clearMessages()V

    .line 2892
    iput-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 2894
    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 2895
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME$KeyboardState;->save(Lcom/nuance/swype/input/InputView;)V

    .line 2896
    const-string/jumbo v0, "NO_VIEW"

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2898
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2899
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->reset()V

    .line 2900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 2903
    :cond_1
    return-void
.end method

.method public removeAllPendingMsgs()V
    .locals 2

    .prologue
    .line 3667
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v1, :cond_0

    .line 3668
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/RecaptureHandler;->clearMessages()V

    .line 3670
    :cond_0
    const/16 v0, 0x64

    .local v0, "msg":I
    :goto_0
    const/16 v1, 0x7d

    if-gt v0, v1, :cond_1

    .line 3671
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3673
    :cond_1
    return-void
.end method

.method public renewLicense()V
    .locals 1

    .prologue
    .line 4066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 4067
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->runLicenseCheck()V

    .line 4068
    return-void
.end method

.method public replaceLicense(Ljava/io/File;)Z
    .locals 3
    .param p1, "newLicense"    # Ljava/io/File;

    .prologue
    .line 4056
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "license.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4057
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4058
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 4059
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->runLicenseCheck()V

    .line 4060
    const/4 v1, 0x1

    .line 4062
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetContainerView()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->removeItem()V

    .line 765
    :cond_0
    return-void
.end method

.method public resetInputView(Z)V
    .locals 3
    .param p1, "resetCore"    # Z

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RecaptureHandler;->clearMessages()V

    .line 745
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 747
    :cond_0
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 748
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME$KeyboardState;->save(Lcom/nuance/swype/input/InputView;)V

    .line 749
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToDestroy(Z)V

    .line 750
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->reset()V

    .line 751
    const-string/jumbo v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 752
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->resetContainerView()V

    .line 754
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    .line 755
    return-void
.end method

.method public retrieveCurrentInputViewName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1091
    const/4 v2, 0x0

    .line 1092
    .local v2, "overrideCurrentMode":Z
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v3, :cond_0

    .line 1093
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 1099
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 1101
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 1103
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1104
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1105
    if-eqz v2, :cond_1

    .line 1106
    const-string/jumbo v3, "Korean.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 1147
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    return-object v3

    .line 1108
    :cond_1
    const-string/jumbo v3, "Korean.HandWriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1111
    :cond_2
    const-string/jumbo v3, "Korean.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1113
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1114
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1115
    if-eqz v2, :cond_4

    .line 1116
    const-string/jumbo v3, "Chinese.input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1118
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1119
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1120
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultFullscreenHandwriting()Z

    move-result v4

    .line 1119
    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1121
    if-eqz v3, :cond_5

    .line 1122
    const-string/jumbo v3, "Chinesefs.handwriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1124
    :cond_5
    const-string/jumbo v3, "Chinese.HandWriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1128
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_6
    const-string/jumbo v3, "Chinese.input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1130
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1131
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1132
    if-eqz v2, :cond_8

    .line 1133
    const-string/jumbo v3, "Japanese.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1135
    :cond_8
    const-string/jumbo v3, "Japanese.HandWriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1138
    :cond_9
    const-string/jumbo v3, "Japanese.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1141
    :cond_a
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1142
    if-eqz v2, :cond_b

    const-string/jumbo v3, "Alpha.KeyboardInput"

    :goto_1
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "Alpha.HandWriting"

    goto :goto_1

    .line 1144
    :cond_c
    const-string/jumbo v3, "Alpha.KeyboardInput"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public runLicenseCheck()V
    .locals 1

    .prologue
    .line 4048
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4049
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    if-nez v0, :cond_0

    .line 4050
    invoke-static {p0}, Lcom/nuance/swype/input/License;->getLicense(Landroid/content/Context;)Lcom/nuance/swype/input/License;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 4053
    :cond_0
    return-void
.end method

.method public sendBackspace(I)V
    .locals 13
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v12, 0x43

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3066
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 3067
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v2, :cond_1

    .line 3133
    :cond_0
    :goto_0
    return-void

    .line 3070
    :cond_1
    const/16 v10, 0x14

    if-le p1, v10, :cond_4

    const/4 v0, 0x2

    .line 3072
    .local v0, "deleteCount":I
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->forceTypeNullForBackspace()Z

    move-result v10

    if-nez v10, :cond_5

    .line 3073
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->ignoreTypeNullCheckForBackspace()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 3074
    invoke-virtual {v10}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_2
    move v10, v8

    .line 3075
    :goto_2
    if-eqz v10, :cond_b

    .line 3076
    new-instance v10, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v10}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v2, v10, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 3077
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_3

    iget-object v10, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v10, :cond_3

    iget-object v10, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_3

    iget v10, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-nez v10, :cond_6

    iget v10, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-nez v10, :cond_6

    .line 3086
    :cond_3
    invoke-virtual {p0, v12, v0}, Lcom/nuance/swype/input/IME;->sendKeyUpDownEvents(II)V

    goto :goto_0

    .end local v0    # "deleteCount":I
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    :cond_4
    move v0, v8

    .line 3070
    goto :goto_1

    .restart local v0    # "deleteCount":I
    :cond_5
    move v10, v9

    .line 3074
    goto :goto_2

    .line 3089
    .restart local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    :cond_6
    invoke-static {v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v5

    .line 3090
    .local v5, "selection":[I
    if-eqz v5, :cond_7

    aget v10, v5, v9

    aget v11, v5, v8

    if-eq v10, v11, :cond_7

    .line 3092
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 3093
    const-string/jumbo v8, ""

    invoke-virtual {v2, v8, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3094
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 3096
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3097
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->playSoundIfTextIsEmpty()V

    .line 3100
    :cond_8
    invoke-virtual {p0, v12}, Lcom/nuance/swype/input/IME;->shouldSendKeyAsKeyEvent(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 3103
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldCheckSmileyWhenDeleting()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3104
    invoke-static {p0}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v7

    .line 3105
    .local v7, "utility":Lcom/nuance/swype/util/CharacterUtilities;
    aget v10, v5, v9

    .line 11476
    iget v11, v7, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    .line 3105
    if-le v10, v11, :cond_9

    aget v10, v5, v9

    .line 12476
    iget v11, v7, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    .line 3105
    sub-int v6, v10, v11

    .line 3107
    .local v6, "start":I
    :goto_3
    iget-object v10, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    aget v11, v5, v9

    invoke-interface {v10, v6, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3108
    .local v4, "lastEmiley":Ljava/lang/String;
    invoke-virtual {v7, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isSmiley(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3109
    invoke-virtual {p0, v12, v0}, Lcom/nuance/swype/input/IME;->sendKeyUpDownEvents(II)V

    goto/16 :goto_0

    .end local v4    # "lastEmiley":Ljava/lang/String;
    .end local v6    # "start":I
    :cond_9
    move v6, v9

    .line 3105
    goto :goto_3

    .line 3115
    .end local v7    # "utility":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_a
    iget-object v10, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    aget v11, v5, v9

    invoke-static {v10, v11, v0}, Lcom/nuance/swype/util/EmojiUtils;->characterBefore(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 3116
    invoke-virtual {v2, v0, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 3123
    invoke-virtual {v2, v8, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3124
    .local v3, "lastChar":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v3, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3125
    invoke-virtual {v2, v8, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 3131
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "lastChar":Ljava/lang/CharSequence;
    .end local v5    # "selection":[I
    :cond_b
    invoke-virtual {p0, v12, v0}, Lcom/nuance/swype/input/IME;->sendKeyUpDownEvents(II)V

    goto/16 :goto_0
.end method

.method public sendChar(C)V
    .locals 5
    .param p1, "charCode"    # C

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3039
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3040
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3041
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3042
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    .line 3048
    :cond_0
    :goto_0
    return-void

    .line 3044
    :cond_1
    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 3045
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public sendCharOrPerformAction(C)V
    .locals 1
    .param p1, "charCode"    # C

    .prologue
    .line 2991
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->performAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2995
    :goto_0
    return-void

    .line 2994
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendChar(C)V

    goto :goto_0
.end method

.method public sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V
    .locals 4
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "delay"    # J

    .prologue
    const/16 v2, 0x71

    .line 4353
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4354
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4356
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4357
    return-void
.end method

.method protected sendKeyUpDownEvents(II)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .prologue
    .line 3060
    move v0, p2

    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-lez v0, :cond_0

    .line 3061
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 3063
    .end local v0    # "count":I
    .restart local p2    # "count":I
    :cond_0
    return-void
.end method

.method public sendLeftRightKey(II)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    .line 3140
    const/16 v1, 0xfdd

    if-ne p1, v1, :cond_1

    .line 3141
    const/16 v0, 0x15

    .line 3147
    .local v0, "keyEventCode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    .line 3150
    const/16 v1, 0x14

    if-le p2, v1, :cond_0

    .line 3151
    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    .line 3153
    :cond_0
    return-void

    .line 3142
    .end local v0    # "keyEventCode":I
    :cond_1
    const/16 v1, 0xfde

    if-ne p1, v1, :cond_2

    .line 3143
    const/16 v0, 0x16

    .restart local v0    # "keyEventCode":I
    goto :goto_0

    .line 3145
    .end local v0    # "keyEventCode":I
    :cond_2
    move v0, p1

    .restart local v0    # "keyEventCode":I
    goto :goto_0
.end method

.method public sendSpace()V
    .locals 1

    .prologue
    .line 3051
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->sendChar(C)V

    .line 3052
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2107
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCandidatesView(): ignoring (shouldn\'t be called)"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2108
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 2122
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->onSetCandidatesViewShown(Z)Z

    move-result p1

    .line 2123
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->showCandidates(Z)V

    .line 2131
    :cond_0
    return-void
.end method

.method public setCoverView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_1

    .line 2143
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->isCoverShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "setCoverView(): cover already showing (clobbering)"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->setCover(Landroid/view/View;Z)V

    .line 2149
    :cond_1
    return-void
.end method

.method public setCoverView(Landroid/view/View;ZII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/view/InputContainerView;->setCover(Landroid/view/View;ZII)V

    .line 2155
    :cond_0
    return-void
.end method

.method public setCurrentInputLanguage()Z
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 1039
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_0

    .line 1040
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 1045
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IME;->setInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEmojiExtraRegion(I)V
    .locals 0
    .param p1, "extraRegion"    # I

    .prologue
    .line 4878
    iput p1, p0, Lcom/nuance/swype/input/IME;->emojiExtraRegion:I

    .line 4879
    return-void
.end method

.method public setHardKeyboardAttached(Z)V
    .locals 6
    .param p1, "attached"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4713
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->isHardKeyboardAttached:Z

    if-eq v1, p1, :cond_1

    .line 4714
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->isHardKeyboardAttached:Z

    .line 4716
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v1, :cond_1

    .line 4718
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/view/InputContainerView;->showInputArea(Z)V

    .line 4719
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4720
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 4721
    if-eqz p1, :cond_0

    .line 4722
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->refreshBTAutoCorrection()V

    .line 4723
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "BTlocalytics inputview:"

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4724
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->recordBTKbUsage()V

    .line 4726
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->dismissPopupKeyboard()V

    .line 4727
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->dismissLangPopupMenu()V

    .line 4731
    .end local v0    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 4718
    goto :goto_0
.end method

.method public setImeInUse(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 4291
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4292
    iget v0, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    .line 4294
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    .line 4295
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_1

    .line 4296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 4298
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onImeInUse(Z)V

    .line 4299
    return-void
.end method

.method public setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 10
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1800
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8, p1}, Lcom/nuance/swype/input/InputFieldInfo;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1801
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isEditDictionaryField()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1802
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 1849
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1805
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    goto :goto_0

    .line 1807
    :cond_2
    iput-boolean v6, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 1808
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1809
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1810
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1812
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 1819
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_4

    .line 1820
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1821
    .local v5, "what":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/Whitelist;->allows(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1822
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 1824
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v4

    .line 1825
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1826
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/nuance/swype/input/Whitelist;->allows(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1827
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    goto :goto_0

    .line 1830
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "what":Ljava/lang/String;
    :cond_4
    sget v8, Lcom/nuance/swype/input/R$bool;->enable_candidates_sw_threshold_check:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1831
    sget v8, Lcom/nuance/swype/input/R$dimen;->landscape_candidates_sw_threshold:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1832
    .local v3, "swThreshold":F
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    .line 1833
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v8

    .line 1834
    invoke-static {v0}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v2

    .line 1835
    .local v2, "smallestScreenWidthDp":I
    if-lez v2, :cond_0

    int-to-float v8, v2

    cmpg-float v8, v8, v3

    if-gez v8, :cond_0

    .line 1837
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1838
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isFieldWithFilterList()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1840
    :goto_1
    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1841
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 1838
    goto :goto_1
.end method

.method public setModeForInputContainerView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1221
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v5, :cond_3

    .line 1222
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    .line 1223
    .local v2, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported(I)Z

    move-result v1

    .line 1224
    .local v1, "miniFloatSupported":Z
    invoke-static {}, Lcom/nuance/android/compat/InputMethodServiceCompat;->isTouchableRegionSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-eqz v1, :cond_4

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v2, v5, :cond_4

    :cond_0
    move v0, v4

    .line 1227
    .local v0, "forceUseWing":Z
    :goto_0
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-nez v0, :cond_5

    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/view/InputContainerView;->refresh(Z)V

    .line 1228
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/view/InputContainerView;->setFullScreenMode(Z)V

    .line 1229
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v4

    :goto_2
    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/view/InputContainerView;->showInputArea(Z)V

    .line 1230
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v4

    :goto_3
    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/view/InputContainerView;->showCandidates(Z)V

    .line 1231
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    .line 1232
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 1231
    :cond_1
    invoke-virtual {v5, v4, v3}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1233
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1235
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1238
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/view/InputContainerView;->setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1239
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->setInputView(Landroid/view/View;)V

    .line 1240
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 1243
    .end local v0    # "forceUseWing":Z
    .end local v1    # "miniFloatSupported":Z
    .end local v2    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_3
    return-void

    .restart local v1    # "miniFloatSupported":Z
    .restart local v2    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_4
    move v0, v3

    .line 1224
    goto :goto_0

    .restart local v0    # "forceUseWing":Z
    :cond_5
    move v5, v3

    .line 1227
    goto :goto_1

    :cond_6
    move v5, v3

    .line 1229
    goto :goto_2

    :cond_7
    move v5, v3

    .line 1230
    goto :goto_3
.end method

.method public setRecaptureWhenSwitching(Z)V
    .locals 0
    .param p1, "recapture"    # Z

    .prologue
    .line 4608
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 4609
    return-void
.end method

.method public setSpaceKeyAsLanguageSwitchKey()V
    .locals 2

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 1857
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 1858
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1860
    :cond_0
    return-void
.end method

.method public setTransliterationToggleButtonOff()V
    .locals 2

    .prologue
    .line 4908
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->view:Landroid/view/View;

    .line 4909
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->toggleButton:Landroid/widget/ImageButton;

    .line 4910
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->toggleButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4911
    return-void
.end method

.method public setTransliterationToggleButtonOn()V
    .locals 2

    .prologue
    .line 4914
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->view:Landroid/view/View;

    .line 4915
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->view:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->toggleButton:Landroid/widget/ImageButton;

    .line 4916
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->toggleButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4917
    return-void
.end method

.method public setUseEditLayer(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 2732
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2733
    return-void
.end method

.method setupInputView(Z)V
    .locals 3
    .param p1, "restarting"    # Z

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1285
    const/4 v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/IME;->mLastKey:I

    .line 1286
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v1, :cond_0

    .line 1287
    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->showCurrentLanguage()V

    .line 1292
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->getCandidatesView()Landroid/view/View;

    .line 1295
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 1296
    .local v0, "currentInputView":Lcom/nuance/swype/input/InputView;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setCurrentInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1297
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 1299
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setSpaceKeyAsLanguageSwitchKey()V

    .line 1302
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 1304
    return-void
.end method

.method protected shouldSendCharAsKeyEvent()Z
    .locals 2

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    const/16 v1, 0x10

    .line 3010
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputFieldInfo;->targetsAtLeast(I)Z

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

.method protected shouldSendCharAsKeyEvent(C)Z
    .locals 1
    .param p1, "charCode"    # C

    .prologue
    .line 3023
    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    .line 3024
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSendReturnAsKeyEvent()Z

    move-result v0

    .line 3025
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3027
    :goto_0
    return v0

    .line 3025
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3027
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldSendKeyAsKeyEvent(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 3032
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 3468
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3469
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3470
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 3472
    :cond_0
    return-void
.end method

.method public showCapLockState(Z)V
    .locals 3
    .param p1, "isCapslock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3888
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3896
    :goto_0
    return-void

    .line 3891
    :cond_0
    if-eqz p1, :cond_1

    .line 3892
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->caps_lock_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 3894
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->caps_lock_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public showCurrentLanguage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1878
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1879
    .local v0, "langName":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1881
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1882
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isDeviceExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->keyboard_not_support_explore_by_touch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1890
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 1892
    :cond_1
    return-void

    .line 1886
    :cond_2
    invoke-static {p0, v0, v4}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method showDictationLanguageMenu()V
    .locals 6

    .prologue
    .line 3504
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3556
    :cond_0
    :goto_0
    return-void

    .line 3507
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 3508
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v3

    .line 3509
    .local v3, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swype/input/SpeechWrapper;->isAllowedShowingLanguageMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3512
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3513
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3514
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    invoke-direct {v4, v1}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    .line 3515
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3516
    new-instance v4, Lcom/nuance/swype/input/IME$10;

    invoke-direct {v4, p0, v3}, Lcom/nuance/swype/input/IME$10;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3528
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3529
    sget v4, Lcom/nuance/swype/input/R$string;->cancel_button:I

    new-instance v5, Lcom/nuance/swype/input/IME$11;

    invoke-direct {v5, p0, v3}, Lcom/nuance/swype/input/IME$11;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3535
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    new-instance v5, Lcom/nuance/swype/input/IME$12;

    invoke-direct {v5, p0, v3}, Lcom/nuance/swype/input/IME$12;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3542
    sget v4, Lcom/nuance/swype/input/R$string;->voice_lang_title:I

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3545
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 3548
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 3549
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v4, Lcom/nuance/swype/input/IME$13;

    invoke-direct {v4, p0, v2}, Lcom/nuance/swype/input/IME$13;-><init>(Lcom/nuance/swype/input/IME;Landroid/widget/ListView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 3555
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showEmojiInputView()V
    .locals 1

    .prologue
    .line 3849
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3850
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    .line 3851
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->show()V

    .line 3852
    return-void
.end method

.method public showLanguageMenu()V
    .locals 7

    .prologue
    .line 4534
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4587
    :goto_0
    return-void

    .line 4537
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4538
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4539
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 4540
    .local v2, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v3

    .line 4541
    .local v3, "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    new-instance v5, Lcom/nuance/swype/input/LanguageListAdapter;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v6

    invoke-direct {v5, v1, v3, v6}, Lcom/nuance/swype/input/LanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;)V

    iput-object v5, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    .line 4543
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4544
    new-instance v5, Lcom/nuance/swype/input/IME$18;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/IME$18;-><init>(Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4553
    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4554
    sget v5, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4556
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    new-instance v6, Lcom/nuance/swype/input/IME$19;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/IME$19;-><init>(Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4573
    sget v5, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4575
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 4576
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 4579
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 4580
    .local v4, "listView":Landroid/widget/ListView;
    new-instance v5, Lcom/nuance/swype/input/IME$20;

    invoke-direct {v5, p0, v4}, Lcom/nuance/swype/input/IME$20;-><init>(Lcom/nuance/swype/input/IME;Landroid/widget/ListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4586
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 17
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 2767
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 2768
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2769
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 2770
    new-instance v7, Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/nuance/swype/widget/PopupLanguageList;-><init>(Landroid/view/LayoutInflater;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    .line 2772
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    new-instance v8, Lcom/nuance/swype/input/IME$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/nuance/swype/input/IME$6;-><init>(Lcom/nuance/swype/input/IME;)V

    .line 11110
    iput-object v8, v7, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    .line 2827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v13

    .line 11128
    invoke-virtual {v12}, Lcom/nuance/swype/widget/PopupLanguageList;->getContentView()Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$id;->language_list:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 11131
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 11132
    iget-object v8, v12, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 11139
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v11, v8, -0x1

    move v10, v11

    .line 11140
    :goto_0
    if-ltz v10, :cond_0

    .line 11142
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/InputMethods$Language;

    .line 11145
    iget-object v9, v12, Lcom/nuance/swype/widget/PopupLanguageList;->inflater:Landroid/view/LayoutInflater;

    sget v14, Lcom/nuance/swype/input/R$layout;->popup_language_list_item:I

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 11146
    sget v9, Lcom/nuance/swype/input/R$id;->language_label:I

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 11147
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11148
    invoke-static {v9}, Lcom/nuance/swype/widget/PopupLanguageList;->setPopupBackground(Landroid/view/View;)V

    .line 11149
    invoke-static {v9}, Lcom/nuance/swype/widget/PopupLanguageList;->setPopupColorText(Landroid/widget/TextView;)V

    .line 11151
    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->popup_language_list_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 11152
    invoke-virtual {v9, v15, v15, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 11155
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11158
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11159
    iget-object v8, v12, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11140
    add-int/lit8 v8, v10, -0x1

    move v10, v8

    goto :goto_0

    .line 11163
    :cond_0
    if-ltz v11, :cond_3

    .line 11164
    iget-object v7, v12, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 11165
    iget-object v7, v12, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setPressed(Z)V

    .line 2830
    :goto_1
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 2832
    .local v3, "inputView":Lcom/nuance/swype/input/InputView;
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 2833
    .local v5, "pos":[I
    if-eqz p1, :cond_4

    .line 2835
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/nuance/swype/input/InputView;->calcKeyTopCenterInWindow(Lcom/nuance/swype/input/KeyboardEx$Key;[I)[I

    .line 2841
    :goto_2
    const/4 v7, 0x1

    aget v8, v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/InputView;->getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v9

    sub-int/2addr v8, v9

    aput v8, v5, v7

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 2852
    .local v6, "rootView":Landroid/view/View;
    const/4 v7, 0x0

    aget v8, v5, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    aput v8, v5, v7

    .line 2853
    const/4 v7, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v5, v9

    sub-int/2addr v8, v9

    aput v8, v5, v7

    .line 2857
    if-nez p1, :cond_5

    .line 2859
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 2860
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v4, :cond_1

    .line 2861
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/InputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object p1

    .line 2863
    :cond_1
    if-eqz p1, :cond_2

    .line 2864
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    const/16 v8, 0x51

    const/4 v9, 0x0

    aget v9, v5, v9

    move-object/from16 v0, p1

    iget v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/nuance/swype/widget/PopupLanguageList;->showAtLocation(Landroid/view/View;III)V

    .line 2874
    .end local v3    # "inputView":Lcom/nuance/swype/input/InputView;
    .end local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v5    # "pos":[I
    .end local v6    # "rootView":Landroid/view/View;
    :cond_2
    :goto_3
    return-void

    .line 11167
    :cond_3
    iget-object v7, v12, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 2838
    .restart local v3    # "inputView":Lcom/nuance/swype/input/InputView;
    .restart local v5    # "pos":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lcom/nuance/swype/input/view/InputContainerView;->getVisiblePosInWindow([II)V

    goto :goto_2

    .line 2871
    .restart local v6    # "rootView":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    const/16 v8, 0x51

    const/4 v9, 0x0

    aget v9, v5, v9

    .line 2872
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getHeight()I

    move-result v10

    move-object/from16 v0, p1

    iget v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IME;->getBottomBarHeight(Lcom/nuance/swype/input/InputView;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2871
    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/nuance/swype/widget/PopupLanguageList;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3
.end method

.method public final showNonLVLLicenseAppDialog()V
    .locals 0

    .prologue
    .line 4787
    return-void
.end method

.method public showStartupMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x6d

    .line 4181
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4182
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4183
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4185
    :cond_0
    return-void
.end method

.method public showTrialExpireMessage(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-nez v0, :cond_0

    .line 4921
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 4923
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->checkAndShowTrialExpired(Landroid/os/IBinder;)V

    .line 4924
    return-void
.end method

.method public startApp(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4135
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nuance/swype/input/IME;->startApp(Ljava/lang/String;Landroid/net/Uri;ILcom/nuance/swype/input/IME$IntentDecorator;)Z

    move-result v0

    return v0
.end method

.method public startDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 5
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 4339
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v0

    .line 4341
    .local v0, "ssInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 4342
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4343
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowStartup(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4350
    :cond_0
    :goto_0
    return-void

    .line 4346
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "startDelayScanning..."

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4347
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4348
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 4515
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-nez v0, :cond_0

    .line 4516
    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 4518
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 13099
    iget-object v1, v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v1, :cond_1

    .line 13100
    iget-object v0, v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/Trigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 4519
    :cond_1
    return-void
.end method

.method stopSpeech()V
    .locals 2

    .prologue
    .line 3394
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 3397
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    .line 3398
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 3400
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 3401
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 3163
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->close()V

    .line 3164
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 3160
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 3156
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 3168
    return-void
.end method

.method public switchHardInputView(Z)V
    .locals 0
    .param p1, "restarting"    # Z

    .prologue
    .line 1217
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 1218
    return-void
.end method

.method public switchInputView(Z)V
    .locals 8
    .param p1, "restarting"    # Z

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->retrieveCurrentInputViewName()Ljava/lang/String;

    .line 7023
    sget-boolean v4, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 1249
    if-eqz v4, :cond_0

    .line 1250
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1251
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "Setting handwriting to "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " when switching input view"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1252
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setHandwriting(Z)V

    .line 1255
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->createInputViewFor(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1256
    .local v1, "inputAreaView":Landroid/view/View;
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->getCandidatesView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/nuance/swype/input/IME;->initInputContainerView(Landroid/view/View;Landroid/view/View;)V

    .line 1257
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->setupInputView(Z)V

    .line 1258
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->setInputView(Landroid/view/View;)V

    .line 1259
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 1261
    invoke-static {p0}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v3

    .line 1262
    .local v3, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    .line 1263
    .local v0, "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 1264
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyboardPageXML()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardPageXML(Ljava/lang/String;)V

    .line 1266
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isInputSessionStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1267
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 1270
    :cond_2
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1271
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->postDelayCheckLanguageUpdateMessage()V

    .line 1274
    :cond_3
    return-void
.end method

.method public switchInputViewAsync()V
    .locals 1

    .prologue
    .line 3583
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 3584
    return-void
.end method

.method public switchInputViewAsync(I)V
    .locals 4
    .param p1, "msAfter"    # I

    .prologue
    const/16 v2, 0x64

    .line 3578
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3579
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3580
    return-void
.end method

.method public switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;)V
    .locals 2
    .param p1, "info"    # Lcom/nuance/swype/input/LangSwitchAction;

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 3574
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/IME;->switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;I)V

    .line 3575
    return-void
.end method

.method public switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;I)V
    .locals 4
    .param p1, "info"    # Lcom/nuance/swype/input/LangSwitchAction;
    .param p2, "msAfter"    # I

    .prologue
    const/16 v2, 0x6f

    .line 3568
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3569
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3570
    return-void
.end method

.method public toggleHwrAndKeyboardInputMode()V
    .locals 4

    .prologue
    .line 3656
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 3657
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->toggleHandwritingAndInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 3659
    .local v1, "nextInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3660
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mKeyboardBackgroundManager:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 3661
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 3662
    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 3664
    :cond_0
    return-void
.end method

.method public updateAvailable()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->checkPackageUpdate()V

    .line 518
    return-void
.end method

.method public updateInputMethods(Lcom/nuance/swype/input/InputMethods;)V
    .locals 1
    .param p1, "im"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v0, :cond_0

    .line 714
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 717
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    goto :goto_0
.end method

.method public vibrate()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3319
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isVibrateAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3340
    :cond_0
    :goto_0
    return-void

    .line 3322
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3323
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->isSetVibrationDurationAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3324
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/nuance/swype/input/IME;->vibrateOn:Z

    if-eqz v2, :cond_0

    .line 3325
    invoke-virtual {v0, v3, v3}, Lcom/nuance/swype/input/InputView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 3331
    :cond_2
    if-eqz v0, :cond_3

    .line 3332
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView;->setHapticFeedbackEnabled(Z)V

    .line 3334
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/SystemState;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    .line 3335
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 3336
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getVibrationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
