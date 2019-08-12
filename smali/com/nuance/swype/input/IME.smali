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

.field public static final MSG_CYCLING_KEYBOARD_INPUTS:I = 0x67

.field public static final MSG_CYCLING_LANGUAGE:I = 0x66

.field public static final MSG_DELAY_CHECK_LANGUAGE_UPDATE:I = 0x77

.field public static final MSG_FINISHVIEW_RUNNABLE_POSTED:I = 0x7b

.field public static final MSG_FIRST:I = 0x65

.field public static final MSG_HARDKEY_HANDLE_CUSTOM_KEY_EVENT:I = 0x74

.field public static final MSG_HARDKEY_START_HIDE_WCL:I = 0x73

.field public static final MSG_HARDKEY_START_SHOW_WCL:I = 0x75

.field public static final MSG_LAST:I = 0x7b

.field public static final MSG_LAUNCH_SETTINGS:I = 0x69

.field public static final MSG_NEW_WORDS_SCAN:I = 0x71

.field public static final MSG_REFRESH_INPUTVIEW:I = 0x6c

.field public static final MSG_RELEASE_EMOJI_INPUT:I = 0x78

.field public static final MSG_RESUME_EMOJI_INPUT:I = 0x79

.field public static final MSG_SHOW_EMOJI_INPUT:I = 0x7a

.field public static final MSG_SHOW_FIRST_TIME_MESSAGES:I = 0x6d

.field public static final MSG_START_SMS_CALLLOG_SCRAPPER:I = 0x72

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

.field private static final WAIT_TIME_FILTER_STARTINPUT:I = 0x2bc

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mLastActiveWord:Ljava/lang/StringBuilder; = null

.field private static mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source; = null

.field public static final skipLvlError:Z = true

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private allowCandidateViewShown:Z

.field private alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

.field private appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

.field private audioManager:Landroid/media/AudioManager;

.field private checkPackageUpdateRunnable:Ljava/lang/Runnable;

.field private final checkedLanguageUpdateList:Landroid/util/SparseIntArray;

.field private closeRunnable:Ljava/lang/Runnable;

.field private currentLicense:Lcom/nuance/swype/input/License;

.field private dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

.field private dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

.field public emojiExtraRegion:I

.field private emojiKeyWasHidden:Z

.field private extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

.field private finishInputViewRunnable:Ljava/lang/Runnable;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field public handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

.field public hardwareEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private hwAccelEnabled:Z

.field private ignoreFirstUpdateSelectionPostOrientationChange:Z

.field private inUse:Z

.field private initializeCoreNeeded:Z

.field private inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

.field private isAccessibilityChanged:Z

.field private isCandidateViewOpening:Z

.field private isCurrentUsingHardKeyboard:Z

.field private isHardKeyboardAttached:Z

.field private isHardkeyboardEnabled:Z

.field private isOrientationChanged:Z

.field private isStartInputPending:Z

.field private isStartupActivityShown:Z

.field private keySoundOn:Z

.field public keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

.field private languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

.field private languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

.field private languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

.field private lastAccessibility:Z

.field private lastAllowedTime:J

.field private lastConfiguration:Landroid/content/res/Configuration;

.field private localyticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localyticsStartPointTime:J

.field private mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

.field public mAlertMessageDialog:Landroid/app/AlertDialog;

.field public mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

.field public mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field public mCurrentInputViewName:Ljava/lang/String;

.field private mEditState:Lcom/nuance/swype/input/EditState;

.field private final mHandler:Landroid/os/Handler;

.field public mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

.field public mInputMethods:Lcom/nuance/swype/input/InputMethods;

.field public mLastKey:I

.field private mLastKeyTime:J

.field mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

.field private mNeedLanguageInToast:Z

.field private mNetworkPromptMessage:Landroid/app/AlertDialog;

.field public mOptionsDialog:Landroid/app/AlertDialog;

.field private mQuickPressed:Z

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepeatedKeyCount:I

.field private mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

.field private mTouchableRegionRect:Landroid/graphics/Rect;

.field private mUsedEditLayer:Z

.field private mValidBulid:Z

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field public mWantToast:Z

.field private myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

.field private needRrefreshKeyboard:Z

.field private networkNotificationHasBeenShown:Z

.field private pendingHibernateState:Ljava/lang/Runnable;

.field private popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

.field private portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

.field private posTemp:[I

.field private prevLastInput:I

.field private recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

.field protected recaptureWhenSwitching:Z

.field private final savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

.field private simulateTapOnPostOrientationChangePending:Z

.field private startupActivityShown:Z

.field public tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

.field private tapFilter:Lcom/nuance/swype/input/tweaks/TapFilter;

.field private trialCheckCount:I

.field private upgrade:Z

.field private vibrateOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "IME"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 124
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    .line 225
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sput-object v0, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 307
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 139
    const-string v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 182
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->needRrefreshKeyboard:Z

    .line 205
    new-instance v0, Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-direct {v0}, Lcom/nuance/swype/input/IME$KeyboardState;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    .line 212
    iput v1, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    .line 249
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    .line 256
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->lastAccessibility:Z

    .line 257
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    .line 260
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->networkNotificationHasBeenShown:Z

    .line 269
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 270
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->mValidBulid:Z

    .line 275
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    .line 303
    sget-object v0, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 466
    new-instance v0, Lcom/nuance/swype/input/IME$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$1;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    .line 1599
    new-instance v0, Lcom/nuance/swype/input/IME$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$3;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    .line 1814
    new-instance v0, Lcom/nuance/swype/input/IME$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$4;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->checkPackageUpdateRunnable:Ljava/lang/Runnable;

    .line 1976
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->posTemp:[I

    .line 2965
    new-instance v0, Lcom/nuance/swype/input/IME$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$7;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3160
    new-instance v0, Lcom/nuance/swype/input/IME$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$8;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    .line 3398
    new-instance v0, Lcom/nuance/swype/input/IME$13;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IME$13;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->handlerCallback:Landroid/os/Handler$Callback;

    .line 3550
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    .line 3949
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    .line 4231
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 4232
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    .line 309
    sget v0, Lcom/nuance/swype/input/R$style;->InputMethodTheme:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->setTheme(I)V

    .line 310
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->checkPackageUpdate()V

    return-void
.end method

.method static synthetic access$1002(Lcom/nuance/swype/input/IME;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->needRrefreshKeyboard:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showFirstTimeMessages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->toggleToAndroidKeyboard()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->checkForLanguageUpgrade(Lcom/nuance/swype/input/InputMethods$Language;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->resumeEmojiInput()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/LanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/IME;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/IME;->doFinishInputView(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/IME$KeyboardState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showStartupMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/IME;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->getIntentFlags()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/IME;)Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    return-object v0
.end method

.method private checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
    .locals 6
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "runnable"    # Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .prologue
    const/4 v1, 0x0

    .line 4235
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 4236
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "checkForLanguageUpdateRunnable: "

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4238
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    .line 4239
    .local v0, "sdkMgr":Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageAvailableForUpdate(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4240
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "checkForLanguageUpdateRunnable: "

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string v5, " no update available"

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4243
    if-eqz p2, :cond_0

    .line 4244
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4246
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 4263
    :goto_0
    return-object v1

    .line 4250
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

    .line 4251
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "checkForLanguageUpdateRunnable: "

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string v4, " pending"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4252
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    move-object v1, p2

    .line 4253
    goto :goto_0

    .line 4256
    :cond_2
    if-eqz p2, :cond_3

    .line 4257
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4260
    :cond_3
    new-instance p2, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .end local p2    # "runnable":Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
    invoke-direct {p2, p1, v0, v1}, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/input/IME$1;)V

    .line 4261
    .restart local p2    # "runnable":Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4262
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    move-object v1, p2

    .line 4263
    goto :goto_0
.end method

.method private checkForLanguageUpgrade(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 7
    .param p1, "currentLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 4267
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "checkForLanguageUpgrade: "

    iget-object v6, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4268
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4269
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v4

    .line 4270
    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4291
    :cond_0
    :goto_0
    return-void

    .line 4273
    :cond_1
    instance-of v4, p1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v4, :cond_5

    move-object v1, p1

    .line 4274
    check-cast v1, Lcom/nuance/swype/input/BilingualLanguage;

    .line 4275
    .local v1, "bi":Lcom/nuance/swype/input/BilingualLanguage;
    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget v2, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 4276
    .local v2, "firstLangId":I
    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget v3, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 4277
    .local v3, "secondLangId":I
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v4

    if-gez v4, :cond_3

    .line 4279
    :cond_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/IME;->checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .line 4282
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 4284
    :cond_4
    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/IME;->checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable2:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    goto :goto_0

    .line 4288
    .end local v1    # "bi":Lcom/nuance/swype/input/BilingualLanguage;
    .end local v2    # "firstLangId":I
    .end local v3    # "secondLangId":I
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    invoke-direct {p0, p1, v4}, Lcom/nuance/swype/input/IME;->checkForLanguageUpdateRunnable(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->languageUpdateNotificationRunnable1:Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    goto :goto_0
.end method

.method private checkKeyboardReloadForEmojiKey(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1267
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v2, "com.nuance.swype.type=edit_dictionary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1274
    .local v0, "reloadKeyboard":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->emojiKeyWasHidden:Z

    .line 1280
    :goto_0
    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->reloadKeyboard()V

    .line 1282
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->refreshKeyboard()V

    .line 1285
    :cond_0
    return-void

    .line 1276
    .end local v0    # "reloadKeyboard":Z
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->emojiKeyWasHidden:Z

    .line 1277
    .restart local v0    # "reloadKeyboard":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->emojiKeyWasHidden:Z

    goto :goto_0
.end method

.method private checkPackageUpdate()V
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->hasNewWordsScanning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setCheckPackageUpdate(Z)V

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 502
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "begin check if Package available to upgrade."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    goto :goto_0
.end method

.method private doFinishInputView(ZZ)V
    .locals 4
    .param p1, "finishingInput"    # Z
    .param p2, "startScan"    # Z

    .prologue
    .line 1607
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 1608
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1609
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1635
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onFinishInputView(Z)V

    .line 1614
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDialogs()V

    .line 1615
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 1616
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 1617
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    .line 1618
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {p0, p1, v1, v2}, Lcom/nuance/swype/input/IME;->onFinishInputViewProjectOverride(ZLcom/nuance/swype/input/InputView;Lcom/nuance/swype/input/IME$KeyboardState;)V

    .line 1620
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1621
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1622
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1623
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/IMEHandler;->onFinishInputView(Z)V

    .line 1627
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1628
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->notifyKeyboardClose(Landroid/content/Context;)V

    .line 1631
    :cond_3
    if-eqz p2, :cond_4

    .line 1632
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->startPendingScanning()V

    .line 1634
    :cond_4
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    goto :goto_0
.end method

.method private doRecaptureWhenSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4206
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    if-eqz v0, :cond_1

    .line 4207
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isCurrentUsingHardKeyboard:Z

    if-nez v0, :cond_0

    .line 4208
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/RecaptureHandler;->onSingleTap(Z)Z

    .line 4210
    :cond_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 4212
    :cond_1
    return-void
.end method

.method private doSelectOnDoubleTap()Z
    .locals 2

    .prologue
    .line 807
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doStartInputInternal()V
    .locals 2

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->updateFullscreenMode()V

    .line 1229
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 1230
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->syncWithDeviceAccessiblityState()V

    .line 1233
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/IME;->localyticsStartPointTime:J

    .line 1234
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->detectAccessibilityChange()V

    .line 1236
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->detectLocaleChange()V

    .line 1239
    :cond_1
    return-void
.end method

.method private getIntentFlags()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 3547
    const v0, 0x10008000

    return v0
.end method

.method public static getLastSavedActiveWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    return-object v0
.end method

.method public static getLastSavedActiveWordAndSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    sget-object v1, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "word":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 395
    return-object v0
.end method

.method public static getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 2

    .prologue
    .line 421
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 422
    .local v0, "last":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sput-object v1, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 423
    return-object v0
.end method

.method private getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I
    .locals 1
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 4014
    const/4 v0, 0x1

    return v0
.end method

.method private getStartupTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    const-wide/16 v10, 0x1f4

    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const-wide/16 v4, 0x14

    const-wide/16 v2, 0xa

    .line 1480
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 1481
    const-string v0, "0-10ms"

    .line 1495
    :goto_0
    return-object v0

    .line 1482
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    .line 1483
    const-string v0, "10-20ms"

    goto :goto_0

    .line 1484
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    cmp-long v0, p1, v6

    if-gtz v0, :cond_2

    .line 1485
    const-string v0, "20-100ms"

    goto :goto_0

    .line 1486
    :cond_2
    cmp-long v0, p1, v6

    if-lez v0, :cond_3

    cmp-long v0, p1, v8

    if-gtz v0, :cond_3

    .line 1487
    const-string v0, "100-200ms"

    goto :goto_0

    .line 1488
    :cond_3
    cmp-long v0, p1, v8

    if-lez v0, :cond_4

    cmp-long v0, p1, v10

    if-gtz v0, :cond_4

    .line 1489
    const-string v0, "200-500ms"

    goto :goto_0

    .line 1490
    :cond_4
    cmp-long v0, p1, v10

    if-lez v0, :cond_5

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    .line 1491
    const-string v0, "500-1000ms"

    goto :goto_0

    .line 1492
    :cond_5
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    .line 1493
    const-string v0, "1000ms +"

    goto :goto_0

    .line 1495
    :cond_6
    const-string v0, "0-10ms"

    goto :goto_0
.end method

.method private handleBackspace(I)V
    .locals 3
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2682
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2683
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2690
    :goto_0
    return-void

    .line 2689
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

    .line 2714
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2715
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, v1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2721
    :goto_0
    return-void

    .line 2720
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_0
.end method

.method private handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 2
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 3958
    iget v0, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordHandler:I

    if-eqz v0, :cond_1

    .line 3982
    :cond_0
    :goto_0
    return-void

    .line 3961
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "handleNewWordsDelayScanning()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3962
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3963
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3964
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    if-eqz v0, :cond_2

    .line 3965
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->initializedCore()V

    .line 3966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    .line 3969
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_0

    .line 3971
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/IME;->scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V

    .line 3973
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3974
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0

    .line 3978
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->initializeCoreNeeded:Z

    .line 3979
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0
.end method

.method private handleSpace(ZI)V
    .locals 4
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 2693
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2694
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2697
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isAutoReturnToEditorDefaultLayerEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2702
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    .line 2703
    .local v1, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getDefaultLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v2, v3, :cond_0

    .line 2704
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->returnToDefaultLayer()V

    .line 2711
    .end local v1    # "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    :cond_0
    :goto_0
    return-void

    .line 2710
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->sendSpace()V

    goto :goto_0
.end method

.method private initializedCore()V
    .locals 3

    .prologue
    .line 4020
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "initializedCore()"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 4022
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 4023
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4024
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 4025
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 4029
    :goto_0
    return-void

    .line 4027
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    goto :goto_0
.end method

.method private isHardwareAccelerationEnabled()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    return v0
.end method

.method private isLVLEnabled()Z
    .locals 2

    .prologue
    .line 4063
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->google_play_show_lvl_default:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isShowCandidatesViewAllowed()Z
    .locals 1

    .prologue
    .line 1898
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    return v0
.end method

.method private isTrialPeriodExpired()Z
    .locals 1

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    return v0
.end method

.method private postBackgroundCheckPackageUpdate()V
    .locals 4

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkPackageUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1824
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkPackageUpdateRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1826
    :cond_0
    return-void
.end method

.method private postDelayCheckLanguageUpdateMessage()V
    .locals 5

    .prologue
    const/16 v4, 0x77

    .line 1449
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1450
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v1, v1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v1, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    check-cast v0, Lcom/nuance/swype/input/BilingualLanguage;

    .line 1452
    .local v0, "bi":Lcom/nuance/swype/input/BilingualLanguage;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1467
    .end local v0    # "bi":Lcom/nuance/swype/input/BilingualLanguage;
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1463
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1464
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1466
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private resumeEmojiInput()V
    .locals 1

    .prologue
    .line 3552
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3553
    .local v0, "currentInputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 3554
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->resumeEmojiInput()V

    .line 3556
    :cond_0
    return-void
.end method

.method private scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V
    .locals 10
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "maxItemToScan"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 3985
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scan() itemsToScan = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3987
    const/4 v6, 0x0

    .line 3988
    .local v6, "itemScanned":I
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->setScanContext(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 3990
    :goto_0
    if-ge v6, p2, :cond_3

    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    move-result-object v8

    .local v8, "words":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 3991
    add-int/lit8 v6, v6, 0x1

    .line 3993
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3994
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3995
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

    .line 3996
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    aget-object v1, v7, v4

    iget v2, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordQuality:I

    iget-boolean v3, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    aget-object v5, v7, v9

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmImplicitScanBuf(Ljava/lang/String;IZZLjava/lang/String;)Z

    .line 3999
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4000
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scan mls over"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 4001
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImportedOver(Z)V

    .line 4007
    .end local v7    # "names":[Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scan() words = "

    invoke-virtual {v0, v1, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 4004
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v2, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordQuality:I

    iget-boolean v3, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->sentenceBasedLearning:Z

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmImplicitScanBuf(Ljava/lang/String;IZZLjava/lang/String;)Z

    goto :goto_1

    .line 4009
    .end local v8    # "words":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "scan() itemScanned = "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4010
    return-void
.end method

.method private setCurrentInputViewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "newView"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 428
    return-void
.end method

.method private setInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 5
    .param p1, "inputLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 992
    if-nez p1, :cond_0

    .line 994
    sget-object v3, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "IME::setInputLanguage(): inputLanguage is null"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 995
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getDefaultAlphabeticInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object p1

    .line 996
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 998
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    move v0, v2

    .line 999
    .local v0, "langChanged":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1000
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 1003
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_6

    .line 1004
    :cond_3
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    .line 1009
    :goto_1
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1010
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/IMEApplication;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1011
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 1012
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_4

    .line 1013
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->updateCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1015
    :cond_4
    return v0

    .end local v0    # "langChanged":Z
    :cond_5
    move v0, v1

    .line 998
    goto :goto_0

    .line 1006
    .restart local v0    # "langChanged":Z
    :cond_6
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    goto :goto_1
.end method

.method public static setLastActiveWord(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 374
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 378
    :cond_0
    if-eqz p0, :cond_1

    .line 379
    sget-object v0, Lcom/nuance/swype/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1
    return-void
.end method

.method public static setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 0
    .param p0, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 411
    sput-object p0, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 412
    return-void
.end method

.method private setRunningState(I)V
    .locals 4
    .param p1, "runningStage"    # I

    .prologue
    .line 479
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    .line 480
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->setRunningState(I)V

    .line 483
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    sget v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_UI_HIDDEN:I

    if-ne p1, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->pendingHibernateState:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    :cond_0
    return-void
.end method

.method private showFirstTimeMessages()V
    .locals 4

    .prologue
    .line 3320
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->upgrade:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLicenseValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3322
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3323
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showNonLicenseAppDialog()V

    .line 3352
    :cond_0
    :goto_0
    return-void

    .line 3327
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-nez v1, :cond_2

    .line 3328
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 3330
    :cond_2
    iget v1, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 3333
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    .line 3334
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->checkAndShowTrialExpired(Landroid/os/IBinder;)V

    .line 3338
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->networkNotificationHasBeenShown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    if-nez v1, :cond_0

    .line 3340
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "handwriting_full_screen"

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3342
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 3343
    .local v0, "prefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3344
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 3345
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 3346
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3350
    .end local v0    # "prefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->networkNotificationHasBeenShown:Z

    goto :goto_0
.end method

.method private showNonLicenseAppDialog()V
    .locals 6

    .prologue
    .line 3635
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3636
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3639
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3640
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->notification_default_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3646
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 3648
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->unlicensed_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3649
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 3651
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 3653
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3655
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3656
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3658
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3659
    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3662
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3663
    return-void
.end method

.method private showStartupActivity()Z
    .locals 3

    .prologue
    .line 3794
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3795
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-nez v1, :cond_0

    .line 3796
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 3799
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->canShow(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3800
    const/4 v0, 0x0

    .line 3802
    .local v0, "needToClearPreviousTask":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3803
    const/4 v0, 0x1

    .line 3805
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->showStartup(Z)Z

    move-result v1

    .line 3809
    .end local v0    # "needToClearPreviousTask":Z
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showStartupMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x6d

    .line 3787
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3788
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3789
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3791
    :cond_0
    return-void
.end method

.method private startApp(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3741
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nuance/swype/input/IME;->startApp(Ljava/lang/String;Landroid/net/Uri;ILcom/nuance/swype/input/IME$IntentDecorator;)Z

    move-result v0

    return v0
.end method

.method private startApp(Ljava/lang/String;Landroid/net/Uri;ILcom/nuance/swype/input/IME$IntentDecorator;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "flags"    # I
    .param p4, "decorator"    # Lcom/nuance/swype/input/IME$IntentDecorator;

    .prologue
    const/4 v5, 0x0

    .line 3745
    if-nez p1, :cond_1

    .line 3779
    :cond_0
    :goto_0
    return v5

    .line 3752
    :cond_1
    if-nez p2, :cond_4

    .line 3753
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3754
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3755
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 3762
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3763
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3765
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3766
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3767
    if-eqz p4, :cond_3

    .line 3768
    invoke-interface {p4, v3}, Lcom/nuance/swype/input/IME$IntentDecorator;->decorate(Landroid/content/Intent;)V

    .line 3771
    :cond_3
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 3772
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->hideWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3776
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 3757
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3758
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1

    .line 3773
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 3774
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v5, p1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private startPendingScanning()V
    .locals 7

    .prologue
    .line 3898
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getNewWordBuckets()[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 3899
    .local v0, "buckets":[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 3900
    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->startDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 3899
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3904
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 3905
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string v5, "mls_hot_words_left_num"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3906
    .local v3, "leftNum":I
    sget-boolean v5, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getMlsHotWordsImported()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isImportedMlsHotWordsOver()Z

    move-result v5

    if-nez v5, :cond_1

    if-lez v3, :cond_1

    .line 3908
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 3909
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v5

    .line 3912
    invoke-virtual {v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3914
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v5

    invoke-virtual {v5, p0, v3}, Lcom/nuance/swype/input/ThemeManager;->importMls(Landroid/content/Context;I)V

    .line 3917
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_1
    return-void
.end method

.method private toggleToAndroidKeyboard()V
    .locals 4

    .prologue
    .line 3860
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3862
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    iget-object v2, v2, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->myToken:Landroid/os/IBinder;

    const-string v3, "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3868
    :goto_0
    return-void

    .line 3863
    :catch_0
    move-exception v0

    .line 3866
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addLanguageToActiveDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 3300
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3307
    :cond_0
    :goto_0
    return-void

    .line 3303
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/nuance/swype/input/LanguageListAdapter;

    if-eqz v1, :cond_0

    .line 3304
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 3305
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/LanguageListAdapter;->addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_0
.end method

.method public attachDialog(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 3310
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3311
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3312
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3313
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3314
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3315
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3316
    return-void
.end method

.method public checkBuildValid()V
    .locals 1

    .prologue
    .line 3614
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLicenseValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isTrialPeriodExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->mValidBulid:Z

    .line 3615
    return-void

    .line 3614
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLanguageUpdates(IZ)V
    .locals 1
    .param p1, "langId"    # I
    .param p2, "add"    # Z

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 1471
    if-eqz p2, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->checkedLanguageUpdateList:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0
.end method

.method cleanupAccessibility()V
    .locals 2

    .prologue
    .line 3126
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3127
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3128
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 3129
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->cleanupAccessibility()V

    .line 3132
    .end local v0    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    return-void
.end method

.method public clearSavedKeyboardState()V
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME$KeyboardState;->clear()V

    .line 1639
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 3198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 3199
    return-void
.end method

.method closeDialogs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3092
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->dimissTip()V

    .line 3094
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3095
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    if-eqz v1, :cond_0

    .line 3096
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;->dismiss()V

    .line 3097
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mShowFirstTimeStartupMessages:Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    .line 3100
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3101
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3102
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 3105
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3106
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3107
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3110
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v1}, Lcom/nuance/swype/widget/PopupLanguageList;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3111
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v1}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 3114
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3115
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_4

    .line 3116
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->closeDialogs()V

    .line 3118
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3120
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3121
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 3123
    :cond_5
    return-void
.end method

.method closeDictationLanguageMenu()V
    .locals 1

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3155
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3158
    :cond_0
    return-void
.end method

.method public closeLanguageList()V
    .locals 1

    .prologue
    .line 4196
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4197
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 4199
    :cond_0
    return-void
.end method

.method protected createInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1089
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "createInputContainerView()"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1090
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1092
    sget v2, Lcom/nuance/swype/input/R$layout;->input_container_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/InputContainerView;

    .line 1094
    .local v0, "out":Lcom/nuance/swype/input/view/InputContainerView;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 1095
    return-object v0
.end method

.method public createInputViewFor(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "inputViewName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 751
    sget-object v6, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 753
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v6, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->inflateKeyboardInput(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 754
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v6, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    .line 756
    .local v4, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 757
    if-eq v5, v4, :cond_0

    .line 758
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 761
    :cond_0
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v1

    .line 762
    .local v1, "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    if-eqz v1, :cond_1

    .line 763
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v7

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/input/IMEApplication;->setInputCategory(II)V

    .line 767
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getGestureManager()Lcom/nuance/swype/input/GestureManager;

    move-result-object v2

    .line 768
    .local v2, "gestureManager":Lcom/nuance/swype/input/GestureManager;
    invoke-virtual {v2}, Lcom/nuance/swype/input/GestureManager;->loadGestures()Z

    .line 769
    invoke-virtual {v2}, Lcom/nuance/swype/input/GestureManager;->getGestures()Ljava/util/List;

    move-result-object v3

    .line 770
    .local v3, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->loadGestures(Ljava/util/List;)Z

    .line 773
    .end local v2    # "gestureManager":Lcom/nuance/swype/input/GestureManager;
    .end local v3    # "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 775
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 776
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->updateExpirationPeriod()V

    .line 778
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->checkBuildValid()V

    .line 782
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isRecaptureEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 787
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/RecaptureHandler;->isUsingInputView(Lcom/nuance/swype/input/InputView;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 790
    :cond_3
    new-instance v6, Lcom/nuance/swype/input/RecaptureHandler;

    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doSelectOnDoubleTap()Z

    move-result v7

    invoke-direct {v6, p0, v4, v7}, Lcom/nuance/swype/input/RecaptureHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Z)V

    iput-object v6, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 791
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->createTapHandlers(Lcom/nuance/swype/input/InputView;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/IME;->createTapDetector(Ljava/util/List;)Lcom/nuance/swype/input/AbstractTapDetector;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 800
    :cond_4
    :goto_0
    sget-object v6, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 803
    return-object v5

    .line 794
    :cond_5
    iput-object v9, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 795
    iput-object v9, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 796
    iput-object v9, p0, Lcom/nuance/swype/input/IME;->tapFilter:Lcom/nuance/swype/input/tweaks/TapFilter;

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
    .line 431
    .local p1, "tapHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;>;"
    invoke-static {p1}, Lcom/nuance/swype/input/tweaks/TapFilter;->registerFilter(Ljava/util/List;)Lcom/nuance/swype/input/tweaks/TapFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->tapFilter:Lcom/nuance/swype/input/tweaks/TapFilter;

    .line 432
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
    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    return-object v0
.end method

.method protected cursorUpdateReceivedFromSingleTap()Z
    .locals 1

    .prologue
    .line 4447
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
    .line 4353
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractTapDetector;->tapDetected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V
    .locals 10
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .prologue
    const/4 v9, 0x0

    .line 3693
    if-nez p1, :cond_1

    .line 3734
    :cond_0
    :goto_0
    return-void

    .line 3697
    :cond_1
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {p1, v6, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 3698
    .local v2, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3700
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    .line 3709
    .local v1, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v7, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3710
    .local v3, "searchStart":I
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3711
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3712
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 3716
    :cond_3
    move v5, v3

    .local v5, "wordStart":I
    :goto_1
    if-lez v5, :cond_4

    .line 3718
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3721
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3722
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3726
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v4

    .line 3727
    .local v4, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v4, :cond_5

    .line 3728
    invoke-virtual {v4}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v6

    iget-object v7, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v8, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordDeletedWord(Ljava/lang/String;)V

    .line 3732
    :cond_5
    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method public final detectAccessibilityChange()V
    .locals 2

    .prologue
    .line 4119
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->lastAccessibility:Z

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    .line 4122
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->lastAccessibility:Z

    .line 4124
    :cond_0
    return-void
.end method

.method public dismissLangPopupMenu()V
    .locals 1

    .prologue
    .line 2518
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2519
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 2521
    :cond_0
    return-void
.end method

.method protected final doEnableHardwaredAcceleration()V
    .locals 3

    .prologue
    .line 319
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/UserPreferences;->isHardwareAccelerationEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    .line 320
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-static {p0}, Lcom/nuance/android/compat/InputMethodServiceCompat;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    .line 323
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IME(): hardware accel enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nuance/swype/input/IME;->hwAccelEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public dragLock(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 4366
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 4367
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->dragLock(Z)V

    .line 4369
    :cond_0
    return-void
.end method

.method public enableHwAccel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isHardwareAccelerationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareAccel(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 334
    :cond_0
    return-void
.end method

.method public getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4083
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 4084
    .local v1, "imeApplication":Lcom/nuance/swype/input/IMEApplication;
    if-nez v1, :cond_1

    .line 4093
    :cond_0
    :goto_0
    return-object v2

    .line 4088
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4089
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v0, :cond_0

    .line 4093
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v2

    goto :goto_0
.end method

.method getAlphaInputViewName(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;
    .locals 1
    .param p1, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1020
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Alpha.HandWriting"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Alpha.KeyboardInput"

    goto :goto_0
.end method

.method public getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    return-object v0
.end method

.method public getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 680
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 684
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
    .line 4187
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4188
    .local v0, "winOffset":[I
    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputView;->getLocationInWindow([I)V

    .line 4189
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4190
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4191
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 4192
    return v1
.end method

.method public getCandidatesViewCreate()Landroid/view/View;
    .locals 4

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "cv":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 813
    .local v1, "iv":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v0

    .line 815
    if-nez v0, :cond_1

    .line 816
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    .line 817
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->addCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 821
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->enableHwAccel(Landroid/view/View;)V

    .line 824
    :cond_1
    return-object v0
.end method

.method public getCurrentActiveCoreId()I
    .locals 3

    .prologue
    .line 4036
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v2, :cond_0

    .line 4037
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 4038
    .local v1, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 4039
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    .line 4040
    .local v0, "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    if-eqz v0, :cond_0

    .line 4041
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getInputCoreCategory()I

    move-result v2

    .line 4045
    .end local v0    # "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .end local v1    # "view":Lcom/nuance/swype/input/InputView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 4

    .prologue
    .line 657
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 658
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 659
    const/4 v0, 0x0

    .line 675
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-object v0

    .line 665
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-eq v0, v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    if-nez v1, :cond_2

    .line 670
    new-instance v2, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection$ExtractViewState;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;Landroid/text/ClipboardManager;)V

    iput-object v2, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .line 675
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    goto :goto_0

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->appSpecificInputConnection:Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setTarget(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;)V

    goto :goto_1
.end method

.method public getCurrentInputView()Lcom/nuance/swype/input/InputView;
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v0

    return-object v0
.end method

.method public getEditState()Lcom/nuance/swype/input/EditState;
    .locals 3

    .prologue
    .line 441
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    if-nez v2, :cond_0

    .line 442
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 443
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->isStatisticsCollectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    new-instance v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-direct {v2, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 449
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 450
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 451
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->setEditState(Lcom/nuance/swype/input/EditState;)V

    .line 454
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    return-object v2

    .line 446
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
    .line 4079
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->getExtendedEventForView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 4075
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    return-object v0
.end method

.method public getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    return-object v0
.end method

.method public getInputMethods()Lcom/nuance/swype/input/InputMethods;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_0

    .line 981
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    return-object v0
.end method

.method public getSoftInputWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 3577
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1972
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 362
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
    .line 3190
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDialogs()V

    .line 3192
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3194
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3195
    return-void
.end method

.method public hasCurrentActiveCore()Z
    .locals 2

    .prologue
    .line 4053
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_0

    .line 4054
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4055
    .local v0, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 4056
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->hasInputContext()Z

    move-result v1

    .line 4059
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
    .line 3920
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getNewWordBuckets()[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 3921
    .local v0, "buckets":[Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3922
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3923
    const/4 v2, 0x1

    .line 3926
    :goto_1
    return v2

    .line 3921
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3926
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method hideDictationLanguageMenu()V
    .locals 1

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    if-eqz v0, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3280
    :cond_0
    return-void
.end method

.method public hideWindow()V
    .locals 3

    .prologue
    .line 1795
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1796
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 1797
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->handleClose()V

    .line 1798
    invoke-static {p0}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 1802
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 1803
    const-string v1, "Session Start"

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1804
    invoke-static {p0}, Lcom/nuance/android/compat/LocalyticsCompat;->upload(Landroid/content/Context;)V

    .line 1806
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1807
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->hasCheckedPackageUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1809
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->postBackgroundCheckPackageUpdate()V

    .line 1810
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setCheckPackageUpdate(Z)V

    .line 1812
    :cond_1
    return-void
.end method

.method protected initInputContainerView(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "candidatesView"    # Landroid/view/View;
    .param p2, "inputView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1103
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-nez v5, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->createInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    .line 1106
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    .line 1107
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

    .line 1108
    .local v1, "miniFloatSupported":Z
    invoke-static {}, Lcom/nuance/android/compat/InputMethodServiceCompat;->isTouchableRegionSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v2, v5, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isScreenPhablet()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v0, v4

    .line 1113
    .local v0, "forceUseWing":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v5, p2, p1, v0}, Lcom/nuance/swype/input/view/InputContainerView;->init(Landroid/view/View;Landroid/view/View;Z)V

    .line 1114
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/view/InputContainerView;->setFullScreenMode(Z)V

    .line 1115
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/view/InputContainerView;->showInputArea(Z)V

    .line 1116
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v5, v4, v3}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1117
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1119
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1122
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/view/InputContainerView;->setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1123
    return-void

    .end local v0    # "forceUseWing":Z
    :cond_5
    move v0, v3

    .line 1108
    goto :goto_0

    .restart local v0    # "forceUseWing":Z
    :cond_6
    move v5, v3

    .line 1115
    goto :goto_1
.end method

.method protected isChangingOrientation()Z
    .locals 1

    .prologue
    .line 4443
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    return v0
.end method

.method protected isEditorComposingText()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 705
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 706
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->supportsGetTextWithStyles()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 707
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isTraceComposingText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    const/4 v2, 0x1

    .line 714
    :cond_0
    :goto_0
    return v2

    .line 711
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v2

    goto :goto_0

    .line 714
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v2

    goto :goto_0
.end method

.method public isExploreByTouchOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4097
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4100
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isAccessibilitySupportEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isHardKeyboardActive()Z
    .locals 1

    .prologue
    .line 4298
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
    .line 4294
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isHardkeyboardEnabled:Z

    return v0
.end method

.method public isImeInUse()Z
    .locals 1

    .prologue
    .line 3882
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    return v0
.end method

.method public isKeySoundAllowed()Z
    .locals 1

    .prologue
    .line 3873
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

.method public isLVLLicenseValid()Z
    .locals 1

    .prologue
    .line 4067
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    if-nez v0, :cond_0

    .line 4068
    const/4 v0, 0x1

    .line 4070
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/LVLLicenseManager;->isLVLLicenseValid()Z

    move-result v0

    goto :goto_0
.end method

.method public isLangPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 2514
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
    .locals 1

    .prologue
    .line 3626
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/License;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    invoke-virtual {v0}, Lcom/nuance/swype/input/License;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3628
    :cond_0
    const/4 v0, 0x0

    .line 3630
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeedRefreshKeyboard()Z
    .locals 1

    .prologue
    .line 2671
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->needRrefreshKeyboard:Z

    return v0
.end method

.method public isTalkBackOn()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 4323
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 4324
    .local v2, "imeApplication":Lcom/nuance/swype/input/IMEApplication;
    if-nez v2, :cond_1

    .line 4338
    :cond_0
    :goto_0
    return v3

    .line 4328
    :cond_1
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 4329
    .local v1, "appPref":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v1, :cond_0

    .line 4333
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v0

    .line 4335
    .local v0, "ai":Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isTalkBackOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4336
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isUsingSpellCheckerService()Z
    .locals 1

    .prologue
    .line 4349
    const/4 v0, 0x0

    return v0
.end method

.method public isValidBuild()Z
    .locals 1

    .prologue
    .line 3618
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->mValidBulid:Z

    return v0
.end method

.method public isVibrateAllowed()Z
    .locals 1

    .prologue
    .line 3878
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
    .line 3203
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3204
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3205
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    const-string v1, "swypekey"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordEntryPoints(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showSettings()V

    .line 3208
    .end local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    return-void
.end method

.method public loadSettings()V
    .locals 2

    .prologue
    .line 3212
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 3213
    .local v0, "settings":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isVibrateOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->vibrateOn:Z

    .line 3214
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isKeySoundOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->keySoundOn:Z

    .line 3215
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 9
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 1982
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1984
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1985
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2034
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1993
    .local v1, "decor":Landroid/view/View;
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->isFullAppAreaMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1996
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1997
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-static {p1, v3}, Lcom/nuance/android/compat/InputMethodServiceCompat;->setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z

    .line 1998
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2000
    sget-object v4, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->NONE:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    if-ne v4, v5, :cond_2

    .line 2002
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2003
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_0

    .line 2005
    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2006
    sget-object v4, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->ALL_INSETS:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    if-ne v4, v5, :cond_3

    .line 2008
    iget v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_0

    .line 2011
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_0

    .line 2016
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 2017
    .local v2, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v2, :cond_5

    .line 2018
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->updateEmojiKeyboardPosition()V

    .line 2021
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->posTemp:[I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleTopInWindow([I)V

    .line 2022
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->posTemp:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2023
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2024
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2029
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2030
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mTouchableRegionRect:Landroid/graphics/Rect;

    invoke-static {p1, v4}, Lcom/nuance/android/compat/InputMethodServiceCompat;->setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 2026
    :cond_6
    iget v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v4, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 3
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1946
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->startupActivityShown:Z

    if-eqz v1, :cond_0

    .line 1948
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1949
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1950
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1951
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->startupActivityShown:Z

    .line 1956
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 1953
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 1954
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->isStartupActivityShown:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 536
    sget-object v3, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 538
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 539
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    new-instance v3, Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/KeyboardInputInflater;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    .line 540
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/IMEApplication;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 542
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 543
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isUpgrade()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->upgrade:Z

    .line 545
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 546
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->doEnableHardwaredAcceleration()V

    .line 548
    sget-object v3, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "%s version:%s BuildType:%s BuildDate:%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

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

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 552
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 554
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 556
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 557
    .local v2, "window":Landroid/view/Window;
    new-instance v3, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;-><init>(Landroid/view/Window$Callback;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    .line 558
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->extendedPointTracker:Lcom/nuance/swype/input/accessibility/ExtendedPointTracker;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 560
    iput-boolean v8, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 561
    iput-boolean v8, p0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    .line 563
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->registerReceiverMessages()V

    .line 565
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 566
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sput-object v3, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 568
    new-instance v3, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 569
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/UserPreferences;->isHardwareKeyboardEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->isHardkeyboardEnabled:Z

    .line 570
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/SystemState;->openWatch(Ljava/lang/Object;)V

    .line 571
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v3

    new-instance v4, Lcom/nuance/swype/input/IME$2;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/IME$2;-><init>(Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/SystemState;->setCallStartAction(Ljava/lang/Runnable;)V

    .line 578
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->registerObserver(Landroid/content/Context;)V

    .line 579
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->addListener(Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;)V

    .line 581
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 585
    :cond_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->createPortraitCandidatesViewFilter()Lcom/nuance/swype/input/Whitelist;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

    .line 586
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$integer;->drag_inset_adjust_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;->fromInt(I)Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->dragInsetAdjustMode:Lcom/nuance/swype/input/IME$DragKeyboardInsetAdjustMode;

    .line 588
    sget-object v3, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 589
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 962
    new-instance v0, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 965
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/IME$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    .line 926
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 927
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandler;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 956
    :goto_0
    return-object v1

    .line 929
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 933
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .line 934
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->syncWithDeviceAccessiblityState()V

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v1, :cond_2

    .line 939
    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 941
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 943
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 944
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->getAlphaInputViewName(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 946
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->createInputViewFor(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 947
    .local v0, "inputAreaView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->setCurrentInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 948
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    if-eqz v1, :cond_3

    .line 949
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mAccessibilityInfo:Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->updateCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 952
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/IME;->initInputContainerView(Landroid/view/View;Landroid/view/View;)V

    .line 954
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 956
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 593
    sget-object v4, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 595
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 596
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 597
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getMlsHotWordsImported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isImportedMlsHotWordsOver()Z

    move-result v4

    if-nez v4, :cond_0

    .line 599
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 601
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 602
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "scanning mls bucket interrupted"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 603
    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImportedOver(Z)V

    .line 604
    const-string v4, "mls_hot_words_left_num"

    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 611
    .end local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    :cond_0
    :goto_0
    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/UserPreferences;->setCheckPackageUpdate(Z)V

    .line 612
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 614
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->removeListener(Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;)V

    .line 615
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->unregisterObserver()V

    .line 616
    invoke-static {v6}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 617
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sput-object v4, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 618
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 619
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 620
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->destroySyncDataProviderManager()V

    .line 623
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->destroySpeechWrapperInstance()V

    .line 625
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nuance/swype/input/SystemState;->closeWatch(Ljava/lang/Object;)V

    .line 627
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 628
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEHandler;->onDestroy()V

    .line 630
    :cond_1
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->releaseInstances()V

    .line 631
    iput-object v6, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 633
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->close()V

    .line 634
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    if-eqz v4, :cond_2

    .line 635
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    iput-object v6, v4, Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;->myToken:Landroid/os/IBinder;

    .line 636
    iput-object v6, p0, Lcom/nuance/swype/input/IME;->myInputMethodImpl:Lcom/nuance/swype/input/IME$SwypeInputMethodImpl;

    .line 638
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    if-eqz v4, :cond_3

    .line 639
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/LVLLicenseManager;->stopLVLLicenseCheck()V

    .line 641
    :cond_3
    invoke-static {}, Lcom/nuance/swype/input/KeyboardStyle;->recycleDrawable()V

    .line 642
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 643
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_4

    .line 644
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearExtractedTextCache()V

    .line 648
    :cond_4
    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/IMEApplication;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 649
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 651
    sget-object v4, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 652
    return-void

    .line 606
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    :cond_5
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "scanning mls bucket over"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImportedOver(Z)V

    .line 608
    const-string v4, "mls_hot_words_left_num"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1837
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 1838
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1841
    :cond_0
    return-void
.end method

.method public onDoublePress(I)V
    .locals 0
    .param p1, "PrimaryCode"    # I

    .prologue
    .line 2920
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 2922
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .prologue
    .line 1964
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported(I)Z

    move-result v0

    .line 1966
    .local v0, "isMiniFloatingKeyboardSupported":Z
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    .line 1967
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

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

    .prologue
    .line 1925
    const/4 v0, 0x1

    return v0
.end method

.method public onExploreByTouchChanged(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4432
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4433
    .local v0, "iv":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4434
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->addCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 4436
    :cond_0
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AbstractTapDetector;->onExtractedTextClicked()V

    .line 1848
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1644
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1645
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1646
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1647
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1649
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->hasActiveHardKeyIMEHandlerInstance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEHandler;->onFinishInput()V

    .line 1653
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1654
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    .line 1655
    .local v0, "emojiInputController":Lcom/nuance/swype/input/emoji/EmojiInputController;
    if-eqz v0, :cond_1

    .line 1656
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hide()V

    .line 1661
    .end local v0    # "emojiInputController":Lcom/nuance/swype/input/emoji/EmojiInputController;
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1662
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1663
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEHandler;->onFinishInput()V

    .line 1666
    :cond_2
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1667
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 6
    .param p1, "finishingInput"    # Z

    .prologue
    const-wide/16 v4, 0x32

    const/16 v2, 0x7b

    .line 1580
    if-eqz p1, :cond_0

    .line 1584
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/IME;->doFinishInputView(ZZ)V

    .line 1597
    :goto_0
    return-void

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1592
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1593
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1594
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onFinishInputViewProjectOverride(ZLcom/nuance/swype/input/InputView;Lcom/nuance/swype/input/IME$KeyboardState;)V
    .locals 1
    .param p1, "finishingInput"    # Z
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "savedState"    # Lcom/nuance/swype/input/IME$KeyboardState;

    .prologue
    .line 1552
    sget-object v0, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1556
    iget-object v0, p2, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p2, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->resetLayerState()V

    .line 1561
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 1570
    if-eqz p1, :cond_1

    .line 1571
    invoke-virtual {p3}, Lcom/nuance/swype/input/IME$KeyboardState;->clear()V

    .line 1575
    :goto_0
    sget-object v0, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1576
    return-void

    .line 1573
    :cond_1
    invoke-virtual {p3, p2}, Lcom/nuance/swype/input/IME$KeyboardState;->save(Lcom/nuance/swype/input/InputView;)V

    goto :goto_0
.end method

.method public onFlushActiveWord()V
    .locals 3

    .prologue
    .line 4358
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4359
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 4360
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cursor onClearActiveWord"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 4361
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->selectDefaultCompostingText()V

    .line 4363
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 3574
    return-void
.end method

.method public onHardKeyLangPopupMenu(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/widget/PopupLanguageList;->onHardKeyUp$4765ad2(I)Z

    .line 2526
    const/4 v0, 0x1

    .line 2528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHardwareCharKey(I[I)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 2172
    return-void
.end method

.method public onInitializeInterface()V
    .locals 2

    .prologue
    .line 901
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 902
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 906
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 908
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->onInitializeInterfaceCommon()V

    .line 911
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandler;->onInitializeInterface()V

    .line 914
    :cond_0
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isGooglePlayBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isLVLEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 915
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    if-nez v1, :cond_1

    .line 916
    new-instance v1, Lcom/nuance/swype/input/LVLLicenseManager;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/LVLLicenseManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mLicenseManager:Lcom/nuance/swype/input/LVLLicenseManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/LVLLicenseManager;->runLVLLicenseCheck()V

    .line 920
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 921
    return-void
.end method

.method public onInitializeInterfaceCommon()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 841
    sget-object v6, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 843
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 844
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 845
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 846
    .local v3, "inputView":Lcom/nuance/swype/input/InputView;
    const/4 v4, 0x0

    .line 847
    .local v4, "isLocaleChanged":Z
    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    .line 849
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    invoke-virtual {v3, v6, v0, v9}, Lcom/nuance/swype/input/InputView;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputConnection;)V

    .line 853
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_1

    .line 854
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 855
    .local v1, "diffMask":I
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_7

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    .line 856
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_8

    move v4, v7

    .line 858
    .end local v1    # "diffMask":I
    :cond_1
    :goto_1
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v6, p0, Lcom/nuance/swype/input/IME;->lastConfiguration:Landroid/content/res/Configuration;

    .line 860
    iput-boolean v8, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    .line 861
    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    .line 863
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    .line 868
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v6

    iput-boolean v6, p0, Lcom/nuance/swype/input/IME;->ignoreFirstUpdateSelectionPostOrientationChange:Z

    .line 871
    :cond_3
    if-eqz v4, :cond_4

    .line 872
    iput-object v10, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    .line 876
    :cond_4
    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    .line 877
    :goto_2
    if-nez v7, :cond_5

    .line 879
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    .line 880
    .local v5, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v5, :cond_5

    .line 881
    sget-object v6, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "onInitializeInterfaceCommon(): cancel speech..."

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 882
    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 886
    .end local v5    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 887
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 888
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->runLicenseCheck()V

    .line 889
    invoke-static {v10}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 890
    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v6}, Lcom/nuance/swype/input/IME;->setLastShownCandidatesSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 892
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v6, :cond_6

    .line 893
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v6}, Lcom/nuance/swype/input/AbstractTapDetector;->onInitializeInterface()V

    .line 896
    :cond_6
    sget-object v6, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 897
    return-void

    .restart local v1    # "diffMask":I
    :cond_7
    move v6, v8

    .line 855
    goto :goto_0

    :cond_8
    move v4, v8

    .line 856
    goto :goto_1

    .end local v1    # "diffMask":I
    :cond_9
    move v7, v8

    .line 876
    goto :goto_2
.end method

.method public onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .locals 29
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 2177
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v5, :cond_1

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2186
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xb79

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    const/16 v5, 0x193f

    move/from16 v0, p2

    if-eq v0, v5, :cond_0

    .line 2192
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    .line 2194
    .local v4, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v4, :cond_0

    .line 2198
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->shouldDisableInput(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 2204
    .local v26, "when":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mLastKey:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_e

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nuance/swype/input/IME;->mLastKeyTime:J

    const-wide/16 v8, 0x2ee

    add-long/2addr v6, v8

    cmp-long v5, v26, v6

    if-gez v5, :cond_e

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mQuickPressed:Z

    .line 2205
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/IME;->mLastKeyTime:J

    .line 2206
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mLastKey:I

    move/from16 v0, p2

    if-eq v0, v5, :cond_3

    .line 2207
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    .line 2209
    :cond_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/IME;->mLastKey:I

    .line 2211
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v15

    .line 2214
    .local v15, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
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

    .line 2218
    :cond_4
    if-eqz v15, :cond_5

    .line 2219
    invoke-virtual {v15}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2222
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    if-nez v5, :cond_6

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    .line 2227
    :cond_6
    sparse-switch p2, :sswitch_data_0

    .line 2465
    :goto_2
    if-eqz v15, :cond_b

    .line 2468
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2470
    const/4 v14, 0x0

    .line 2471
    .local v14, "handled":Z
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v16

    .line 2472
    .local v16, "imeHandler":Lcom/nuance/swype/input/IMEHandler;
    if-eqz v16, :cond_7

    .line 2473
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/IMEHandler;->onKey(Landroid/graphics/Point;I[I)Z

    move-result v14

    .line 2476
    :cond_7
    if-ltz p2, :cond_b

    if-nez v14, :cond_b

    .line 2477
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isPopupKeyboardShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0xa

    move/from16 v0, p2

    if-eq v0, v5, :cond_9

    .line 2482
    :cond_8
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->reconstructWord()V

    .line 2483
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/IME;->handleBackspace(I)V

    .line 2485
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v5, :cond_a

    .line 2486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    move/from16 v0, p2

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/RecaptureHandler;->onCharKey(C)V

    .line 2488
    :cond_a
    if-eqz p4, :cond_1b

    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/KeyboardManager;->supportsTapCoordinates(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v23

    .line 2490
    .local v23, "supportsTapCoords":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2491
    if-eqz v23, :cond_1c

    move-object/from16 v5, p1

    :goto_4
    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 2502
    .end local v14    # "handled":Z
    .end local v16    # "imeHandler":Lcom/nuance/swype/input/IMEHandler;
    .end local v23    # "supportsTapCoords":Z
    :cond_b
    :goto_5
    if-eqz v15, :cond_c

    .line 2503
    invoke-virtual {v15}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2506
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isLongMessageField()Z

    .line 2510
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/nuance/swype/input/InputView;->handlePostTap(Landroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 2204
    .end local v15    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2229
    .restart local v15    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_5

    .line 2233
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->close()V

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->launchSettings()V

    goto :goto_5

    .line 2238
    :sswitch_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/IME;->handleBackspace(I)V

    goto :goto_5

    .line 2242
    :sswitch_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2244
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterResize()V

    goto :goto_5

    .line 2255
    :sswitch_4
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto :goto_5

    .line 2262
    :sswitch_5
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->handleUniversalKeyboardResize(I)V

    .line 2263
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2264
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto :goto_5

    .line 2269
    :sswitch_6
    const/4 v11, 0x0

    .line 2270
    .local v11, "currentWord":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentDefaultWord()Ljava/lang/CharSequence;

    move-result-object v12

    .line 2271
    .local v12, "defaultWord":Ljava/lang/CharSequence;
    if-eqz v4, :cond_f

    if-eqz v12, :cond_f

    .line 2272
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2274
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/IME;->mQuickPressed:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/nuance/swype/input/IME;->handleSpace(ZI)V

    .line 2275
    if-eqz v11, :cond_b

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_b

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2277
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2283
    .end local v11    # "currentWord":Ljava/lang/String;
    .end local v12    # "defaultWord":Ljava/lang/CharSequence;
    :sswitch_7
    const/16 v5, 0xb7c

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 2284
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setSpaceKeyAsLanguageSwitchKey()V

    goto/16 :goto_5

    .line 2289
    :sswitch_8
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v22

    .line 2290
    .local v22, "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_10

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_10

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, v22

    if-ne v0, v5, :cond_12

    .line 2292
    :cond_10
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sput-object v5, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2293
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 2298
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2301
    :cond_11
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 2305
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6a

    const-wide/16 v8, 0x32

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 2295
    :cond_12
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    sput-object v5, Lcom/nuance/swype/input/IME;->mLastShownCandidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2296
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentExactWord()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2303
    :cond_13
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->clearCurrentActiveWord()V

    goto :goto_7

    .line 2310
    .end local v22    # "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :sswitch_9
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v5

    if-nez v5, :cond_b

    .line 2313
    new-instance v20, Lcom/nuance/swype/input/IME$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/IME$5;-><init>(Lcom/nuance/swype/input/IME;)V

    .line 2319
    .local v20, "putExtras":Lcom/nuance/swype/input/IME$IntentDecorator;
    const-string v5, "com.nuance.balerion"

    const/4 v6, 0x0

    const/high16 v7, 0x14000000

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/nuance/swype/input/IME;->startApp(Ljava/lang/String;Landroid/net/Uri;ILcom/nuance/swype/input/IME$IntentDecorator;)Z

    goto/16 :goto_5

    .line 2326
    .end local v20    # "putExtras":Lcom/nuance/swype/input/IME$IntentDecorator;
    :sswitch_a
    const/16 v5, 0x193f

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/nuance/swype/input/IME;->mQuickPressed:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_5

    .line 2330
    :sswitch_b
    const/16 v5, 0xfea

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/nuance/swype/input/IME;->mQuickPressed:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_5

    .line 2336
    :sswitch_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_14

    .line 2337
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->handleKeyWithModifiers(I)V

    .line 2339
    :cond_14
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputView;->handleKeyWithModifiers(I)V

    goto/16 :goto_5

    .line 2342
    :sswitch_d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2344
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2345
    const v5, 0x1020020

    invoke-virtual {v15, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    .line 2346
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->clearCurrentActiveWord()V

    goto/16 :goto_5

    .line 2351
    :sswitch_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2352
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2353
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2354
    const v5, 0x1020021

    invoke-virtual {v15, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_5

    .line 2359
    :sswitch_f
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2360
    if-eqz v15, :cond_b

    .line 2361
    const v5, 0x1020022

    invoke-virtual {v15, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_5

    .line 2365
    :sswitch_10
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2366
    if-eqz v15, :cond_b

    .line 2367
    invoke-static {v15}, Lcom/nuance/swype/util/InputConnectionUtils;->selectAll(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V

    goto/16 :goto_5

    .line 2371
    :sswitch_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/swype/input/IME;->deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V

    goto/16 :goto_5

    .line 2374
    :sswitch_12
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2375
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    .line 2376
    .local v10, "app":Lcom/nuance/swype/input/IMEApplication;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    if-eqz v5, :cond_16

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isGestureTipSupported()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2377
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v5

    if-nez v5, :cond_15

    .line 2378
    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/ToolTips;->triggerEditGestureTip(Landroid/view/View;)V

    .line 2380
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 2382
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2384
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2387
    .end local v10    # "app":Lcom/nuance/swype/input/IMEApplication;
    :sswitch_13
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2388
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2390
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2393
    :sswitch_14
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2394
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2396
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2399
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2400
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/nuance/swype/input/InputView;->handlePostTap(Landroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 2403
    :cond_17
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2404
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 2405
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 2406
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_5

    .line 2409
    :sswitch_16
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    goto/16 :goto_5

    .line 2412
    :sswitch_17
    const/16 v5, 0x3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    goto/16 :goto_5

    .line 2415
    :sswitch_18
    if-nez v15, :cond_19

    const/16 v21, 0x0

    .line 2416
    .local v21, "selectedText":Ljava/lang/String;
    :goto_8
    const-string v13, "geo:0,0"

    .line 2417
    .local v13, "geoUrl":Ljava/lang/String;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_18

    .line 2418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2420
    :cond_18
    const-string v5, "com.google.android.apps.maps"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/nuance/swype/input/IME;->startApp(Ljava/lang/String;Landroid/net/Uri;)Z

    goto/16 :goto_5

    .line 2415
    .end local v13    # "geoUrl":Ljava/lang/String;
    .end local v21    # "selectedText":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    .line 2423
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->hideWindow()V

    goto/16 :goto_0

    .line 2427
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    const-string v6, "www"

    move-wide/from16 v0, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/nuance/swype/input/InputView;->onText(Ljava/lang/CharSequence;J)V

    .line 2428
    const-string v5, "."

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_5

    .line 2431
    :sswitch_1b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/IME;->handleLeftRightKey(II)V

    goto/16 :goto_5

    .line 2434
    :sswitch_1c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/IME;->handleLeftRightKey(II)V

    goto/16 :goto_5

    .line 2437
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getLastLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v19

    .line 2438
    .local v19, "lastLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v19, :cond_b

    .line 2439
    new-instance v5, Lcom/nuance/swype/input/LangSwitchAction;

    const/4 v6, 0x5

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v6}, Lcom/nuance/swype/input/LangSwitchAction;-><init>(Lcom/nuance/swype/input/InputMethods$Language;I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/IME;->switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;I)V

    goto/16 :goto_5

    .line 2443
    .end local v19    # "lastLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :sswitch_1e
    if-nez v15, :cond_1a

    const/16 v24, 0x0

    .line 2444
    .local v24, "term":Ljava/lang/String;
    :goto_9
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2445
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/EditState;->runSearch(Ljava/lang/String;)V

    .line 2446
    new-instance v18, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2447
    .local v18, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2448
    const-string v5, "query"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2449
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    .line 2450
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_b

    .line 2451
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 2443
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v24    # "term":Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v24

    goto :goto_9

    .line 2462
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->enterSent()V

    goto/16 :goto_2

    .line 2488
    .restart local v14    # "handled":Z
    .restart local v16    # "imeHandler":Lcom/nuance/swype/input/IMEHandler;
    :cond_1b
    const/16 v23, 0x1

    goto/16 :goto_3

    .line 2491
    .restart local v23    # "supportsTapCoords":Z
    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    .line 2494
    invoke-virtual/range {v4 .. v9}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_5

    .line 2227
    nop

    :sswitch_data_0
    .sparse-switch
        -0x75 -> :sswitch_5
        -0x74 -> :sswitch_5
        -0x73 -> :sswitch_5
        -0x72 -> :sswitch_5
        -0x71 -> :sswitch_5
        -0x70 -> :sswitch_1e
        -0x6f -> :sswitch_1d
        -0x6d -> :sswitch_1a
        -0x6c -> :sswitch_19
        -0x6b -> :sswitch_18
        -0x6a -> :sswitch_4
        -0x1a -> :sswitch_4
        -0x19 -> :sswitch_4
        0x8 -> :sswitch_2
        0xa -> :sswitch_1f
        0x15 -> :sswitch_1b
        0x16 -> :sswitch_1c
        0x20 -> :sswitch_6
        0xb50 -> :sswitch_10
        0xb51 -> :sswitch_d
        0xb52 -> :sswitch_e
        0xb53 -> :sswitch_f
        0xb54 -> :sswitch_3
        0xb78 -> :sswitch_8
        0xb79 -> :sswitch_8
        0xb7a -> :sswitch_1
        0xb7c -> :sswitch_7
        0xb7e -> :sswitch_4
        0xb7f -> :sswitch_9
        0xfbd -> :sswitch_c
        0xfcd -> :sswitch_c
        0xfdb -> :sswitch_c
        0xfdc -> :sswitch_c
        0xfe4 -> :sswitch_4
        0xfe7 -> :sswitch_16
        0xfea -> :sswitch_b
        0xfed -> :sswitch_14
        0xfee -> :sswitch_15
        0xff5 -> :sswitch_13
        0xff7 -> :sswitch_0
        0x191e -> :sswitch_17
        0x191f -> :sswitch_11
        0x192c -> :sswitch_12
        0x192d -> :sswitch_4
        0x193e -> :sswitch_4
        0x193f -> :sswitch_a
        0xaa38 -> :sswitch_4
        0xaa39 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x75

    const-wide/16 v10, 0x0

    const/16 v8, 0x74

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2044
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->keyboard:I

    if-ne v6, v5, :cond_1

    .line 2046
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 2141
    :cond_0
    :goto_0
    return v4

    .line 2048
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x4

    if-eq p1, v6, :cond_2

    const/16 v6, 0x52

    if-eq p1, v6, :cond_2

    const/16 v6, 0x1b

    if-eq p1, v6, :cond_2

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_2

    const/16 v6, 0x19

    if-eq p1, v6, :cond_2

    const/16 v6, 0xa4

    if-eq p1, v6, :cond_2

    const/16 v6, 0x18

    if-eq p1, v6, :cond_2

    const/16 v6, 0x54

    if-eq p1, v6, :cond_2

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    const/16 v6, 0xdb

    if-le p1, v6, :cond_3

    .line 2054
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 2057
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 2059
    .local v0, "hardKeyHandler":Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 2064
    invoke-virtual {v0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2068
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 2070
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v6, :cond_7

    .line 2072
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2075
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 2076
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2077
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HKB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2079
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HKB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2081
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->language_not_supported:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2085
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2087
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isInputModeSupportedByHardKeyboard()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2088
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2091
    :cond_6
    const-string v6, "SETTINGS_HKB"

    invoke-virtual {v3, v6, v4}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2092
    const-string v6, "SETTINGS_HKB"

    invoke-virtual {v3, v6, v5}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2093
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->hardkeyboard_shortcut_settings:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v4}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2100
    .end local v3    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_9

    .line 2101
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2102
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2104
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 2105
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 2106
    iput-boolean v5, p0, Lcom/nuance/swype/input/IME;->isCandidateViewOpening:Z

    .line 2107
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_8

    .line 2109
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2110
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2111
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2112
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3f2

    invoke-virtual {v6, v8, p1, v7, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    move v4, v5

    .line 2116
    goto/16 :goto_0

    .line 2120
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isCandidateViewOpening:Z

    if-eqz v6, :cond_a

    .line 2121
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_a

    .line 2123
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v4, v5

    .line 2125
    goto/16 :goto_0

    .line 2129
    :cond_a
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 2130
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 2131
    goto/16 :goto_0

    .line 2134
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 2137
    .local v2, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v2, :cond_c

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    .line 2138
    goto/16 :goto_0

    .line 2141
    :cond_c
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
    .line 2037
    const/16 v0, 0x3f2

    if-ne p2, v0, :cond_0

    .line 2038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->isCandidateViewOpening:Z

    .line 2040
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/IME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2041
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2146
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_0

    .line 2148
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2166
    :goto_0
    return v0

    .line 2150
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xdb

    if-le p1, v0, :cond_2

    .line 2156
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2160
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2161
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2163
    goto :goto_0

    .line 2166
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLocaleChanged()V
    .locals 0

    .prologue
    .line 1243
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 2946
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onMultitapTimeout()V

    .line 2947
    return-void
.end method

.method public onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    if-eqz v0, :cond_0

    .line 4105
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 4107
    :cond_0
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 2925
    if-nez p1, :cond_0

    .line 2937
    :goto_0
    return-void

    .line 2929
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 2930
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    .line 2936
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    iget v1, p0, Lcom/nuance/swype/input/IME;->mRepeatedKeyCount:I

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/RecaptureHandler;->onRelease(II)V

    .line 2943
    :cond_0
    return-void
.end method

.method protected onSetCandidatesViewShown(Z)Z
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1909
    if-nez p1, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isScreenMagnificationOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1910
    const/4 p1, 0x1

    .line 1912
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->isShowCandidatesViewAllowed()Z

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
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1854
    iget-boolean v2, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    if-eqz v2, :cond_0

    .line 1855
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doStartInputInternal()V

    .line 1856
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1858
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->showStartupActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1861
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 1862
    iput-boolean v1, p0, Lcom/nuance/swype/input/IME;->startupActivityShown:Z

    move v0, v1

    .line 1881
    :cond_1
    :goto_0
    return v0

    .line 1865
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v2, :cond_3

    .line 1866
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/AbstractTapDetector;->onShowInputRequested(IZ)V

    .line 1868
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    .line 1869
    .local v0, "showWindow":Z
    if-nez v0, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    .line 1870
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1871
    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_1

    .line 1878
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 7
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1201
    sget-object v5, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1202
    iput-boolean v3, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1203
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1204
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IME;->checkKeyboardReloadForEmojiKey(Landroid/view/inputmethod/EditorInfo;)V

    .line 1205
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v5, :cond_0

    .line 1206
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v5}, Lcom/nuance/swype/input/AbstractTapDetector;->onStartInput()V

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1210
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v3, :cond_1

    iget v5, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_1
    move v2, v3

    .line 1211
    .local v2, "noHardwardKeyboard":Z
    :goto_0
    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 1212
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1213
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 1215
    .local v1, "hardKeyHandler":Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
    if-eqz v1, :cond_2

    .line 1216
    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->setIME(Lcom/nuance/swype/input/IME;)V

    .line 1217
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/nuance/swype/input/IMEHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1223
    .end local v1    # "hardKeyHandler":Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v3, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1224
    sget-object v3, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1225
    return-void

    .end local v2    # "noHardwardKeyboard":Z
    :cond_3
    move v2, v4

    .line 1210
    goto :goto_0

    .restart local v2    # "noHardwardKeyboard":Z
    :cond_4
    move v3, v4

    .line 1211
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

    .line 1500
    sget-object v6, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1501
    iget-boolean v6, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    if-eqz v6, :cond_0

    .line 1502
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doStartInputInternal()V

    .line 1503
    iput-boolean v4, p0, Lcom/nuance/swype/input/IME;->isStartInputPending:Z

    .line 1505
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1506
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->closeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1507
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/IME;->finishInputViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1508
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1509
    invoke-direct {p0, v4, v4}, Lcom/nuance/swype/input/IME;->doFinishInputView(ZZ)V

    .line 1512
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1514
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6, p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEquivalentTo(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v6

    if-nez v6, :cond_8

    move v3, v5

    .line 1516
    .local v3, "isEditorAttributeChanged":Z
    :goto_0
    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldFilterInputViewRestarts()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1518
    .local v0, "currentTimestamp":J
    iget-wide v6, p0, Lcom/nuance/swype/input/IME;->lastAllowedTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x2bc

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    .line 1519
    :goto_1
    if-eqz v5, :cond_a

    .line 1520
    iput-wide v0, p0, Lcom/nuance/swype/input/IME;->lastAllowedTime:J

    .line 1527
    .end local v0    # "currentTimestamp":J
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/IME;->onStartInputViewCommon(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1528
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->setEmojiExtraRegion(I)V

    .line 1530
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 1531
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1532
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1533
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/nuance/swype/input/IMEHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1534
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleLanguageOrRestore(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputView;)V

    .line 1538
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v5, :cond_7

    .line 1541
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    iget-object v6, v5, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v6, :cond_4

    iget-object v4, v5, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v4}, Lcom/google/android/voiceime/Trigger;->hasRecognitionResultToCommit()Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_5

    .line 1542
    sget-object v4, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "cursor onStartInputView"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1543
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 1545
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    iget-object v5, v4, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v5}, Lcom/google/android/voiceime/Trigger;->onStartInputView()V

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 1547
    :cond_7
    sget-object v4, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1548
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :goto_2
    return-void

    .end local v3    # "isEditorAttributeChanged":Z
    :cond_8
    move v3, v4

    .line 1514
    goto :goto_0

    .restart local v0    # "currentTimestamp":J
    .restart local v3    # "isEditorAttributeChanged":Z
    :cond_9
    move v5, v4

    .line 1518
    goto :goto_1

    .line 1522
    :cond_a
    sget-object v4, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    goto :goto_2
.end method

.method public onStartInputViewCommon(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 21
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/InputFieldInfo;->isEquivalentTo(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v13, 0x1

    .line 1294
    .local v13, "isEditorAttributeChanged":Z
    :goto_0
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1295
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/connect/Connect;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1296
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    .line 1297
    .local v12, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v12, v2}, Lcom/nuance/swype/input/IMEApplication;->setCurrentFieldInfo(I)V

    .line 1298
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/nuance/swype/input/IMEApplication;->setCurrentApplicationName(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->loadSettings()V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->tapFilter:Lcom/nuance/swype/input/tweaks/TapFilter;

    if-eqz v2, :cond_0

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->tapFilter:Lcom/nuance/swype/input/tweaks/TapFilter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/tweaks/TapFilter;->onEditorUpdate(Landroid/view/inputmethod/EditorInfo;)V

    .line 1307
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 1308
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v13, v2}, Lcom/nuance/swype/input/IME;->onStartInputViewProjectOverride(ZZZ)Z

    move-result v18

    .line 1314
    .local v18, "restoreLayer":Z
    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    if-eqz v2, :cond_2

    .line 1315
    :cond_1
    const/16 p2, 0x0

    .line 1319
    :cond_2
    sget v2, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_FOREGROUND_UI:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/IME;->setRunningState(I)V

    .line 1320
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 1321
    if-eqz p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1322
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/IME;->mUsedEditLayer:Z

    .line 1323
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 1328
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1329
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "onStartInput(): no input view"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1330
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1446
    :goto_2
    return-void

    .line 1292
    .end local v12    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v13    # "isEditorAttributeChanged":Z
    .end local v18    # "restoreLayer":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1325
    .restart local v12    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v13    # "isEditorAttributeChanged":Z
    .restart local v18    # "restoreLayer":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    goto :goto_1

    .line 1334
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v9

    .line 1336
    .local v9, "currentInputView":Lcom/nuance/swype/input/InputView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1337
    sget-object v2, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "onStartInput(): no input view"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_2

    .line 1341
    :cond_7
    if-eqz v18, :cond_14

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    if-eqz v2, :cond_13

    :cond_8
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v9, v2}, Lcom/nuance/swype/input/IME$KeyboardState;->restore(Lcom/nuance/swype/input/InputView;Z)V

    .line 1348
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1349
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard language"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v2, v2, Lcom/nuance/swype/input/BilingualLanguage;

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1356
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "bilingual"

    const-string v4, "yes"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v16

    .line 1361
    .local v16, "modeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    .end local v16    # "modeName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nuance/swype/input/IME;->localyticsStartPointTime:J

    sub-long v14, v2, v4

    .line 1364
    .local v14, "interval":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "startup time"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nuance/swype/input/IME;->getStartupTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "theme"

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    .line 1367
    .local v17, "orientation":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_17

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "orientation"

    const-string v4, "portrait"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v10

    .line 1374
    .local v10, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "keyboard layout"

    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "device type"

    const-string v4, "tablet"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    .end local v10    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v14    # "interval":J
    .end local v17    # "orientation":I
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1383
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->recaptureOnSingleTap(Z)V

    .line 1388
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    .line 1390
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->showStartupMessage()V

    .line 1392
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-eqz v2, :cond_e

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v8

    .line 1395
    .local v8, "curInputView":Lcom/nuance/swype/input/InputView;
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/stats/StatisticsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v20

    .line 1396
    .local v20, "stats":Lcom/nuance/swype/stats/StatisticsManager;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    if-eqz v2, :cond_c

    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1398
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .local v19, "size":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1400
    const/16 v2, 0x78

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1403
    invoke-virtual/range {v20 .. v20}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordKeyboardSizeChange(Ljava/lang/String;)V

    .line 1406
    .end local v19    # "size":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    if-eqz v2, :cond_e

    .line 1407
    if-eqz v8, :cond_d

    .line 1408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    invoke-virtual {v8, v2}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 1410
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/IME;->prevLastInput:I

    .line 1414
    .end local v8    # "curInputView":Lcom/nuance/swype/input/InputView;
    .end local v20    # "stats":Lcom/nuance/swype/stats/StatisticsManager;
    :cond_e
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v18, :cond_f

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 1416
    .local v11, "handler":Landroid/os/Handler;
    if-eqz v11, :cond_f

    .line 1417
    const/16 v2, 0x79

    const-wide/16 v4, 0xa

    invoke-virtual {v11, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1421
    .end local v11    # "handler":Landroid/os/Handler;
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    .line 1422
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/IME;->isAccessibilityChanged:Z

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v9, :cond_11

    .line 1429
    const/4 v7, 0x0

    .line 1430
    .local v7, "languageInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    if-eqz v2, :cond_10

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/IME;->mNeedLanguageInToast:Z

    .line 1434
    :cond_10
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v5

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->notifyKeyboardOpen(Landroid/content/Context;ILcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Ljava/lang/String;)V

    .line 1439
    .end local v7    # "languageInfo":Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isScreenMagnificationOn()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1440
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1443
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->postDelayCheckLanguageUpdateMessage()V

    .line 1445
    sget-object v2, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    goto/16 :goto_2

    .line 1342
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1343
    :cond_14
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->hasActiveIMEManagerInstance()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1344
    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleLanguageOrRestore(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputView;)V

    goto/16 :goto_4

    .line 1358
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "bilingual"

    const-string v4, "no"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1361
    .restart local v16    # "modeName":Ljava/lang/String;
    :cond_16
    const-string v16, "invalidMode"

    goto/16 :goto_6

    .line 1370
    .end local v16    # "modeName":Ljava/lang/String;
    .restart local v14    # "interval":J
    .restart local v17    # "orientation":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "orientation"

    const-string v4, "landscape"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1378
    .restart local v10    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v3, "device type"

    const-string v4, "handset"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 1385
    .end local v10    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v14    # "interval":J
    .end local v17    # "orientation":I
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_9
.end method

.method public onStartInputViewProjectOverride(ZZZ)Z
    .locals 1
    .param p1, "restarting"    # Z
    .param p2, "editorChanged"    # Z
    .param p3, "orientation"    # Z

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "restoreLayer":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 1249
    const/4 v0, 0x1

    .line 1252
    :cond_0
    return v0
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 2724
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_1

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2727
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    const/16 v1, 0xfdf

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->shouldDisableInput(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2730
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_2

    .line 2731
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->onText(Ljava/lang/CharSequence;)V

    .line 2734
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_0
.end method

.method protected onTokenAttached()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 1
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 2950
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_1

    .line 2963
    :cond_0
    :goto_0
    return-void

    .line 2954
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2958
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 459
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onTrimMemory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 462
    sget v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_UI_HIDDEN:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IME;->setRunningState(I)V

    .line 464
    :cond_0
    return-void
.end method

.method public onUnbindInput()V
    .locals 1

    .prologue
    .line 829
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 830
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 831
    .local v0, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 834
    :cond_0
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1886
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1888
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1889
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onUpdateSelection()...no input view"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1895
    :goto_0
    return-void

    .line 1894
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 1761
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1764
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onUpdateSelection(): oss: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; ose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; nss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; nse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; cs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1766
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->ignoreFirstUpdateSelectionPostOrientationChange:Z

    if-eqz v0, :cond_1

    .line 1767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->ignoreFirstUpdateSelectionPostOrientationChange:Z

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1772
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onUpdateSelection()...no input view"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 1780
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 1783
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isCurrentUsingHardKeyboard:Z

    if-nez v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->recordStartTimeDisplaySelection()V

    .line 1785
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/RecaptureHandler;->onUpdateSelection(IIIIII)V

    .line 1787
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->recordUsedTimeReselectDisplaySelectionList()V

    goto :goto_0
.end method

.method public onViewClicked(Z)V
    .locals 2
    .param p1, "focusChanged"    # Z

    .prologue
    .line 523
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 525
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/AbstractTapDetector;->onViewClicked(Z)V

    .line 532
    :cond_1
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
    .line 3583
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v1, :cond_1

    .line 3599
    :cond_0
    :goto_0
    return-void

    .line 3587
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3591
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3595
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3596
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isWriteInputEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3597
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->handleWrite(Ljava/util/List;)V

    goto :goto_0
.end method

.method pauseSpeech()V
    .locals 2

    .prologue
    .line 3135
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 3138
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    .line 3139
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->pauseSpeech()V

    .line 3141
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 3142
    return-void
.end method

.method public performAction()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2741
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->getActionId()I

    move-result v1

    .line 2742
    .local v1, "idAction":I
    if-eq v1, v2, :cond_1

    .line 2743
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2744
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2745
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2749
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
    .line 3044
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 3045
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->audioManager:Landroid/media/AudioManager;

    .line 3047
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isKeySoundAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3048
    const/4 v0, 0x5

    .line 3049
    .local v0, "sound":I
    sparse-switch p1, :sswitch_data_0

    .line 3062
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->audioManager:Landroid/media/AudioManager;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 3064
    .end local v0    # "sound":I
    :cond_1
    return-void

    .line 3051
    .restart local v0    # "sound":I
    :sswitch_0
    const/4 v0, 0x7

    .line 3052
    goto :goto_0

    .line 3054
    :sswitch_1
    const/16 v0, 0x8

    .line 3055
    goto :goto_0

    .line 3057
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 3049
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected recaptureOnSingleTap(Z)V
    .locals 2
    .param p1, "restarting"    # Z

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RecaptureHandler;->onStartInputView()V

    .line 1258
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->isOrientationChanged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->simulateTapOnPostOrientationChangePending:Z

    if-eqz v0, :cond_1

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/RecaptureHandler;->onSingleTap(Z)Z

    .line 1263
    :cond_1
    return-void
.end method

.method refreshInputViewLanguage()V
    .locals 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2650
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 2651
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 2652
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IME;->setupInputView(Z)V

    .line 2653
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->invalidate()V

    .line 2654
    return-void
.end method

.method public refreshKeyboard()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 2675
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "refreshKeyboard()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2676
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2677
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2679
    return-void
.end method

.method public refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 5
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p2, "view"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 1732
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v4, :cond_0

    .line 1733
    instance-of v4, p1, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 1734
    check-cast v3, Lcom/nuance/swype/input/XT9Keyboard;

    .line 1735
    .local v3, "xt9Keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 1736
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->countEnabledLanguageMode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setLanguageSwitchKey(Lcom/nuance/swype/input/InputMethods$Language;I)Ljava/util/List;

    move-result-object v4

    .line 1738
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1739
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 1743
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v3    # "xt9Keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    :cond_0
    return-void
.end method

.method public registerReceiverMessages()V
    .locals 3

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3029
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3032
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3034
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3036
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "language_update_notification"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3038
    return-void
.end method

.method public reloadKeyboard()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2657
    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 2658
    iput-object v0, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 2659
    iput-object v0, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 2660
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME$KeyboardState;->save(Lcom/nuance/swype/input/InputView;)V

    .line 2661
    const-string v0, "NO_VIEW"

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2663
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2664
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->reset()V

    .line 2665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 2668
    :cond_0
    return-void
.end method

.method public removeAllPendingMsgs()V
    .locals 2

    .prologue
    .line 3365
    const/16 v0, 0x65

    .local v0, "msg":I
    :goto_0
    const/16 v1, 0x7b

    if-gt v0, v1, :cond_0

    .line 3366
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3368
    :cond_0
    return-void
.end method

.method public renewLicense()V
    .locals 1

    .prologue
    .line 3684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 3685
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->runLicenseCheck()V

    .line 3686
    return-void
.end method

.method public replaceLicense(Ljava/io/File;)Z
    .locals 3
    .param p1, "newLicense"    # Ljava/io/File;

    .prologue
    .line 3674
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "license.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3675
    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3676
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 3677
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->runLicenseCheck()V

    .line 3678
    const/4 v1, 0x1

    .line 3680
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetContainerView()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->removeItem()V

    .line 741
    :cond_0
    return-void
.end method

.method public resetInputView(Z)V
    .locals 3
    .param p1, "resetCore"    # Z

    .prologue
    const/4 v2, 0x0

    .line 722
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->recaptureHandler:Lcom/nuance/swype/input/RecaptureHandler;

    .line 723
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->tapDetector:Lcom/nuance/swype/input/AbstractTapDetector;

    .line 724
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->savedKeyboardState:Lcom/nuance/swype/input/IME$KeyboardState;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME$KeyboardState;->save(Lcom/nuance/swype/input/InputView;)V

    .line 725
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToDestroy(Z)V

    .line 726
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->reset()V

    .line 727
    const-string v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->resetContainerView()V

    .line 730
    iput-object v2, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    .line 731
    return-void
.end method

.method public retrieveCurrentInputViewName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1027
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    .line 1029
    .local v2, "overrideCurrentMode":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 1030
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 1031
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1032
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1033
    if-eqz v2, :cond_0

    .line 1034
    const-string v3, "Korean.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 1075
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    return-object v3

    .line 1036
    :cond_0
    const-string v3, "Korean.HandWriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1039
    :cond_1
    const-string v3, "Korean.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1042
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1043
    if-eqz v2, :cond_3

    .line 1044
    const-string v3, "Chinese.input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1046
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1047
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getDefaultFullscreenHandwriting()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1049
    if-eqz v3, :cond_4

    .line 1050
    const-string v3, "Chinesefs.handwriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1052
    :cond_4
    const-string v3, "Chinese.HandWriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1056
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_5
    const-string v3, "Chinese.input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1058
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1059
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1060
    if-eqz v2, :cond_7

    .line 1061
    const-string v3, "Japanese.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1063
    :cond_7
    const-string v3, "Japanese.HandWriting"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1066
    :cond_8
    const-string v3, "Japanese.Input"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 1069
    :cond_9
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1070
    if-eqz v2, :cond_a

    const-string v3, "Alpha.KeyboardInput"

    :goto_1
    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v3, "Alpha.HandWriting"

    goto :goto_1

    .line 1072
    :cond_b
    const-string v3, "Alpha.KeyboardInput"

    iput-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public runLicenseCheck()V
    .locals 1

    .prologue
    .line 3666
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    if-nez v0, :cond_0

    .line 3668
    invoke-static {p0}, Lcom/nuance/swype/input/License;->getLicense(Landroid/content/Context;)Lcom/nuance/swype/input/License;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->currentLicense:Lcom/nuance/swype/input/License;

    .line 3671
    :cond_0
    return-void
.end method

.method public sendBackspace(I)V
    .locals 14
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v8, 0x2

    const/16 v13, 0x43

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2831
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2832
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v2, :cond_1

    .line 2894
    :cond_0
    :goto_0
    return-void

    .line 2835
    :cond_1
    const/16 v11, 0x14

    if-le p1, v11, :cond_3

    move v0, v8

    .line 2837
    .local v0, "deleteCount":I
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->forceTypeNullForBackspace()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->ignoreTypeNullCheckForBackspace()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v11}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_2
    move v11, v9

    .line 2840
    :goto_2
    if-eqz v11, :cond_a

    .line 2841
    new-instance v11, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v11}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v2, v11, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    .line 2842
    invoke-static {v11}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v5

    .line 2843
    .local v5, "selection":[I
    if-eqz v5, :cond_5

    aget v11, v5, v10

    aget v12, v5, v9

    if-eq v11, v12, :cond_5

    .line 2845
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2846
    const-string v8, ""

    invoke-virtual {v2, v8, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2847
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    goto :goto_0

    .end local v0    # "deleteCount":I
    .end local v5    # "selection":[I
    :cond_3
    move v0, v9

    .line 2835
    goto :goto_1

    .restart local v0    # "deleteCount":I
    :cond_4
    move v11, v10

    .line 2837
    goto :goto_2

    .line 2849
    .restart local v5    # "selection":[I
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2850
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/InputView;->playSoundIfTextIsEmpty()V

    .line 2853
    :cond_6
    invoke-virtual {p0, v13}, Lcom/nuance/swype/input/IME;->shouldSendKeyAsKeyEvent(I)Z

    move-result v11

    if-nez v11, :cond_a

    .line 2854
    new-instance v11, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v11}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v2, v11, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 2858
    .local v1, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_9

    iget v11, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-lez v11, :cond_9

    iget-object v11, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v11, :cond_9

    .line 2859
    aget v11, v5, v10

    if-lt v11, v8, :cond_9

    .line 2860
    iget-object v8, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    aget v11, v5, v10

    add-int/lit8 v11, v11, -0x2

    aget v12, v5, v10

    invoke-interface {v8, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2861
    invoke-static {v8}, Lcom/nuance/swype/util/CharacterUtilities;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2862
    invoke-virtual {p0, v13, v0}, Lcom/nuance/swype/input/IME;->sendKeyUpDownEvents(II)V

    .line 2863
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    goto/16 :goto_0

    .line 2867
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldCheckSmileyWhenDeleting()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2868
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v7

    .line 2869
    .local v7, "utility":Lcom/nuance/swype/util/CharacterUtilities;
    aget v8, v5, v10

    iget v11, v7, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    if-le v8, v11, :cond_8

    aget v8, v5, v10

    iget v11, v7, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    sub-int v6, v8, v11

    .line 2871
    .local v6, "start":I
    :goto_3
    iget-object v8, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    aget v11, v5, v10

    invoke-interface {v8, v6, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2872
    .local v4, "lastEmiley":Ljava/lang/String;
    invoke-virtual {v7, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isSmiley(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2873
    invoke-virtual {p0, v13, v0}, Lcom/nuance/swype/input/IME;->sendKeyUpDownEvents(II)V

    goto/16 :goto_0

    .end local v4    # "lastEmiley":Ljava/lang/String;
    .end local v6    # "start":I
    :cond_8
    move v6, v10

    .line 2869
    goto :goto_3

    .line 2879
    .end local v7    # "utility":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_9
    invoke-virtual {v2, v0, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 2885
    invoke-virtual {v2, v9, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2886
    .local v3, "lastChar":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2887
    invoke-virtual {v2, v9, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 2892
    .end local v1    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "lastChar":Ljava/lang/CharSequence;
    .end local v5    # "selection":[I
    :cond_a
    invoke-virtual {p0, v13, v0}, Lcom/nuance/swype/input/IME;->sendKeyUpDownEvents(II)V

    goto/16 :goto_0
.end method

.method public sendChar(C)V
    .locals 5
    .param p1, "charCode"    # C

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2804
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2805
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2806
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2807
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2809
    :cond_1
    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 2810
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
    .line 2756
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->performAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2760
    :goto_0
    return-void

    .line 2759
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

    .line 3943
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3944
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3946
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3947
    return-void
.end method

.method protected sendKeyUpDownEvents(II)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .prologue
    .line 2825
    move v0, p2

    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-lez v0, :cond_0

    .line 2826
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 2828
    .end local v0    # "count":I
    .restart local p2    # "count":I
    :cond_0
    return-void
.end method

.method public sendLeftRightKey(II)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    .line 2897
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    .line 2898
    const/16 v0, 0x14

    if-le p2, v0, :cond_0

    .line 2899
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    .line 2901
    :cond_0
    return-void
.end method

.method public sendSpace()V
    .locals 1

    .prologue
    .line 2816
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->sendChar(C)V

    .line 2817
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1918
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setCandidatesView(): ignoring (shouldn\'t be called)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1919
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1931
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->onSetCandidatesViewShown(Z)Z

    move-result p1

    .line 1932
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->showCandidates(Z)V

    .line 1940
    :cond_0
    return-void
.end method

.method public setCurrentInputLanguage()Z
    .locals 1

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 970
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 976
    :goto_0
    return v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 976
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
    .line 4458
    iput p1, p0, Lcom/nuance/swype/input/IME;->emojiExtraRegion:I

    .line 4459
    return-void
.end method

.method public setHardKeyboardAttached(Z)V
    .locals 3
    .param p1, "attached"    # Z

    .prologue
    .line 4303
    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->isHardKeyboardAttached:Z

    if-eq v1, p1, :cond_1

    .line 4304
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->isHardKeyboardAttached:Z

    .line 4306
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v1, :cond_1

    .line 4308
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/view/InputContainerView;->showInputArea(Z)V

    .line 4309
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 4310
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 4311
    if-eqz p1, :cond_0

    .line 4312
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->refreshBTAutoCorrection()V

    .line 4314
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->dismissPopupKeyboard()V

    .line 4315
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->dismissLangPopupMenu()V

    .line 4319
    .end local v0    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_1
    return-void

    .line 4308
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setImeInUse(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 3886
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3887
    iget v0, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/IME;->trialCheckCount:I

    .line 3889
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    .line 3890
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    if-nez v0, :cond_1

    .line 3891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 3893
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->inUse:Z

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onImeInUse(Z)V

    .line 3894
    return-void
.end method

.method public setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 10
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1670
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8, p1}, Lcom/nuance/swype/input/InputFieldInfo;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1671
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isEditDictionaryField()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1672
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isSamsungSNote()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1675
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    goto :goto_0

    .line 1677
    :cond_2
    iput-boolean v6, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 1678
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1679
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1680
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1682
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 1689
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_4

    .line 1690
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1691
    .local v5, "what":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/Whitelist;->allows(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1692
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    .line 1694
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v4

    .line 1695
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1696
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->portraitCandidatesViewFilter:Lcom/nuance/swype/input/Whitelist;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/nuance/swype/input/Whitelist;->allows(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1697
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    goto :goto_0

    .line 1700
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "what":Ljava/lang/String;
    :cond_4
    sget v8, Lcom/nuance/swype/input/R$bool;->enable_candidates_sw_threshold_check:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1701
    sget v8, Lcom/nuance/swype/input/R$dimen;->landscape_candidates_sw_threshold:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1702
    .local v3, "swThreshold":F
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    .line 1703
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v8

    .line 1704
    invoke-static {v0}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v2

    .line 1705
    .local v2, "smallestScreenWidthDp":I
    if-lez v2, :cond_0

    int-to-float v8, v2

    cmpg-float v8, v8, v3

    if-gez v8, :cond_0

    .line 1707
    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputFieldInfo;->isFieldWithFilterList()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1709
    :goto_1
    if-nez v6, :cond_0

    .line 1710
    iput-boolean v7, p0, Lcom/nuance/swype/input/IME;->allowCandidateViewShown:Z

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 1707
    goto :goto_1
.end method

.method public setModeForInputContainerView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1130
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    if-eqz v5, :cond_4

    .line 1131
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    .line 1132
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

    .line 1133
    .local v1, "miniFloatSupported":Z
    invoke-static {}, Lcom/nuance/android/compat/InputMethodServiceCompat;->isTouchableRegionSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v2, v5, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isScreenPhablet()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    move v0, v4

    .line 1138
    .local v0, "forceUseWing":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/view/InputContainerView;->initStyle(Z)V

    .line 1139
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/view/InputContainerView;->setFullScreenMode(Z)V

    .line 1140
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/view/InputContainerView;->showInputArea(Z)V

    .line 1141
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v5, v4, v3}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1143
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1145
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1148
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/view/InputContainerView;->setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1149
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->setInputView(Landroid/view/View;)V

    .line 1150
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 1153
    .end local v0    # "forceUseWing":Z
    .end local v1    # "miniFloatSupported":Z
    .end local v2    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_4
    return-void

    .restart local v1    # "miniFloatSupported":Z
    .restart local v2    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_5
    move v0, v3

    .line 1133
    goto :goto_0

    .restart local v0    # "forceUseWing":Z
    :cond_6
    move v5, v3

    .line 1140
    goto :goto_1
.end method

.method public setRecaptureWhenSwitching(Z)V
    .locals 0
    .param p1, "recapture"    # Z

    .prologue
    .line 4202
    iput-boolean p1, p0, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 4203
    return-void
.end method

.method public setSpaceKeyAsLanguageSwitchKey()V
    .locals 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 1726
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 1727
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1729
    :cond_0
    return-void
.end method

.method setupInputView(Z)V
    .locals 3
    .param p1, "restarting"    # Z

    .prologue
    .line 1176
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1177
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    const/4 v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/IME;->mLastKey:I

    .line 1179
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v1, :cond_0

    .line 1180
    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->showCurrentLanguage()V

    .line 1185
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCandidatesViewCreate()Landroid/view/View;

    .line 1188
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 1189
    .local v0, "currentInputView":Lcom/nuance/swype/input/InputView;
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setCurrentInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1190
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 1192
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setSpaceKeyAsLanguageSwitchKey()V

    .line 1195
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 1196
    sget-object v1, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1197
    return-void
.end method

.method protected shouldSendCharAsKeyEvent()Z
    .locals 2

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    const/16 v1, 0x10

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
    .line 2788
    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    .line 2789
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSendReturnAsKeyEvent()Z

    move-result v0

    .line 2790
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2792
    :goto_0
    return v0

    .line 2790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2792
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldSendKeyAsKeyEvent(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 2797
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->shouldSendCharAsKeyEvent()Z

    move-result v0

    return v0
.end method

.method public showCapLockState(Z)V
    .locals 3
    .param p1, "isCapslock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3602
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3610
    :goto_0
    return-void

    .line 3605
    :cond_0
    if-eqz p1, :cond_1

    .line 3606
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->caps_lock_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 3608
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1747
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1748
    .local v0, "langName":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->showToolTip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1750
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1751
    invoke-static {p0, v0, v2}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1754
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 1756
    :cond_1
    return-void
.end method

.method showDictationLanguageMenu()V
    .locals 6

    .prologue
    .line 3218
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3270
    :cond_0
    :goto_0
    return-void

    .line 3221
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 3222
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v3

    .line 3223
    .local v3, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/nuance/swype/input/SpeechWrapper;->isAllowedShowingLanguageMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3226
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3227
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3228
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    invoke-direct {v4, v1}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    .line 3229
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3230
    new-instance v4, Lcom/nuance/swype/input/IME$9;

    invoke-direct {v4, p0, v3}, Lcom/nuance/swype/input/IME$9;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3242
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3243
    sget v4, Lcom/nuance/swype/input/R$string;->cancel_button:I

    new-instance v5, Lcom/nuance/swype/input/IME$10;

    invoke-direct {v5, p0, v3}, Lcom/nuance/swype/input/IME$10;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3249
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->dictationLanguageAdapter:Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    new-instance v5, Lcom/nuance/swype/input/IME$11;

    invoke-direct {v5, p0, v3}, Lcom/nuance/swype/input/IME$11;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3256
    sget v4, Lcom/nuance/swype/input/R$string;->voice_lang_title:I

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3259
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 3262
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 3263
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v4, Lcom/nuance/swype/input/IME$12;

    invoke-direct {v4, p0, v2}, Lcom/nuance/swype/input/IME$12;-><init>(Lcom/nuance/swype/input/IME;Landroid/widget/ListView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 3269
    iget-object v4, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showEmojiInputKeyboard()V
    .locals 5

    .prologue
    const/16 v4, 0x7a

    .line 3559
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 3568
    :cond_0
    :goto_0
    return-void

    .line 3563
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3564
    .local v0, "currentInputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/nuance/swype/input/InputView;->isEmojiKeyboardShown:Z

    if-nez v1, :cond_0

    .line 3565
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3566
    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showLanguageMenu()V
    .locals 7

    .prologue
    .line 4128
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4181
    :goto_0
    return-void

    .line 4131
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4132
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4133
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 4134
    .local v2, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v3

    .line 4135
    .local v3, "languageList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    new-instance v5, Lcom/nuance/swype/input/LanguageListAdapter;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v6

    invoke-direct {v5, v1, v3, v6}, Lcom/nuance/swype/input/LanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;)V

    iput-object v5, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    .line 4137
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4138
    new-instance v5, Lcom/nuance/swype/input/IME$14;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/IME$14;-><init>(Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4147
    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4148
    sget v5, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4150
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;

    new-instance v6, Lcom/nuance/swype/input/IME$15;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/IME$15;-><init>(Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4167
    sget v5, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 4170
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 4173
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 4174
    .local v4, "listView":Landroid/widget/ListView;
    new-instance v5, Lcom/nuance/swype/input/IME$16;

    invoke-direct {v5, p0, v4}, Lcom/nuance/swype/input/IME$16;-><init>(Lcom/nuance/swype/input/IME;Landroid/widget/ListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4180
    iget-object v5, p0, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 11
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/16 v10, 0x51

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2532
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/widget/PopupLanguageList;->hasTheme(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2535
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 2536
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2537
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/nuance/swype/widget/PopupLanguageList;-><init>(Landroid/view/LayoutInflater;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    .line 2539
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    new-instance v7, Lcom/nuance/swype/input/IME$6;

    invoke-direct {v7, p0}, Lcom/nuance/swype/input/IME$6;-><init>(Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v6, v7}, Lcom/nuance/swype/widget/PopupLanguageList;->setListener(Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;)V

    .line 2597
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/widget/PopupLanguageList;->setLanguages(Ljava/util/List;)V

    .line 2600
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2601
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 2602
    .local v2, "inputView":Lcom/nuance/swype/input/InputView;
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 2603
    .local v4, "pos":[I
    if-eqz p1, :cond_4

    .line 2605
    invoke-virtual {v2, p1, v4}, Lcom/nuance/swype/input/InputView;->calcKeyTopCenterInWindow(Lcom/nuance/swype/input/KeyboardEx$Key;[I)[I

    .line 2611
    :goto_0
    aget v6, v4, v8

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputView;->getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v4, v8

    .line 2621
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 2622
    .local v5, "rootView":Landroid/view/View;
    aget v6, v4, v9

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    aput v6, v4, v9

    .line 2623
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    aget v7, v4, v8

    sub-int/2addr v6, v7

    aput v6, v4, v8

    .line 2627
    if-nez p1, :cond_5

    .line 2629
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 2630
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v3, :cond_2

    .line 2631
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/InputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object p1

    .line 2634
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    aget v7, v4, v9

    iget v8, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v2, v10, v7, v8}, Lcom/nuance/swype/widget/PopupLanguageList;->showAtLocation(Landroid/view/View;III)V

    .line 2642
    .end local v2    # "inputView":Lcom/nuance/swype/input/InputView;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v4    # "pos":[I
    .end local v5    # "rootView":Landroid/view/View;
    :cond_3
    :goto_1
    return-void

    .line 2608
    .restart local v2    # "inputView":Lcom/nuance/swype/input/InputView;
    .restart local v4    # "pos":[I
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v6, v4, v8}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleTopInWindow([II)V

    goto :goto_0

    .line 2639
    .restart local v5    # "rootView":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/IME;->popupLanguageList:Lcom/nuance/swype/widget/PopupLanguageList;

    aget v7, v4, v9

    iget v8, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->getBottomBarHeight(Lcom/nuance/swype/input/InputView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v2, v10, v7, v8}, Lcom/nuance/swype/widget/PopupLanguageList;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method public final showNonLVLLicenseAppDialog()V
    .locals 3

    .prologue
    .line 4376
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4377
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    .line 4380
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->localyticsMap:Ljava/util/Map;

    const-string v1, "lvl license error"

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    :cond_1
    return-void
.end method

.method public startDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 4
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 3931
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 3932
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 3933
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3940
    :cond_0
    :goto_0
    return-void

    .line 3936
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "startDelayScanning..."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3937
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3938
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 4109
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-nez v0, :cond_0

    .line 4110
    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 4112
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    iget-object v1, v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/Trigger;->startVoiceRecognition(Ljava/lang/String;)V

    .line 4113
    :cond_1
    return-void
.end method

.method stopSpeech()V
    .locals 2

    .prologue
    .line 3145
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 3148
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    .line 3149
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 3151
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 3152
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 2911
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->close()V

    .line 2912
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 2908
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 2904
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 2916
    return-void
.end method

.method public switchHardInputView(Z)V
    .locals 0
    .param p1, "restarting"    # Z

    .prologue
    .line 1126
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 1127
    return-void
.end method

.method public switchInputView(Z)V
    .locals 5
    .param p1, "restarting"    # Z

    .prologue
    .line 1156
    sget-object v3, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1157
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->retrieveCurrentInputViewName()Ljava/lang/String;

    .line 1158
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->createInputViewFor(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1159
    .local v1, "inputAreaView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IME;->setupInputView(Z)V

    .line 1160
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCandidatesViewCreate()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/nuance/swype/input/IME;->initInputContainerView(Landroid/view/View;Landroid/view/View;)V

    .line 1161
    iget-object v3, p0, Lcom/nuance/swype/input/IME;->inputContainerView:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IME;->setInputView(Landroid/view/View;)V

    .line 1162
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 1164
    invoke-static {p0}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v2

    .line 1165
    .local v2, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    .line 1166
    .local v0, "coreInput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1167
    invoke-virtual {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyboardPageXML()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardPageXML(Ljava/lang/String;)V

    .line 1169
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->doRecaptureWhenSwitching()V

    .line 1171
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->postDelayCheckLanguageUpdateMessage()V

    .line 1172
    sget-object v3, Lcom/nuance/swype/input/IME;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1173
    return-void
.end method

.method public switchInputViewAsync()V
    .locals 1

    .prologue
    .line 3296
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 3297
    return-void
.end method

.method public switchInputViewAsync(I)V
    .locals 4
    .param p1, "msAfter"    # I

    .prologue
    const/16 v2, 0x64

    .line 3291
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3292
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3293
    return-void
.end method

.method public switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;)V
    .locals 1
    .param p1, "info"    # Lcom/nuance/swype/input/LangSwitchAction;

    .prologue
    .line 3287
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/IME;->switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;I)V

    .line 3288
    return-void
.end method

.method public switchLanguageAsync(Lcom/nuance/swype/input/LangSwitchAction;I)V
    .locals 4
    .param p1, "info"    # Lcom/nuance/swype/input/LangSwitchAction;
    .param p2, "msAfter"    # I

    .prologue
    const/16 v2, 0x6f

    .line 3282
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3283
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3284
    return-void
.end method

.method public toggleHwrAndKeyboardInputMode()V
    .locals 4

    .prologue
    .line 3355
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 3356
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->toggleHandwritingAndInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 3358
    .local v1, "nextInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3359
    iget-object v2, p0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 3360
    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 3362
    :cond_0
    return-void
.end method

.method public updateAvailable()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/nuance/swype/input/IME;->checkPackageUpdate()V

    .line 512
    return-void
.end method

.method public updateInputMethods(Lcom/nuance/swype/input/InputMethods;)V
    .locals 1
    .param p1, "im"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v0, :cond_0

    .line 689
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 692
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->setCurrentInputLanguage()Z

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    goto :goto_0
.end method

.method public vibrate()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3067
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->isVibrateAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3088
    :cond_0
    :goto_0
    return-void

    .line 3070
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3071
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->isSetVibrationDurationAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3072
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/nuance/swype/input/IME;->vibrateOn:Z

    if-eqz v2, :cond_0

    .line 3073
    invoke-virtual {v0, v3, v3}, Lcom/nuance/swype/input/InputView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 3079
    :cond_2
    if-eqz v0, :cond_3

    .line 3080
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView;->setHapticFeedbackEnabled(Z)V

    .line 3082
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/SystemState;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    .line 3083
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 3084
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getVibrationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
