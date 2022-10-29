.class public Lcom/nuance/swype/input/KeyboardViewEx;
.super Landroid/view/View;
.source "KeyboardViewEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;
.implements Lcom/nuance/swype/input/view/DragHelper$DragVisualizer;
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;,
        Lcom/nuance/swype/input/KeyboardViewEx$Pointer;,
        Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;,
        Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;,
        Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final COMPONENT_MARKER:C = '\u9fff'

.field protected static final DEFAULT_DELAY_AFTER_PREVIEW:I = 0x3c

.field private static final DEFAULT_DELAY_BEFORE_PREVIEW:I = 0x1e

.field private static final DELAY_REMOVE_POPUPVIEW:I = 0x0

.field private static EMPTY_TEXT:Ljava/lang/String; = null

.field private static final FADING_DELAY:I = 0x19

.field private static final FIVE_ROW_LAYOUT:I = 0x5

.field private static final GLOW_OVERFLOW:D = 0.25

.field private static final HOVER_TO_TOUCH_WAITING_TIME:J = 0xaL

.field private static final ICON_STATE_PREVIEW:[I

.field private static final ICON_STATE_PRIMARY:[I

.field private static final ICON_STATE_SECONDARY:[I

.field private static final KEYBOARD_HEIGHT_THRESHOLD_VALUE:I = 0x64

.field private static final KEY_ICON_SKIP_RECOLOR:I

.field private static final MAX_CHAR_POPUP_CACHE:I = 0x4

.field private static final MAX_TRACE_DRAWN_POINTS:I = 0x32

.field private static final MAX_TRAIL_RADIUS:F = 17.0f

.field private static final MIN_HIDE_SENCONDARY_KEYBOARD_SACLE:F = 0.91f

.field private static final MIN_TRACE_WIDTH:I = 0x4

.field protected static final MSG_DEFER_SENDKEY:I = 0x3f0

.field protected static final MSG_FADING:I = 0x401

.field protected static final MSG_LONGPRESS:I = 0x3ed

.field protected static final MSG_MULTITAP_TIMEOUT:I = 0x6a

.field protected static final MSG_PRESS_HOLD_FLICKR:I = 0x3ef

.field private static final MSG_REMOVE_POPUPVIEW:I = 0x3ee

.field protected static final MSG_REMOVE_PREVIEW:I = 0x3ea

.field protected static final MSG_REPEAT:I = 0x3eb

.field protected static final MSG_SHORT_LONGPRESS:I = 0x68

.field protected static final MSG_SHOW_PREVIEW:I = 0x3e9

.field protected static final MSG_TRACE_COMPLETE:I = 0x400

.field protected static final MULTITAP_INTERVAL:I = 0x4e2

.field public static final NOT_A_KEY:I = -0x1

.field protected static final REPEAT_INTERVAL:I = 0x32

.field protected static final REPEAT_START_DELAY:I = 0x190

.field private static final TRACE_POINTS_INIT_CAPACITY:I = 0x1f4

.field private static drawIconBelowAltExceptions:[Ljava/lang/String;

.field private static final keyboardPoint:Landroid/graphics/Point;

.field public static final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private altCharsPopupMaxCol:I

.field private final bounds:Landroid/graphics/Rect;

.field private bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

.field protected charUtil:Lcom/nuance/swype/util/CharacterUtilities;

.field private final dest:Landroid/graphics/Rect;

.field private displaySize:Landroid/graphics/Rect;

.field private doubleBuffered:Z

.field private dragHelper:Lcom/nuance/swype/input/view/DragHelper;

.field enableSimplifiedMode:Z

.field private enableTraceAlphaGradient:Z

.field private final glowPadding:I

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field protected isContextCandidatesView:Z

.field protected isEmojiKeyboardShown:Z

.field private isEmojiStylePopupKeyboard:Z

.field private isPopupKeyboard:Z

.field protected isPressDownPreviewEnabled:Z

.field private isSlideSelectEnabled:Z

.field protected isTracedGesture:Z

.field private keyPopupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

.field private keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

.field private keyPreviewStyleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

.field private keyboardBeingDragged:Z

.field private lowEndDeviceBuild:Z

.field protected mAbortKey:Z

.field protected mAltShadowColor:I

.field protected mAltShadowRadius:F

.field protected mAlternateCharPopup:Landroid/widget/PopupWindow;

.field private mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field public mCurrentIndex:I

.field public mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCursorString:Ljava/lang/String;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field public mFlickerPopup:I

.field private mGlow:Landroid/graphics/drawable/Drawable;

.field public final mHandler:Landroid/os/Handler;

.field private mHandlerHoverExit:Landroid/os/Handler;

.field private mHoverExitRunnable:Ljava/lang/Runnable;

.field public mHshPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/KeyboardViewEx$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private mIconRecolor:I

.field private mIconRecolorFunction:I

.field protected mIgnoreDraw:Z

.field public mIme:Lcom/nuance/swype/input/IME;

.field public mInMultiTap:Z

.field public mInvalidIndex:I

.field public mInvalidKey:I

.field public mInvalidTapCount:I

.field public mIsClearKeyLabelUpdated:Z

.field public mIsDelimiterKeyLabelUpdated:Z

.field protected mIsTracing:Z

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyBorder:Landroid/graphics/drawable/Drawable;

.field protected final mKeyIndices:[I

.field private final mKeyPaint:Landroid/graphics/Paint;

.field public mKeyRepeated:Z

.field private mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

.field public mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

.field public mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

.field public mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mLastEvent:I

.field private mLastHoverExitPending:Z

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field public mLongPressTimeout:I

.field protected mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

.field private final mMiniKeyboardCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/android/util/LruCache",
            "<",
            "Ljava/lang/CharSequence;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field protected mMiniKeyboardOnScreen:Z

.field public mOffsetInWindow:[I

.field private final mPadding:Landroid/graphics/Rect;

.field private mPopupCharSize:I

.field private mPopupKeyTextColor:I

.field private final mPopupKeyboard:Landroid/widget/PopupWindow;

.field public mPopupLayout:I

.field protected mPopupParent:Landroid/view/View;

.field public mPopupTextColor:I

.field private mPopupTextSize:I

.field protected mPreTraceAlreadDispatched:Z

.field private mPreviewHeight:I

.field private final mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewLayout:I

.field private mPreviewOffset:I

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewView:Lcom/nuance/swype/widget/PreviewView;

.field private mPreviousKeyIndex:I

.field private mProximityCorrectOn:Z

.field protected mRepeatKeyIndex:I

.field private mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

.field public mShortLongPressTimeout:I

.field public mTapCount:I

.field private mTracePaint:Landroid/graphics/Paint;

.field protected mTracePointerId:I

.field protected mTraceWidth:I

.field private mWindowOffset:[I

.field private mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

.field protected mfDecay:F

.field protected miHighlightTextColor:I

.field public miTraceColor:I

.field protected multiTouchPointerCount:I

.field private final outRect:Landroid/graphics/Rect;

.field private overlayView:Lcom/nuance/swype/view/OverlayView;

.field private final pendingMTDownPointerIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private popupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

.field private popupCharsSimplifiedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

.field protected pressHoldFlickrTimeOut:I

.field private previewHideDelay:I

.field private previewKeyTypeface:Landroid/graphics/Typeface;

.field private previewKeyTypefaceBold:Landroid/graphics/Typeface;

.field private previewShowDelay:I

.field public repeatCount:I

.field private sanitizingFont:Z

.field private secondary_padding_adjustment:I

.field protected showCompleteTrace:Z

.field private slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

.field protected swypeDistanceSum:F

.field private textShadow:Lcom/nuance/swype/input/ShadowEffect;

.field private final typefaceBold:Landroid/graphics/Typeface;

.field private final typefaceNormal:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v0, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/nuance/swype/input/KeyboardViewEx;->KEY_ICON_SKIP_RECOLOR:I

    .line 162
    const-string/jumbo v0, "KeyboardViewEx"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 164
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 670
    new-array v0, v3, [I

    const v1, 0x10100a4

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PRIMARY:[I

    .line 675
    new-array v0, v3, [I

    const v1, 0x10100a5

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_SECONDARY:[I

    .line 680
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PREVIEW:[I

    .line 2316
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "?"

    aput-object v1, v0, v2

    const-string/jumbo v1, "?"

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->drawIconBelowAltExceptions:[Ljava/lang/String;

    .line 2812
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    .line 5703
    const-string/jumbo v0, ""

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->EMPTY_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1002
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1024
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isContextCandidatesView:Z

    .line 172
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->pendingMTDownPointerIds:Ljava/util/Queue;

    .line 565
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 567
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 611
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    .line 629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    .line 656
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    .line 658
    const/16 v2, 0x3c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    .line 664
    const/16 v2, 0x1f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->pressHoldFlickrTimeOut:I

    .line 684
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    .line 694
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 696
    const/16 v2, 0xc

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyIndices:[I

    .line 698
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 700
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 714
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    .line 722
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 772
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidKey:I

    .line 774
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentIndex:I

    .line 776
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidIndex:I

    .line 778
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidTapCount:I

    .line 783
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    .line 788
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    .line 808
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    .line 810
    const v2, -0xffff01

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miTraceColor:I

    .line 812
    const v2, -0xffff01

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    .line 814
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    .line 816
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    .line 822
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isTracedGesture:Z

    .line 830
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsDelimiterKeyLabelUpdated:Z

    .line 832
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsClearKeyLabelUpdated:Z

    .line 838
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    .line 846
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizingFont:Z

    .line 981
    new-instance v2, Lcom/nuance/swype/input/KeyboardViewEx$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/KeyboardViewEx$1;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->handlerCallback:Landroid/os/Handler$Callback;

    .line 989
    new-instance v2, Lcom/nuance/swype/input/ShadowEffect;

    invoke-direct {v2}, Lcom/nuance/swype/input/ShadowEffect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    .line 1847
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    .line 1852
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    .line 3510
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->popupCharsSimplifiedMap:Ljava/util/Map;

    .line 4121
    new-instance v2, Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/swype/util/CoordUtils$CoordMapper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    .line 1026
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->charUtil:Lcom/nuance/swype/util/CharacterUtilities;

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v2}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->key_secondary_character_padding_adjustment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    .line 1034
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPadding(IIII)V

    .line 1036
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx:[I

    sget v7, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    sget v8, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v9, "SwypeReference"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v10

    .line 1041
    .local v10, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    .line 6030
    iget-object v2, v10, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    .line 1046
    .local v17, "n":I
    const/16 v18, 0x0

    .line 1048
    .local v18, "popupCharSizeAdjust":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->preview_popup_show_delay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->preview_popup_hide_delay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->alt_chars_popup_max_col:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsPopupMaxCol:I

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/util/DisplayUtils;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->lowEndDeviceBuild:Z

    .line 1056
    const/16 v19, 0x0

    .line 1058
    .local v19, "typefaceCustom":Landroid/graphics/Typeface;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_197
    move/from16 v0, v17

    if-ge v15, v0, :cond_344

    .line 1059
    invoke-virtual {v10, v15}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v13

    .line 1061
    .local v13, "attr":I
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyBackground:I

    if-ne v13, v2, :cond_1ae

    .line 1062
    invoke-virtual {v10, v13}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1058
    :cond_1ab
    :goto_1ab
    add-int/lit8 v15, v15, 0x1

    goto :goto_197

    .line 1063
    :cond_1ae
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyBorder:I

    if-ne v13, v2, :cond_1bb

    .line 1064
    invoke-virtual {v10, v13}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    goto :goto_1ab

    .line 1065
    :cond_1bb
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewLayout:I

    if-ne v13, v2, :cond_1c9

    .line 1066
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    goto :goto_1ab

    .line 1067
    :cond_1c9
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewOffset:I

    if-ne v13, v2, :cond_1d9

    .line 6169
    iget-object v2, v10, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 1068
    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewOffset:I

    goto :goto_1ab

    .line 1069
    :cond_1d9
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewHeight:I

    if-ne v13, v2, :cond_1e8

    .line 1070
    const/16 v2, 0x50

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewHeight:I

    goto :goto_1ab

    .line 1071
    :cond_1e8
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_popupLayout:I

    if-ne v13, v2, :cond_1f6

    .line 1072
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupLayout:I

    goto :goto_1ab

    .line 1073
    :cond_1f6
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_flickerPopup:I

    if-ne v13, v2, :cond_204

    .line 1074
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mFlickerPopup:I

    goto :goto_1ab

    .line 1075
    :cond_204
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelTextColor:I

    if-ne v13, v2, :cond_212

    .line 1076
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextColor:I

    goto :goto_1ab

    .line 1077
    :cond_212
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelTextSize:I

    if-ne v13, v2, :cond_221

    .line 1078
    const/16 v2, 0xa

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextSize:I

    goto :goto_1ab

    .line 1079
    :cond_221
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelCharSize:I

    if-ne v13, v2, :cond_231

    .line 1080
    const/16 v2, 0xa

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    goto/16 :goto_1ab

    .line 1081
    :cond_231
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelCharSizeAdjustment:I

    if-ne v13, v2, :cond_23c

    .line 1082
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v18

    goto/16 :goto_1ab

    .line 1083
    :cond_23c
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_traceTrail:I

    if-ne v13, v2, :cond_24d

    .line 1085
    const v2, -0xffff01

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miTraceColor:I

    goto/16 :goto_1ab

    .line 1086
    :cond_24d
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_highlightedKeyTextColor:I

    if-ne v13, v2, :cond_25e

    .line 1088
    const v2, -0xffff01

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    goto/16 :goto_1ab

    .line 1089
    :cond_25e
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_traceWidth:I

    if-ne v13, v2, :cond_26e

    .line 1091
    const/16 v2, 0x10

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    goto/16 :goto_1ab

    .line 1092
    :cond_26e
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_shadowStyle:I

    if-ne v13, v2, :cond_286

    .line 1093
    new-instance v2, Lcom/nuance/swype/input/ShadowEffect;

    new-instance v3, Lcom/nuance/swype/input/ShadowProps;

    sget v4, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_shadowStyle:I

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10, v4}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Lcom/nuance/swype/plugin/TypedArrayWrapper;I)V

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/ShadowEffect;-><init>(Lcom/nuance/swype/input/ShadowProps;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    goto/16 :goto_1ab

    .line 1094
    :cond_286
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_popupBackgroundShadowStyle:I

    if-ne v13, v2, :cond_299

    .line 1099
    new-instance v2, Lcom/nuance/swype/input/ShadowProps;

    sget v3, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_popupBackgroundShadowStyle:I

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10, v3}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Lcom/nuance/swype/plugin/TypedArrayWrapper;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->popupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    goto/16 :goto_1ab

    .line 1101
    :cond_299
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupBackgroundShadowStyle:I

    if-ne v13, v2, :cond_2ac

    .line 1102
    new-instance v2, Lcom/nuance/swype/input/ShadowProps;

    sget v3, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupBackgroundShadowStyle:I

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10, v3}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Lcom/nuance/swype/plugin/TypedArrayWrapper;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPopupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    goto/16 :goto_1ab

    .line 1104
    :cond_2ac
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_altShadowRadius:I

    if-ne v13, v2, :cond_2bb

    .line 1105
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    goto/16 :goto_1ab

    .line 1106
    :cond_2bb
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_altShadowColor:I

    if-ne v13, v2, :cond_2cc

    .line 1107
    const v2, 0x4c010101    # 3.3817604E7f

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowColor:I

    goto/16 :goto_1ab

    .line 1108
    :cond_2cc
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_fontAssetFileName:I

    if-ne v13, v2, :cond_304

    .line 7051
    iget-object v2, v10, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v2, :cond_2fd

    .line 7052
    iget-object v2, v10, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TypedValue;

    .line 7053
    if-eqz v2, :cond_2fd

    .line 7054
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {v2}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedText(Landroid/util/TypedValue;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7055
    if-eqz v2, :cond_2fb

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, "assetFileName":Ljava/lang/String;
    :goto_2eb
    if-eqz v12, :cond_1ab

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v19

    goto/16 :goto_1ab

    .line 7055
    .end local v12    # "assetFileName":Ljava/lang/String;
    :cond_2fb
    const/4 v12, 0x0

    goto :goto_2eb

    .line 7058
    :cond_2fd
    iget-object v2, v10, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2eb

    .line 1114
    :cond_304
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_isPopupKeyboard:I

    if-ne v13, v2, :cond_313

    .line 1115
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    goto/16 :goto_1ab

    .line 1116
    :cond_313
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_isEmojiStylePopupKeyboard:I

    if-ne v13, v2, :cond_322

    .line 1117
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiStylePopupKeyboard:Z

    goto/16 :goto_1ab

    .line 1118
    :cond_322
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_background:I

    if-eq v13, v2, :cond_1ab

    .line 1122
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_iconRecolorFunction:I

    if-ne v13, v2, :cond_335

    .line 1123
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIconRecolorFunction:I

    goto/16 :goto_1ab

    .line 1124
    :cond_335
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_iconRecolor:I

    if-ne v13, v2, :cond_1ab

    .line 1125
    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIconRecolor:I

    goto/16 :goto_1ab

    .line 1129
    .end local v13    # "attr":I
    :cond_344
    if-nez v19, :cond_4da

    .line 1130
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultTypefaceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 1131
    .local v14, "customFontName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4cc

    .line 1132
    const/4 v2, 0x0

    invoke-static {v14, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    .line 1133
    const/4 v2, 0x1

    invoke-static {v14, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    .line 1143
    .end local v14    # "customFontName":Ljava/lang/String;
    :goto_362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypeface:Landroid/graphics/Typeface;

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypefaceBold:Landroid/graphics/Typeface;

    .line 1146
    new-instance v2, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8022
    iget-object v4, v10, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    .line 1146
    invoke-direct {v2, v3, v4}, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPreviewStyleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->initKeyPrevManager()V

    .line 1148
    invoke-virtual {v10}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 1151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    .line 1159
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    .line 1160
    .local v11, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v2, Lcom/nuance/swype/input/R$attr;->traceAlphaGradientEnabled:I

    invoke-virtual {v11, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->enableTraceAlphaGradient:Z

    .line 1161
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$attr;->glow:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 1162
    sget v2, Lcom/nuance/swype/input/R$attr;->glowStretch:I

    invoke-virtual {v11, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDimension(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->glowPadding:I

    .line 1164
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 1165
    .local v16, "minTraceWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    move/from16 v0, v16

    if-ge v2, v0, :cond_3dc

    .line 1166
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    .line 1169
    :cond_3dc
    new-instance v2, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->prepareAltPopup()V

    .line 1175
    new-instance v2, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1176
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    if-eqz v2, :cond_4e8

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->preparePreviewPopup()V

    .line 1181
    :goto_40e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1184
    new-instance v2, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressAllowed()Z

    move-result v2

    if-nez v2, :cond_4ef

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1192
    :goto_43f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1196
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 1197
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_slide_select_popup:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled:Z

    .line 1203
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 1204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->accessibility_note_Context:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCursorString:Ljava/lang/String;

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->animate_fade_trace:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4be

    .line 1209
    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    .line 1212
    :cond_4be
    sget v2, Lcom/nuance/swype/input/R$attr;->popupKeyTextColor:I

    invoke-virtual {v11, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyTextColor:I

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->checkAccessibility()V

    .line 1215
    return-void

    .line 1135
    .end local v11    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v16    # "minTraceWidth":I
    .restart local v14    # "customFontName":Ljava/lang/String;
    :cond_4cc
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    .line 1136
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    goto/16 :goto_362

    .line 1140
    .end local v14    # "customFontName":Ljava/lang/String;
    :cond_4da
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    goto/16 :goto_362

    .line 1179
    .restart local v11    # "app":Lcom/nuance/swype/input/IMEApplication;
    .restart local v16    # "minTraceWidth":I
    :cond_4e8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    goto/16 :goto_40e

    .line 1189
    :cond_4ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    goto/16 :goto_43f
.end method

.method private SpeakContextAroundCursor(II)V
    .registers 16
    .param p1, "numWordsBeforeCursor"    # I
    .param p2, "numWordsAfterCursor"    # I

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x66

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 5604
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    .line 5605
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_bf

    .line 5609
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v7

    if-eqz v7, :cond_64

    .line 5610
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRestrictGetTextLengthFromCursor()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 5611
    invoke-interface {v5, v8, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5612
    .local v3, "cs_before":Ljava/lang/CharSequence;
    invoke-interface {v5, v8, v11}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5617
    .local v2, "cs_after":Ljava/lang/CharSequence;
    :goto_24
    const-string/jumbo v1, ""

    .line 5618
    .local v1, "announcementBeforeCursor":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 5619
    .local v0, "announcementAfterCursor":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 5620
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5621
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    if-ge v7, p1, :cond_6d

    array-length v4, v6

    .line 5622
    .local v4, "i":I
    :goto_43
    if-lez v4, :cond_6f

    .line 5623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    sub-int/2addr v8, v4

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5622
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 5614
    .end local v0    # "announcementAfterCursor":Ljava/lang/String;
    .end local v1    # "announcementBeforeCursor":Ljava/lang/String;
    .end local v2    # "cs_after":Ljava/lang/CharSequence;
    .end local v3    # "cs_before":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_64
    invoke-interface {v5, v9, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5615
    .restart local v3    # "cs_before":Ljava/lang/CharSequence;
    invoke-interface {v5, v9, v11}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "cs_after":Ljava/lang/CharSequence;
    goto :goto_24

    .restart local v0    # "announcementAfterCursor":Ljava/lang/String;
    .restart local v1    # "announcementBeforeCursor":Ljava/lang/String;
    .restart local v6    # "parts":[Ljava/lang/String;
    :cond_6d
    move v4, p1

    .line 5621
    goto :goto_43

    .line 5627
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_6f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a7

    .line 5628
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5629
    .restart local v6    # "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_85
    array-length v7, v6

    if-ge v4, v7, :cond_a7

    if-ge v4, p2, :cond_a7

    .line 5630
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5629
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 5633
    .end local v4    # "i":I
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_a7
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCursorString:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    aput-object v0, v10, v12

    .line 5634
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 5633
    invoke-virtual {v7, v8, v9, v12}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5636
    .end local v0    # "announcementAfterCursor":Ljava/lang/String;
    .end local v1    # "announcementBeforeCursor":Ljava/lang/String;
    .end local v2    # "cs_after":Ljava/lang/CharSequence;
    .end local v3    # "cs_before":Ljava/lang/CharSequence;
    :cond_bf
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/KeyboardViewEx;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    return p1
.end method

.method private adjustShift(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 4759
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 4760
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4761
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->currentLanguageSupportsCapitalization()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4762
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4764
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_1d
    return-object p1
.end method

.method private bezierTracePath(Ljava/util/List;)Landroid/graphics/Path;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 2618
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 2619
    .local v6, "path":Landroid/graphics/Path;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 2620
    .local v8, "size":I
    add-int/lit8 v9, v8, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 2621
    .local v7, "point":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2622
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getNumTracePoints(Ljava/util/Collection;)I

    move-result v5

    .line 2623
    .local v5, "numPoints":I
    const/4 v3, 0x1

    .local v3, "n":I
    add-int/lit8 v0, v8, -0x2

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_51

    if-ge v3, v5, :cond_51

    .line 2624
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2625
    .local v4, "nextPoint":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 2626
    .local v1, "midX":F
    iget v9, v7, Landroid/graphics/Point;->y:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 2627
    .local v2, "midY":F
    const/4 v9, 0x1

    if-ne v3, v9, :cond_47

    .line 2628
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2632
    :goto_41
    move-object v7, v4

    .line 2623
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2630
    :cond_47
    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_41

    .line 2634
    .end local v1    # "midX":F
    .end local v2    # "midY":F
    .end local v4    # "nextPoint":Landroid/graphics/Point;
    :cond_51
    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2635
    return-object v6
.end method

.method private bufferDrawKeyboard(Landroid/graphics/Canvas;)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v2, :cond_15

    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v2, :cond_15

    .line 1820
    :cond_14
    :goto_14
    return-void

    .line 1717
    :cond_15
    const/4 v14, 0x0

    .line 1719
    .local v14, "currentRow":Lcom/nuance/swype/input/KeyboardEx$Row;
    move-object/from16 v3, p1

    .line 1720
    .local v3, "keyboardCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    .line 1721
    .local v4, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 1722
    .local v7, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v9

    .line 1723
    .local v9, "kbdPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v10

    .line 1724
    .local v10, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v16, v0

    .line 1726
    .local v16, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-nez v2, :cond_3b

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1731
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_235

    .line 1732
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1735
    const/16 v2, 0xff

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1736
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1738
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v2, :cond_6e

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1740
    const/high16 v2, -0x1000000

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1743
    :cond_6e
    const/4 v6, 0x0

    .line 1744
    .local v6, "hideSecondary":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardHideSecondaries()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1745
    const/4 v6, 0x1

    .line 1747
    :cond_82
    const/16 v18, 0x0

    .line 1748
    .local v18, "showNumberRow":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getShowNumberRow()Z

    move-result v2

    if-eqz v2, :cond_b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    if-eqz v2, :cond_b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    .line 1749
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->hasNumRow()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1750
    const/16 v18, 0x1

    .line 1752
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_1ff

    const/4 v15, 0x1

    .line 1753
    .local v15, "isPortrait":Z
    :goto_c5
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v19

    .line 1754
    .local v19, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v15, :cond_205

    .line 1755
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v2

    const v20, 0x3f68f5c3    # 0.91f

    cmpg-float v2, v2, v20

    if-gtz v2, :cond_202

    const/4 v2, 0x1

    .line 1756
    :goto_df
    if-eqz v2, :cond_102

    .line 1757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getLayoutRowCount()I

    move-result v2

    const/16 v20, 0x5

    move/from16 v0, v20

    if-eq v2, v0, :cond_101

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_102

    .line 1760
    :cond_101
    const/4 v6, 0x1

    .line 1763
    :cond_102
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isDoublePinyinMode()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 1764
    const/4 v6, 0x0

    .line 1767
    :cond_109
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nuance/swype/input/KeyboardViewEx;->calcKeyTextScaleFactor(Z)F

    move-result v11

    .line 1769
    .local v11, "keyTestSizeScaleFactor":F
    const/4 v8, -0x1

    .line 1770
    .local v8, "overrideHorizontalPadding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v2

    if-eqz v2, :cond_163

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1771
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isIndianLetterCategory()Z

    move-result v2

    if-nez v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v2

    if-nez v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1772
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v2

    if-nez v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1773
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v2

    if-nez v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1774
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v2

    if-nez v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1775
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v2

    if-nez v2, :cond_162

    if-nez v15, :cond_163

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1776
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v2

    if-eqz v2, :cond_163

    .line 1777
    :cond_162
    const/4 v8, 0x2

    .line 1780
    :cond_163
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1781
    .local v12, "baseLineScaleAdjust":F
    if-nez v15, :cond_17d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardFullDockMode()Z

    move-result v2

    if-eqz v2, :cond_17d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1782
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 1783
    const/high16 v12, 0x3fc00000    # 1.5f

    .line 1786
    :cond_17d
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v17, "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1788
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 1789
    .local v13, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_192
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_21c

    aget-object v5, v16, v20

    .line 1790
    .local v5, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v6, :cond_1aa

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v22, Lcom/nuance/swype/input/R$dimen;->key_content_no_baseline:I

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 1793
    :cond_1aa
    if-eqz v18, :cond_1e4

    if-nez v6, :cond_1e4

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isKeyboardHeightWithinThresholdValue()Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 1794
    iget v2, v13, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v2, v0, :cond_1c8

    iget v2, v13, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_1e4

    .line 1796
    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v22, Lcom/nuance/swype/input/R$dimen;->alt_text_size_no_row_on:I

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 1797
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v22, Lcom/nuance/swype/input/R$dimen;->alt_emoji_icon_size_small:I

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 1801
    :cond_1e4
    iget-object v2, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    if-eq v14, v2, :cond_1f1

    .line 1802
    iget-object v14, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/nuance/swype/input/KeyboardViewEx;->drawRow(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 1806
    :cond_1f1
    iget-boolean v2, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v2, :cond_216

    .line 1807
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    :goto_1fa
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto :goto_192

    .line 1752
    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v8    # "overrideHorizontalPadding":I
    .end local v11    # "keyTestSizeScaleFactor":F
    .end local v12    # "baseLineScaleAdjust":F
    .end local v13    # "config":Landroid/content/res/Configuration;
    .end local v15    # "isPortrait":Z
    .end local v17    # "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v19    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_1ff
    const/4 v15, 0x0

    goto/16 :goto_c5

    .line 1755
    .restart local v15    # "isPortrait":Z
    .restart local v19    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_202
    const/4 v2, 0x0

    goto/16 :goto_df

    :cond_205
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v2

    const v20, 0x3f68f5c3    # 0.91f

    cmpg-float v2, v2, v20

    if-gtz v2, :cond_213

    const/4 v2, 0x1

    goto/16 :goto_df

    :cond_213
    const/4 v2, 0x0

    goto/16 :goto_df

    .restart local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v8    # "overrideHorizontalPadding":I
    .restart local v11    # "keyTestSizeScaleFactor":F
    .restart local v12    # "baseLineScaleAdjust":F
    .restart local v13    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_216
    move-object/from16 v2, p0

    .line 1809
    invoke-virtual/range {v2 .. v12}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKey(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ZLandroid/graphics/Rect;IIIFF)V

    goto :goto_1fa

    .line 1812
    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_21c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_220
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_232

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .restart local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v2, p0

    .line 1813
    invoke-virtual/range {v2 .. v12}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKey(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ZLandroid/graphics/Rect;IIIFF)V

    goto :goto_220

    .line 1816
    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_232
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1819
    .end local v6    # "hideSecondary":Z
    .end local v8    # "overrideHorizontalPadding":I
    .end local v11    # "keyTestSizeScaleFactor":F
    .end local v12    # "baseLineScaleAdjust":F
    .end local v13    # "config":Landroid/content/res/Configuration;
    .end local v15    # "isPortrait":Z
    .end local v17    # "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v18    # "showNumberRow":Z
    .end local v19    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_14
.end method

.method private calcKeyTextScaleFactor(Z)F
    .registers 6
    .param p1, "isPortrait"    # Z

    .prologue
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f51eb85    # 0.82f

    const v0, 0x3f266666    # 0.65f

    .line 1667
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1668
    const v0, 0x3f4ccccd    # 0.8f

    .line 1704
    :cond_14
    :goto_14
    return v0

    .line 1671
    :cond_15
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1673
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1675
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1677
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1679
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1680
    const v0, 0x3f333333    # 0.7f

    goto :goto_14

    .line 1681
    :cond_41
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isRussianOrUkrainLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1682
    const v0, 0x3f733333    # 0.95f

    goto :goto_14

    .line 1683
    :cond_4d
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1684
    if-nez p1, :cond_8d

    move v0, v1

    .line 1685
    goto :goto_14

    .line 1687
    :cond_59
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isIndianLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_63

    move v0, v2

    .line 1688
    goto :goto_14

    .line 1689
    :cond_63
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v2

    .line 1690
    goto :goto_14

    .line 1694
    :cond_6d
    if-eqz p1, :cond_83

    .line 1695
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1696
    :cond_7f
    const v0, 0x3f47ae14    # 0.78f

    goto :goto_14

    .line 1699
    :cond_83
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v1

    .line 1700
    goto :goto_14

    .line 1704
    :cond_8d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_14
.end method

.method private calculateDistance(Ljava/util/List;)D
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)D"
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v10, 0x0

    .line 4294
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4295
    const-wide/16 v10, 0x0

    .line 4315
    :goto_9
    return-wide v10

    .line 4297
    :cond_a
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->swypeDistanceSum:F

    .line 4298
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4299
    .local v0, "display":Landroid/util/DisplayMetrics;
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v9

    .line 4300
    .local v7, "startX":F
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v9

    .line 4302
    .local v8, "startY":F
    const/4 v3, 0x1

    .local v3, "h":I
    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_60

    .line 4303
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 4304
    .local v6, "pt":Landroid/graphics/Point;
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v4, v9

    .line 4305
    .local v4, "hx":F
    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v5, v9

    .line 4307
    .local v5, "hy":F
    sub-float v9, v4, v7

    iget v10, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v9, v10

    .line 4308
    .local v1, "dx":F
    sub-float v9, v5, v8

    iget v10, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v9, v10

    .line 4310
    .local v2, "dy":F
    iget v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->swypeDistanceSum:F

    float-to-double v10, v9

    mul-float v9, v1, v1

    mul-float v12, v2, v2

    add-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v9, v10

    iput v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->swypeDistanceSum:F

    .line 4312
    move v7, v4

    .line 4313
    move v8, v5

    .line 4302
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 4315
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "hx":F
    .end local v5    # "hy":F
    .end local v6    # "pt":Landroid/graphics/Point;
    :cond_60
    iget v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->swypeDistanceSum:F

    float-to-double v10, v9

    goto :goto_9
.end method

.method protected static capsModeToShiftState(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .registers 2
    .param p0, "capsMode"    # I

    .prologue
    .line 1451
    sparse-switch p0, :sswitch_data_c

    .line 1460
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_5
    return-object v0

    .line 1453
    :sswitch_6
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_5

    .line 1457
    :sswitch_9
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_5

    .line 1451
    :sswitch_data_c
    .sparse-switch
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_9
        0x4000 -> :sswitch_9
    .end sparse-switch
.end method

.method private configureAltKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 5
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5420
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5421
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 5422
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PREVIEW:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5423
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->recolorPopupIcon(Landroid/graphics/drawable/Drawable;)V

    .line 5424
    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5425
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Lcom/nuance/swype/widget/PreviewView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5432
    :goto_17
    return-void

    .line 5427
    :cond_18
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPreviewLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->initPreviewText(Lcom/nuance/swype/widget/PreviewView;Ljava/lang/CharSequence;)V

    goto :goto_17
.end method

.method private configureKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 7
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5435
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPreviewText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5436
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5438
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 5439
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PREVIEW:[I

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/nuance/swype/input/KeyboardEx$Key;->getCurrentDrawableState(Z)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/android/compat/ArraysCompat;->addAll([I[I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5440
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->recolorPopupIcon(Landroid/graphics/drawable/Drawable;)V

    .line 5441
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5442
    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5446
    :goto_2a
    return-void

    .line 5444
    :cond_2b
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPreviewText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->initPreviewText(Lcom/nuance/swype/widget/PreviewView;Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method private discardBackCanvas()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1553
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    .line 1554
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v1, :cond_1e

    .line 1555
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1556
    .local v0, "key":I
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/DrawBufferManager;->removeObjectFromCache(I)V

    .line 1558
    .end local v0    # "key":I
    :cond_1e
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1559
    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1561
    :cond_25
    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1563
    return-void
.end method

.method public static distance(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 5
    .param p0, "p1"    # Landroid/graphics/Point;
    .param p1, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 414
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private drawKeyAltIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetrics;)V
    .registers 29
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "highLightKeyArea"    # I
    .param p5, "altLabel"    # Ljava/lang/String;
    .param p6, "keyBounds"    # Landroid/graphics/Rect;
    .param p7, "altIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "fm"    # Landroid/graphics/Paint$FontMetrics;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 2101
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_SECONDARY:[I

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2104
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 2105
    .local v12, "altIconWidth":I
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 2106
    .local v11, "altIconHeight":I
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    if-eqz v2, :cond_1f

    .line 2108
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2117
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    .line 2118
    .local v18, "size":D
    int-to-double v2, v11

    div-double v2, v18, v2

    int-to-double v4, v12

    mul-double/2addr v2, v4

    double-to-int v12, v2

    .line 2119
    move-wide/from16 v0, v18

    double-to-int v11, v0

    .line 2121
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 2122
    .local v17, "w":I
    move/from16 v0, v17

    if-le v12, v0, :cond_44

    .line 2124
    mul-int v2, v17, v11

    div-int v11, v2, v12

    .line 2125
    move/from16 v12, v17

    .line 2129
    :cond_44
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    and-int/lit8 v14, v2, 0x7

    .line 2132
    .local v14, "horGravity":I
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v3, 0xff7

    if-ne v2, v3, :cond_70

    .line 2133
    const/16 v10, 0x30

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v10}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;I)V

    .line 2136
    const v14, 0x800005

    .line 2140
    :cond_70
    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v2, v3

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2142
    .local v13, "altLabelBaselineOffset":I
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v13

    sub-int v16, v2, v11

    .line 2144
    .local v16, "iAltIconY":I
    move-object/from16 v0, p6

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 2145
    .local v15, "iAltIconX":I
    sparse-switch v14, :sswitch_data_d0

    .line 2156
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    .line 2160
    :goto_95
    add-int v2, v15, v12

    add-int v3, v16, v11

    move-object/from16 v0, p7

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2164
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    if-eqz v2, :cond_c7

    .line 2165
    const/16 v2, 0x78

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2169
    :goto_ad
    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2171
    return-void

    .line 2148
    :sswitch_b5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v15, v2

    .line 2149
    goto :goto_95

    .line 2152
    :sswitch_bb
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v2, v3

    add-int/2addr v15, v2

    .line 2153
    goto :goto_95

    .line 2167
    :cond_c7
    const/16 v2, 0xff

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_ad

    .line 2145
    nop

    :sswitch_data_d0
    .sparse-switch
        0x3 -> :sswitch_b5
        0x5 -> :sswitch_bb
        0x800003 -> :sswitch_b5
        0x800005 -> :sswitch_bb
    .end sparse-switch
.end method

.method private drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;I)V
    .registers 20
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "highLightKeyArea"    # I
    .param p5, "altLabel"    # Ljava/lang/String;
    .param p6, "keyBounds"    # Landroid/graphics/Rect;
    .param p7, "fm"    # Landroid/graphics/Paint$FontMetrics;
    .param p8, "vGravity"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 1948
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2021
    :goto_6
    return-void

    .line 1951
    :cond_7
    move-object/from16 v3, p5

    .line 1954
    .local v3, "altLabelStr":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v3, p2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizeFontSize(Ljava/lang/String;Landroid/graphics/Paint;Z)V

    .line 1959
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1960
    .local v8, "availableWidth":I
    invoke-direct {p0, v3, v8, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->shrinkTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V

    .line 1968
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v1, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1970
    move-object/from16 v0, p6

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1971
    .local v10, "iAltLabelY":I
    and-int/lit8 v1, p8, 0x70

    packed-switch v1, :pswitch_data_ea

    .line 1974
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 1976
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->getExcessAboveAscent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    add-int v10, v1, v2

    .line 1985
    :goto_3b
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 1986
    .local v9, "iAltLabelX":I
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    and-int/lit8 v1, v1, 0x7

    sparse-switch v1, :sswitch_data_f0

    .line 1999
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v9, v1

    .line 2000
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2003
    :goto_52
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    iget v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    invoke-static {v3, v1, v2, p2}, Lcom/nuance/swype/util/DrawingUtils;->hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I

    move-result v1

    add-int/2addr v9, v1

    .line 2006
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_83

    .line 2007
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2008
    int-to-float v4, v9

    int-to-float v1, v10

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    .line 2009
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2010
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 2008
    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 2012
    :cond_83
    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v1

    and-int/2addr v1, p4

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2013
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_a1

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2014
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v1

    and-int/2addr v1, p4

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2015
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_e4

    .line 2016
    :cond_a1
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2020
    :goto_a6
    int-to-float v4, v9

    int-to-float v5, v10

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    goto/16 :goto_6

    .line 1979
    .end local v9    # "iAltLabelX":I
    :pswitch_b1
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 1981
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->getExcessBelowDescent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    sub-int v10, v1, v2

    goto/16 :goto_3b

    .line 1989
    .restart local v9    # "iAltLabelX":I
    :sswitch_cb
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v9, v1

    .line 1990
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_52

    .line 1994
    :sswitch_d5
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 1995
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_52

    .line 2018
    :cond_e4
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a6

    .line 1971
    :pswitch_data_ea
    .packed-switch 0x50
        :pswitch_b1
    .end packed-switch

    .line 1986
    :sswitch_data_f0
    .sparse-switch
        0x3 -> :sswitch_cb
        0x5 -> :sswitch_d5
        0x800003 -> :sswitch_cb
        0x800005 -> :sswitch_d5
    .end sparse-switch
.end method

.method private drawKeyBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "keyBackground"    # Landroid/graphics/drawable/Drawable;
    .param p4, "keyBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 2175
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_46

    move v1, v4

    .line 2176
    .local v1, "drawGlow":Z
    :goto_6
    if-eqz v1, :cond_1e

    .line 2177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2178
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingX(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    .line 2179
    .local v2, "glowPaddingX":I
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingY(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 2180
    .local v3, "glowPaddingY":I
    neg-int v5, v2

    neg-int v6, v3

    iget v7, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v2

    iget v8, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v8, v3

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2182
    .end local v2    # "glowPaddingX":I
    .end local v3    # "glowPaddingY":I
    :cond_1e
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2183
    .local v0, "bkgBounds":Landroid/graphics/Rect;
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_32

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v6, :cond_3d

    .line 2184
    :cond_32
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p3, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2186
    :cond_3d
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2187
    if-eqz v1, :cond_45

    .line 2188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2190
    :cond_45
    return-void

    .line 2175
    .end local v0    # "bkgBounds":Landroid/graphics/Rect;
    .end local v1    # "drawGlow":Z
    :cond_46
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v1

    goto :goto_6
.end method

.method private drawKeyBorder(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 8
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2289
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 2312
    :cond_6
    :goto_6
    return-void

    .line 2294
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2295
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2296
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2297
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2301
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_6

    .line 2302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2303
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 2304
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2308
    :goto_58
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    iget v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2309
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 2306
    :cond_6e
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_58
.end method

.method private drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;F[ILandroid/graphics/drawable/Drawable;Landroid/graphics/Rect;I)V
    .registers 22
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "keyTextSizeScaleFactor"    # F
    .param p5, "drawableState"    # [I
    .param p6, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "drawBounds"    # Landroid/graphics/Rect;
    .param p8, "iconGrav"    # I

    .prologue
    .line 2363
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PRIMARY:[I

    move-object/from16 v0, p5

    invoke-static {v6, v0}, Lcom/nuance/android/compat/ArraysCompat;->addAll([I[I)[I

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2365
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2367
    move-object/from16 v0, p6

    instance-of v6, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_cf

    .line 2370
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2402
    :cond_2c
    :goto_2c
    iget-object v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    .line 8211
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 8212
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 8214
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 8215
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 8217
    sub-int v11, v8, v9

    .line 8218
    sub-int v12, v6, v7

    .line 8219
    if-le v11, v12, :cond_1a2

    .line 8220
    if-lez v11, :cond_4c

    .line 8222
    mul-int/2addr v6, v9

    div-int/2addr v6, v8

    .line 8224
    invoke-static {v10, v9, v6}, Lcom/nuance/swype/util/GeomUtil;->setSize(Landroid/graphics/Rect;II)V

    move v8, v9

    .line 8234
    :cond_4c
    :goto_4c
    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, p8

    invoke-static {v9, v8, v0}, Lcom/nuance/swype/util/GeomUtil;->getOffsetX(III)I

    move-result v8

    add-int/2addr v8, v11

    .line 8235
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    invoke-static {v7, v6, v0}, Lcom/nuance/swype/util/GeomUtil;->getOffsetY(III)I

    move-result v6

    add-int/2addr v6, v9

    .line 8237
    invoke-static {v10, v8, v6}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 2403
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2406
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2407
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    if-eqz v6, :cond_1ae

    .line 2408
    const/16 v6, 0x78

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2412
    :goto_95
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    if-nez v6, :cond_b3

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    if-eqz v6, :cond_1c6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v6, v6, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v6, :cond_1c6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v6, v6, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    iget-boolean v6, v6, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-eqz v6, :cond_1c6

    .line 2414
    :cond_b3
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 2416
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2426
    :goto_c6
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2427
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2429
    return-void

    .line 2374
    :cond_cf
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2375
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_133

    .line 2376
    move-object/from16 v0, p3

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v6, v6

    mul-float v6, v6, p4

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2377
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    .line 2378
    .local v2, "fontHeight":F
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-gtz v6, :cond_ff

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    .line 2379
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_133

    .line 2380
    :cond_ff
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v6, :cond_133

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    const/16 v7, 0xfea

    if-eq v6, v7, :cond_133

    .line 2382
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float v6, v2, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 2383
    .local v4, "maxHeight":D
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v4, v6

    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 2384
    .local v3, "scaledWidth":I
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    double-to-int v7, v4

    invoke-static {v6, v3, v7}, Lcom/nuance/swype/util/GeomUtil;->setSize(Landroid/graphics/Rect;II)V

    .line 2389
    .end local v2    # "fontHeight":F
    .end local v3    # "scaledWidth":I
    .end local v4    # "maxHeight":D
    :cond_133
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v6, :cond_2c

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    const/16 v7, 0xfea

    if-ne v6, v7, :cond_2c

    .line 2390
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    iget-boolean v6, v6, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-nez v6, :cond_2c

    .line 2391
    move-object/from16 v0, p3

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v6, v6

    mul-float v6, v6, p4

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2392
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    .line 2393
    .restart local v2    # "fontHeight":F
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-gtz v6, :cond_17d

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    .line 2394
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_2c

    .line 2395
    :cond_17d
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float v6, v2, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 2396
    .restart local v4    # "maxHeight":D
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v4, v6

    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 2397
    .restart local v3    # "scaledWidth":I
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    double-to-int v7, v4

    invoke-static {v6, v3, v7}, Lcom/nuance/swype/util/GeomUtil;->setSize(Landroid/graphics/Rect;II)V

    goto/16 :goto_2c

    .line 8227
    .end local v2    # "fontHeight":F
    .end local v3    # "scaledWidth":I
    .end local v4    # "maxHeight":D
    :cond_1a2
    if-lez v12, :cond_4c

    .line 8229
    mul-int/2addr v8, v7

    div-int v6, v8, v6

    .line 8231
    invoke-static {v10, v6, v7}, Lcom/nuance/swype/util/GeomUtil;->setSize(Landroid/graphics/Rect;II)V

    move v8, v6

    move v6, v7

    goto/16 :goto_4c

    .line 2410
    :cond_1ae
    const/16 v6, 0xff

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_95

    .line 2419
    :cond_1b7
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_c6

    .line 2422
    :cond_1c6
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 2423
    move-object/from16 v0, p3

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyIconRecolor:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx;->recolorIconUsingTheme(Landroid/graphics/drawable/Drawable;II)V

    goto/16 :goto_c6
.end method

.method private drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;FF[ILandroid/graphics/Rect;)V
    .registers 21
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "keyTextSizeScaleFactor"    # F
    .param p6, "baseLineScaleAdjust"    # F
    .param p7, "drawableState"    # [I
    .param p8, "keyBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2326
    invoke-direct {p0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2327
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_7

    .line 2357
    :goto_6
    return-void

    .line 2331
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2332
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2334
    iget v11, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2337
    .local v11, "altHeight":I
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {p3}, Lcom/nuance/swype/input/KeyboardViewEx;->shouldDrawIconBelowAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v10, 0x1

    .line 2340
    .local v10, "adjustBelowAlt":Z
    :goto_24
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    if-lez v1, :cond_52

    .line 2341
    if-eqz v10, :cond_31

    .line 2342
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2344
    :cond_31
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    int-to-float v3, v3

    mul-float v3, v3, p6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2345
    const/16 v9, 0x51

    .line 2355
    .local v9, "iconGrav":I
    :goto_42
    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;F[ILandroid/graphics/drawable/Drawable;Landroid/graphics/Rect;I)V

    goto :goto_6

    .line 2337
    .end local v9    # "iconGrav":I
    .end local v10    # "adjustBelowAlt":Z
    :cond_50
    const/4 v10, 0x0

    goto :goto_24

    .line 2348
    .restart local v10    # "adjustBelowAlt":Z
    :cond_52
    if-eqz v10, :cond_62

    .line 2350
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2351
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v11

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2353
    :cond_62
    const/16 v9, 0x11

    .restart local v9    # "iconGrav":I
    goto :goto_42
.end method

.method private drawKeyLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;IFFI[ILandroid/graphics/Rect;)V
    .registers 28
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "overrideHorPadding"    # I
    .param p6, "keyTextSizeScaleFactor"    # F
    .param p7, "baseLineScaleAdjust"    # F
    .param p8, "highLightKeyArea"    # I
    .param p9, "drawableState"    # [I
    .param p10, "keyBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2197
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2198
    .local v11, "csLabel":Ljava/lang/CharSequence;
    if-eqz v11, :cond_11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2199
    .local v4, "label":Ljava/lang/String;
    :goto_e
    if-nez v4, :cond_13

    .line 2286
    :cond_10
    :goto_10
    return-void

    .line 2198
    .end local v4    # "label":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    goto :goto_e

    .line 2203
    .restart local v4    # "label":Ljava/lang/String;
    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10f

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x9fff

    if-ne v2, v3, :cond_10f

    const/16 v16, 0x1

    .line 2204
    .local v16, "isComponent":Z
    :goto_25
    if-eqz v16, :cond_2c

    .line 2205
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2208
    :cond_2c
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2209
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v2, v2

    mul-float v2, v2, p6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2212
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    .line 2215
    .local v12, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 2217
    .local v10, "availableWidth":I
    const/4 v13, 0x0

    .line 2218
    .local v13, "horPadding":I
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_113

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_113

    .line 2219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2221
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v13, v2, 0x2

    .line 2226
    :cond_64
    :goto_64
    sub-int/2addr v10, v13

    .line 2228
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v10, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->shrinkLabelTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V

    .line 2231
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    if-lez v2, :cond_125

    .line 2232
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    int-to-float v3, v3

    mul-float v3, v3, p7

    float-to-int v3, v3

    sub-int v15, v2, v3

    .line 2238
    .local v15, "iLabelY":I
    :goto_80
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-static {v2, v12}, Lcom/nuance/swype/util/DrawingUtils;->getExcessAboveAscent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v9

    .line 2241
    .local v9, "adjust":I
    if-nez v9, :cond_a1

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-static {v2, v12}, Lcom/nuance/swype/util/DrawingUtils;->getExcessBelowDescent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    neg-int v9, v2

    .line 2245
    :cond_a1
    add-int/2addr v15, v9

    .line 2247
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v14, v2, 0x2

    .line 2249
    .local v14, "iLabelX":I
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    const/16 v3, 0x11

    move-object/from16 v0, p2

    invoke-static {v4, v2, v3, v0}, Lcom/nuance/swype/util/DrawingUtils;->hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I

    move-result v2

    add-int/2addr v14, v2

    .line 2252
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-eqz v2, :cond_cf

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isContextCandidatesView:Z

    if-eqz v2, :cond_d8

    .line 2253
    :cond_cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/ShadowEffect;->set(Landroid/graphics/Paint;)V

    .line 2255
    :cond_d8
    if-eqz v16, :cond_136

    .line 2256
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2257
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2280
    :goto_e9
    int-to-float v5, v14

    int-to-float v6, v15

    move-object/from16 v0, p3

    iget-boolean v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 2282
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-eqz v2, :cond_104

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isContextCandidatesView:Z

    if-eqz v2, :cond_10

    .line 2283
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/ShadowEffect;->reset(Landroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 2203
    .end local v9    # "adjust":I
    .end local v10    # "availableWidth":I
    .end local v12    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v13    # "horPadding":I
    .end local v14    # "iLabelX":I
    .end local v15    # "iLabelY":I
    .end local v16    # "isComponent":Z
    :cond_10f
    const/16 v16, 0x0

    goto/16 :goto_25

    .line 2224
    .restart local v10    # "availableWidth":I
    .restart local v12    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v13    # "horPadding":I
    .restart local v16    # "isComponent":Z
    :cond_113
    if-ltz p5, :cond_119

    move/from16 v13, p5

    goto/16 :goto_64

    :cond_119
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v13, v2, v3

    goto/16 :goto_64

    .line 2234
    :cond_125
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v12, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget v3, v12, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v15, v2

    .restart local v15    # "iLabelY":I
    goto/16 :goto_80

    .line 2260
    .restart local v9    # "adjust":I
    .restart local v14    # "iLabelX":I
    :cond_136
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2261
    if-eqz p8, :cond_158

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2262
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v2

    and-int v2, v2, p8

    sget-object v3, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2263
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_158

    .line 2264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e9

    .line 2266
    :cond_158
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    if-nez v2, :cond_176

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    if-eqz v2, :cond_192

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v2, :cond_192

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    iget-boolean v2, v2, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-eqz v2, :cond_192

    .line 2268
    :cond_176
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 2270
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_e9

    .line 2273
    :cond_187
    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_e9

    .line 2277
    :cond_192
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v2, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_e9
.end method

.method private drawKeyLeftAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;I)V
    .registers 20
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "highLightKeyArea"    # I
    .param p5, "leftAltLabel"    # Ljava/lang/String;
    .param p6, "keyBounds"    # Landroid/graphics/Rect;
    .param p7, "fm"    # Landroid/graphics/Paint$FontMetrics;
    .param p8, "vGravity"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 2027
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2095
    :goto_6
    return-void

    .line 2030
    :cond_7
    move-object/from16 v3, p5

    .line 2032
    .local v3, "altLabelStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2033
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2037
    :cond_1b
    const/4 v1, 0x0

    invoke-direct {p0, v3, p2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizeFontSize(Ljava/lang/String;Landroid/graphics/Paint;Z)V

    .line 2040
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 2041
    .local v8, "availableWidth":I
    invoke-direct {p0, v3, v8, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->shrinkTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V

    .line 2043
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v1, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2044
    move-object/from16 v0, p6

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 2045
    .local v10, "iAltLabelY":I
    and-int/lit8 v1, p8, 0x70

    packed-switch v1, :pswitch_data_fc

    .line 2048
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 2050
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->getExcessAboveAscent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    add-int v10, v1, v2

    .line 2059
    :goto_4d
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 2060
    .local v9, "iAltLabelX":I
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    and-int/lit8 v1, v1, 0x7

    sparse-switch v1, :sswitch_data_102

    .line 2073
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v9, v1

    .line 2074
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2077
    :goto_64
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    iget v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    invoke-static {v3, v1, v2, p2}, Lcom/nuance/swype/util/DrawingUtils;->hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I

    move-result v1

    add-int/2addr v9, v1

    .line 2080
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_95

    .line 2081
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2082
    int-to-float v4, v9

    int-to-float v1, v10

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    .line 2083
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2084
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 2082
    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 2086
    :cond_95
    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v1

    and-int/2addr v1, p4

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2087
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_b3

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2088
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v1

    and-int/2addr v1, p4

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    .line 2089
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_f6

    .line 2090
    :cond_b3
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2094
    :goto_b8
    int-to-float v4, v9

    int-to-float v5, v10

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    goto/16 :goto_6

    .line 2053
    .end local v9    # "iAltLabelX":I
    :pswitch_c3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 2055
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->getExcessBelowDescent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    sub-int v10, v1, v2

    goto/16 :goto_4d

    .line 2063
    .restart local v9    # "iAltLabelX":I
    :sswitch_dd
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v9, v1

    .line 2064
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_64

    .line 2068
    :sswitch_e7
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 2069
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_64

    .line 2092
    :cond_f6
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b8

    .line 2045
    :pswitch_data_fc
    .packed-switch 0x50
        :pswitch_c3
    .end packed-switch

    .line 2060
    :sswitch_data_102
    .sparse-switch
        0x3 -> :sswitch_dd
        0x5 -> :sswitch_e7
        0x800003 -> :sswitch_dd
        0x800005 -> :sswitch_e7
    .end sparse-switch
.end method

.method private drawPaddingBackground(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5675
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v1

    if-gtz v1, :cond_7

    .line 5688
    :goto_6
    return-void

    .line 5678
    :cond_7
    move-object v0, p1

    .line 5679
    .local v0, "keyboardCanvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 5681
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$color;->padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 5683
    .local v6, "color":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 5684
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5685
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 5686
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5687
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6
.end method

.method private drawRow(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Row;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    .line 1837
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 1838
    .local v0, "rowBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    .line 1839
    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$Row;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$Row;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1840
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1842
    :cond_17
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "isMultiline"    # Z

    .prologue
    .line 2671
    if-nez p6, :cond_6

    .line 2672
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2682
    :cond_5
    return-void

    .line 2674
    :cond_6
    const-string/jumbo v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2676
    .local v2, "lines":[Ljava/lang/String;
    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float v1, v3, v4

    .line 2678
    .local v1, "lineHeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 2679
    aget-object v3, v2, v0

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, p4

    invoke-virtual {p1, v3, p3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method private static dumpKeys(Landroid/util/Printer;Lcom/nuance/swype/input/KeyboardEx;Ljava/lang/String;)V
    .registers 15
    .param p0, "out"    # Landroid/util/Printer;
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p2, "subtag"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xfdf

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5747
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_d

    .line 5748
    sget-object p2, Lcom/nuance/swype/input/KeyboardViewEx;->EMPTY_TEXT:Ljava/lang/String;

    .line 5750
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5752
    .local v3, "tag":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "keyboard: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5753
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "; kid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5755
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 5756
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 5757
    .local v2, "k":Lcom/nuance/swype/input/KeyboardEx$Key;
    const-string/jumbo v6, "; "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5758
    iget-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v6, :cond_c7

    iget-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v6, v6

    if-lez v6, :cond_c7

    iget-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v6, v10

    .line 5759
    .local v1, "code":I
    :goto_85
    if-eq v4, v1, :cond_c9

    .line 5760
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5764
    :goto_8a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ":"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    iget v9, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/nuance/swype/input/KeyboardViewEx;->listify([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .end local v1    # "code":I
    :cond_c7
    move v1, v4

    .line 5758
    goto :goto_85

    .line 5762
    .restart local v1    # "code":I
    :cond_c9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    .line 5766
    .end local v1    # "code":I
    .end local v2    # "k":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_e6
    new-array v4, v11, [Ljava/lang/CharSequence;

    aput-object v0, v4, v10

    invoke-static {p0, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->print(Landroid/util/Printer;[Ljava/lang/CharSequence;)V

    .line 5767
    return-void
.end method

.method private dumpViewInfo(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 12
    .param p1, "out"    # Landroid/util/Printer;
    .param p2, "subtag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5730
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_c

    .line 5731
    sget-object p2, Lcom/nuance/swype/input/KeyboardViewEx;->EMPTY_TEXT:Ljava/lang/String;

    .line 5733
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5735
    .local v2, "tag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "keyboardview: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5736
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; kid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5737
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; shown: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5738
    new-array v1, v8, [I

    .line 5739
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 5740
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; sp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->listify([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5741
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; tl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->listify([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5742
    new-array v3, v7, [Ljava/lang/CharSequence;

    aput-object v0, v3, v6

    invoke-static {p1, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->print(Landroid/util/Printer;[Ljava/lang/CharSequence;)V

    .line 5743
    return-void
.end method

.method private ensureBackCanvas(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1567
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-nez v1, :cond_8

    .line 1603
    :cond_7
    :goto_7
    return-void

    .line 1573
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1574
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "ensureBackCanvas(): WARNING: discarding recycled back buffer"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1575
    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1576
    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1579
    :cond_24
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_7

    .line 1585
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ensureBackCanvas(): create buffer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1587
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v1, :cond_88

    .line 1588
    shl-int/lit8 v1, p1, 0x10

    add-int v0, v1, p2

    .line 1589
    .local v0, "key":I
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/DrawBufferManager;->getObjectFromCache(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1591
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1592
    :cond_6a
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->lowEndDeviceBuild:Z

    invoke-static {p1, p2, v1}, Lcom/nuance/swype/util/BitmapUtil;->createDeviceOptimizedBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1593
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/DrawBufferManager;->addObjectToCache(ILjava/lang/Object;)V

    .line 1599
    .end local v0    # "key":I
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5, p1, p2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1600
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_7

    .line 1596
    :cond_88
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->lowEndDeviceBuild:Z

    invoke-static {p1, p2, v1}, Lcom/nuance/swype/util/BitmapUtil;->createDeviceOptimizedBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_79
.end method

.method private static filterKeyLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 4662
    invoke-static {p0}, Lcom/nuance/swype/util/CharacterUtilities;->isThaiCombiningMark(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4667
    .end local p0    # "label":Ljava/lang/CharSequence;
    :cond_16
    return-object p0
.end method

.method private getAltIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4683
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method private getAltKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4710
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    :goto_8
    return v0

    :cond_9
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    goto :goto_8
.end method

.method private getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4690
    const/4 v0, 0x0

    .line 4691
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4692
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 4706
    :cond_9
    :goto_9
    return-object v0

    .line 4694
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4695
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    goto :goto_9

    .line 4697
    :cond_13
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v1, v2, :cond_9

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 4699
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_28

    .line 4700
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabelUpperCase:Ljava/lang/CharSequence;

    .line 4702
    :cond_28
    if-nez v0, :cond_9

    .line 4703
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "label":Ljava/lang/CharSequence;
    iput-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabelUpperCase:Ljava/lang/CharSequence;

    .restart local v0    # "label":Ljava/lang/CharSequence;
    goto :goto_9
.end method

.method private getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4714
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    :goto_8
    return v0

    :cond_9
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    goto :goto_8
.end method

.method private getAltPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4617
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 4618
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4619
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 4620
    if-nez v0, :cond_e

    .line 4621
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 4627
    :cond_e
    :goto_e
    return-object v0

    .line 4623
    :cond_f
    if-nez v0, :cond_e

    .line 4624
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method private getAltPreviewLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4631
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method private getAltText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4718
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    goto :goto_8
.end method

.method private getDefaultSimpleAlternates(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 3513
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupCharsSimplifiedMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3514
    .local v0, "chars":Ljava/lang/CharSequence;
    if-nez v0, :cond_42

    .line 3515
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3516
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3518
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "string/simple_alternates_for_"

    .line 3519
    .local v5, "simplifiedAltPopupCharsPrefix":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3520
    .local v4, "resourceName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3521
    .local v1, "id":I
    if-eqz v1, :cond_3d

    .line 3522
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3524
    :cond_3d
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupCharsSimplifiedMap:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3526
    .end local v1    # "id":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceName":Ljava/lang/String;
    .end local v5    # "simplifiedAltPopupCharsPrefix":Ljava/lang/String;
    :cond_42
    return-object v0
.end method

.method private static getDefaultTypefaceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1017
    const-string/jumbo v1, "string/custom_font_name_"

    .line 1018
    .local v1, "prefix":Ljava/lang/String;
    sget v2, Lcom/nuance/swype/input/R$string;->custom_font_name:I

    invoke-static {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocalizedResourceId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1019
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDisplaySize()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->displaySize:Landroid/graphics/Rect;

    if-nez v0, :cond_17

    .line 3211
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->displaySize:Landroid/graphics/Rect;

    .line 3213
    :cond_17
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->displaySize:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getGlowPaddingX(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 8
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4498
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->glowPadding:I

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getGlowPaddingY(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 8
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4502
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->glowPadding:I

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static getId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5725
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyByKeyCode(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 5193
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v1, :cond_1c

    .line 5194
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v4, v3

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_1c

    aget-object v0, v3, v1

    .line 5195
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_19

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v2

    if-ne v5, p1, :cond_19

    .line 5200
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_18
    return-object v0

    .line 5194
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 5200
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getKeyIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4638
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_8
.end method

.method private getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4647
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4648
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 4657
    .local v0, "label":Ljava/lang/CharSequence;
    :cond_8
    :goto_8
    return-object v0

    .line 4649
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    .line 4650
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 4651
    .restart local v0    # "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_8

    .line 4652
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "label":Ljava/lang/CharSequence;
    iput-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .restart local v0    # "label":Ljava/lang/CharSequence;
    goto :goto_8

    .line 4655
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_20
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .restart local v0    # "label":Ljava/lang/CharSequence;
    goto :goto_8
.end method

.method private static getLocalizedResourceId(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .prologue
    .line 1006
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->createLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, "localeString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "resourceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1009
    .local v0, "id":I
    if-nez v0, :cond_35

    .line 1010
    move v0, p2

    .line 1012
    :cond_35
    return v0
.end method

.method private getPointerIdCreate(I)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 5944
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 5945
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-nez v0, :cond_14

    .line 5946
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .end local v0    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;I)V

    .line 5947
    .restart local v0    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5949
    :cond_14
    return-object v0
.end method

.method private getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4740
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    :goto_c
    return v0

    :cond_d
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    goto :goto_c
.end method

.method private getPopupResId(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5155
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    return v0
.end method

.method private getPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4602
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 4603
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4604
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 4605
    if-nez v0, :cond_e

    .line 4606
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 4612
    :cond_e
    :goto_e
    return-object v0

    .line 4608
    :cond_f
    if-nez v0, :cond_e

    .line 4609
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method private getPreviewText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2893
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-nez v4, :cond_7

    .line 2927
    :cond_6
    :goto_6
    return-object v2

    .line 2897
    :cond_7
    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v4, :cond_35

    .line 2899
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2900
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v4

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-gez v4, :cond_2f

    move v4, v3

    :goto_18
    if-le v5, v4, :cond_6

    .line 2903
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-gez v6, :cond_32

    :goto_22
    aget v3, v5, v3

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2904
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->adjustShift(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_6

    .line 2900
    :cond_2f
    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_18

    .line 2903
    :cond_32
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_22

    .line 2907
    :cond_35
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 2908
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_6

    .line 2909
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2912
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 2914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2916
    .local v1, "newText":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_64

    .line 2917
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_61

    .line 2920
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2916
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 2923
    :cond_64
    move-object v2, v1

    goto :goto_6
.end method

.method private getSlidePopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4745
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    .line 4746
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupResId(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    goto :goto_c
.end method

.method private getThemedLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1286
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method

.method private handleTouchEventCancel(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 4060
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 4061
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    .line 4062
    return-void
.end method

.method private handleTouchEventDown(Landroid/view/MotionEvent;Z)V
    .registers 14
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isMultiTouch"    # Z

    .prologue
    const/4 v10, 0x0

    .line 3945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 3946
    shr-int/lit8 v5, v6, 0x8

    .line 3947
    .local v5, "pointerIndex":I
    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 3949
    .local v4, "pointerId":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    neg-int v1, v6

    .line 3950
    .local v1, "iOffsetX":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v6

    neg-int v2, v6

    .line 3954
    .local v2, "iOffsetY":I
    if-ltz v5, :cond_81

    .line 3955
    if-nez v5, :cond_5f

    if-nez p2, :cond_5f

    .line 3956
    const/4 v6, 0x1

    iput v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    .line 3957
    iput-boolean v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 3962
    :goto_20
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_32

    .line 3963
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    new-instance v7, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-direct {v7, p0, v4}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;I)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3966
    :cond_32
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3969
    .local v3, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->clear()V

    .line 3971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-ge v0, v6, :cond_66

    .line 3972
    new-instance v6, Landroid/graphics/Point;

    invoke-static {p1, v5, v0}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v1

    .line 3973
    invoke-static {p1, v5, v0}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v2

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 3974
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    .line 3972
    invoke-virtual {v3, v6, v8, v9}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3971
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 3959
    .end local v0    # "i":I
    .end local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_5f
    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    goto :goto_20

    .line 3977
    .restart local v0    # "i":I
    .restart local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_66
    new-instance v6, Landroid/graphics/Point;

    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v1

    .line 3978
    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v2

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 3977
    invoke-virtual {v3, v6, v8, v9}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3980
    invoke-virtual {p0, p1, v3, v10}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 3982
    .end local v0    # "i":I
    .end local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_81
    return-void
.end method

.method private handleTouchEventMove(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 3985
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v10

    neg-int v1, v10

    .line 3986
    .local v1, "iOffsetX":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v10

    neg-int v2, v10

    .line 3988
    .local v2, "iOffsetY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 3989
    shr-int/lit8 v8, v10, 0x8

    .line 3990
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 3991
    .local v7, "pointerId":I
    iget-object v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3992
    .local v6, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-nez v6, :cond_1f

    .line 4039
    :cond_1e
    :goto_1e
    return-void

    .line 3996
    :cond_1f
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->size()I

    move-result v3

    .line 3998
    .local v3, "iPathSize":I
    if-lez v3, :cond_1e

    .line 4000
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 4001
    .local v5, "location":[I
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 4002
    invoke-static {p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getRawY(Landroid/view/MotionEvent;)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    sub-int/2addr v10, v11

    if-gez v10, :cond_8b

    .line 4005
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v10

    if-eqz v10, :cond_74

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_74

    .line 4006
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 4007
    .local v0, "extendedPoint":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    iget v10, v0, Landroid/graphics/Point;->x:I

    const/4 v11, 0x0

    aget v11, v5, v11

    sub-int/2addr v10, v11

    add-int/2addr v10, v1

    iget v11, v0, Landroid/graphics/Point;->y:I

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int/2addr v11, v12

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 4014
    .end local v0    # "extendedPoint":Landroid/graphics/Point;
    .local v9, "ptNew":Landroid/graphics/Point;
    :goto_5a
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 4015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p0, v6, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    .line 4032
    :goto_64
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->size()I

    move-result v10

    if-le v10, v3, :cond_1e

    .line 4033
    iget v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e

    .line 4034
    const/4 v10, 0x2

    invoke-virtual {p0, p1, v6, v10}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_1e

    .line 4010
    .end local v9    # "ptNew":Landroid/graphics/Point;
    :cond_74
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v1

    .line 4011
    invoke-static {p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getRawY(Landroid/view/MotionEvent;)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int/2addr v11, v12

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .restart local v9    # "ptNew":Landroid/graphics/Point;
    goto :goto_5a

    .line 4017
    .end local v9    # "ptNew":Landroid/graphics/Point;
    :cond_8b
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_8c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    if-ge v4, v10, :cond_b2

    .line 4018
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-static {p1, v10, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v1

    const/4 v11, 0x0

    .line 4020
    invoke-static {p1, v11, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 4022
    .restart local v9    # "ptNew":Landroid/graphics/Point;
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 4023
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    invoke-virtual {p0, v6, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    .line 4017
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 4026
    .end local v9    # "ptNew":Landroid/graphics/Point;
    :cond_b2
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v1

    const/4 v11, 0x0

    .line 4027
    invoke-static {p1, v11}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 4028
    .restart local v9    # "ptNew":Landroid/graphics/Point;
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 4029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p0, v6, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    goto :goto_64
.end method

.method private handleTouchEventUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 4042
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 4044
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 4045
    shr-int/lit8 v2, v3, 0x8

    .line 4046
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 4047
    .local v1, "pointerId":I
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 4048
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-nez v0, :cond_18

    .line 4057
    :cond_17
    :goto_17
    return-void

    .line 4051
    :cond_18
    if-ltz v2, :cond_17

    .line 4053
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4054
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_17
.end method

.method private hidePreviewKeyNew(I)V
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 5502
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->hide(I)V

    .line 5503
    return-void
.end method

.method protected static indexOfSingleCharLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "popupChars"    # Ljava/lang/CharSequence;

    .prologue
    .line 2790
    if-eqz p0, :cond_1b

    .line 2791
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 2793
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    .line 2796
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private initKeyPrevManager()V
    .registers 5

    .prologue
    .line 1236
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v1, :cond_21

    .line 1248
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1249
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_key_preview_manager:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1250
    if-eqz v1, :cond_21

    .line 1251
    new-instance v1, Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPreviewStyleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/nuance/swype/view/KeyPreviewManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/view/OverlayView;Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;)V

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 1254
    .end local v0    # "context":Landroid/content/Context;
    :cond_21
    return-void
.end method

.method private initPreviewText(Lcom/nuance/swype/widget/PreviewView;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 5407
    invoke-static {p2}, Lcom/nuance/swype/input/KeyboardViewEx;->filterKeyLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 5408
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextColor:I

    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 5409
    invoke-virtual {p1, p2}, Lcom/nuance/swype/widget/PreviewView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5410
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 5411
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 5412
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5417
    :goto_21
    return-void

    .line 5414
    :cond_22
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 5415
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_21
.end method

.method private invalidateKeyByIndex(I)V
    .registers 3
    .param p1, "keyIndex"    # I

    .prologue
    .line 3146
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 3147
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_9

    .line 3148
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 3150
    :cond_9
    return-void
.end method

.method private isKeyboardHeightWithinThresholdValue()Z
    .registers 8

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    .line 5957
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 5958
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v0, v3

    .line 5959
    .local v0, "landscapeHeight":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 5960
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    if-gt v0, v6, :cond_27

    .line 5968
    :cond_26
    :goto_26
    return v2

    .line 5963
    :cond_27
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 5964
    if-le v3, v6, :cond_26

    .line 5968
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 5706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5707
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_1a

    aget-object v1, p0, v2

    .line 5708
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_14

    .line 5709
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5711
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5707
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5713
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static varargs listify([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "items"    # [Ljava/lang/Object;

    .prologue
    .line 5717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-static {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logMinikeyboardInfoForAutomation(Lcom/nuance/swype/input/KeyboardViewEx;II)V
    .registers 17
    .param p1, "miniKeyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 3851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3852
    .local v4, "logMessage":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "Popup keyboard info: [ "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    if-eqz p1, :cond_7d

    .line 3855
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 3856
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const-string/jumbo v1, ""

    .line 3858
    .local v1, "delimiter":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_83

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3859
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    const-string/jumbo v0, "-"

    .line 3860
    .local v0, "code":Ljava/lang/String;
    iget-object v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v8, :cond_3d

    iget-object v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v8, v8

    if-lez v8, :cond_3d

    .line 3861
    iget-object v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3863
    :cond_3d
    iget v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    add-int v5, v8, p2

    .line 3864
    .local v5, "x":I
    iget v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int v6, v8, p3

    .line 3867
    .local v6, "y":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "[%s,%s,%s,%s,%s] "

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget v12, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3868
    const-string/jumbo v1, ","

    .line 3869
    goto :goto_1c

    .line 3871
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "delimiter":Ljava/lang/String;
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_7d
    const-string/jumbo v7, " no keyboard info"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3873
    :cond_83
    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3874
    sget-object v7, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3875
    return-void
.end method

.method private onMultiTouchDown()V
    .registers 3

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4161
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4162
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4163
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4164
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4166
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 4167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 4168
    return-void
.end method

.method private onMultiTouchUp(IJ)Z
    .registers 5
    .param p1, "pointerId"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 4171
    const/4 v0, 0x1

    return v0
.end method

.method private prepareAltPopup()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getThemedLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1301
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1302
    sget v1, Lcom/nuance/swype/input/R$layout;->alternate_char_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/PreviewView;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    .line 1304
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1305
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1306
    return-void
.end method

.method private preparePreviewPopup()V
    .registers 4

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getThemedLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1291
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1292
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/PreviewView;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    .line 1293
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1294
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1296
    return-void
.end method

.method private prepareScrubGesturePopup()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 5004
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-nez v1, :cond_1c

    .line 5005
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5006
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/nuance/swype/input/R$layout;->accessibility_scrub_gesture_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    .line 5008
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->setKeyboardView(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 5010
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1c
    return-void
.end method

.method private static varargs print(Landroid/util/Printer;[Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "out"    # Landroid/util/Printer;
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    .line 5721
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->EMPTY_TEXT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 5722
    return-void
.end method

.method private recolorIcon(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    .line 2470
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2471
    return-void
.end method

.method private recolorIconUsingTheme(Landroid/graphics/drawable/Drawable;II)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I
    .param p3, "keyType"    # I

    .prologue
    .line 2446
    if-nez p2, :cond_a

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIconRecolor:I

    if-nez v1, :cond_a

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIconRecolorFunction:I

    if-eqz v1, :cond_e

    :cond_a
    sget v1, Lcom/nuance/swype/input/KeyboardViewEx;->KEY_ICON_SKIP_RECOLOR:I

    if-ne p2, v1, :cond_f

    .line 2461
    :cond_e
    :goto_e
    return-void

    .line 2453
    :cond_f
    if-eqz p2, :cond_16

    move v0, p2

    .line 2460
    .local v0, "finalColor":I
    :goto_12
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->recolorIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_e

    .line 2456
    .end local v0    # "finalColor":I
    :cond_16
    const/4 v1, 0x4

    if-ne p3, v1, :cond_1c

    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIconRecolorFunction:I

    goto :goto_12

    :cond_1c
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIconRecolor:I

    goto :goto_12
.end method

.method private recolorPopupIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2479
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyTextColor:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->recolorIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 2480
    return-void
.end method

.method private releaseOverlayView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4377
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-eqz v0, :cond_10

    .line 4378
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0}, Lcom/nuance/swype/view/OverlayView;->detach()V

    .line 4379
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 4381
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    .line 4382
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 4384
    :cond_10
    return-void
.end method

.method private repeatKey()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 4320
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 4321
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 4322
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget-wide v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 4324
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 4328
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private resetAllPointers()V
    .registers 8

    .prologue
    .line 3934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 3935
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3936
    .local v1, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eqz v1, :cond_19

    .line 3937
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 3934
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3939
    :cond_19
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mHshPointers "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is null!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_16

    .line 3942
    .end local v1    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_3c
    return-void
.end method

.method private sanitizeFontSize(Ljava/lang/String;Landroid/graphics/Paint;Z)V
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "isLanguageMenuKey"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2488
    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizingFont:Z

    if-nez v4, :cond_6

    .line 2537
    :cond_5
    :goto_5
    return-void

    .line 2491
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2493
    .local v0, "adjustment":F
    if-nez p3, :cond_ac

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 2494
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isIndianLetterCategory()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 2495
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 2496
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 2497
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 2498
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 2499
    :cond_42
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 2500
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v4

    if-nez v4, :cond_62

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v4

    if-nez v4, :cond_62

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 2501
    :cond_62
    const v0, 0x3f733333    # 0.95f

    .line 2518
    :goto_65
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2519
    const v0, 0x3f4ccccd    # 0.8f

    .line 2532
    :cond_70
    :goto_70
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_5

    .line 2533
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    mul-float v3, v4, v0

    .line 2534
    .local v3, "textSize":F
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_5

    .line 2502
    .end local v3    # "textSize":F
    :cond_80
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2503
    const v0, 0x3f59999a    # 0.85f

    goto :goto_65

    .line 2504
    :cond_8c
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 2505
    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_65

    .line 2507
    :cond_98
    const v0, 0x3f99999a    # 1.2f

    goto :goto_65

    .line 2511
    :cond_9c
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 2512
    const v0, 0x3f733333    # 0.95f

    goto :goto_65

    .line 2514
    :cond_a8
    const v0, 0x3f99999a    # 1.2f

    goto :goto_65

    .line 2522
    :cond_ac
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_70

    .line 2523
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_70

    .line 2524
    const-string/jumbo v4, "H"

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v2, v4, v5

    .line 2527
    .local v2, "maxWidth":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2528
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, p1, v6, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2529
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_70
.end method

.method private setMicrophoneKeyIcon()V
    .registers 6

    .prologue
    .line 4509
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 4510
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v1, :cond_3b

    .line 4511
    const/16 v4, 0x193f

    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    .line 4512
    .local v2, "speechKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v2, :cond_3b

    .line 4513
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v3

    .line 4516
    .local v3, "speechprovider":I
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4517
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_3c

    .line 4518
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4522
    :goto_2b
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4523
    instance-of v4, v0, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_42

    .line 4524
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4528
    :goto_38
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4531
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "speechKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "speechprovider":I
    :cond_3b
    return-void

    .line 4520
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "speechKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v3    # "speechprovider":I
    :cond_3c
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2b

    .line 4526
    :cond_42
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_38
.end method

.method private static shouldDrawIconBelowAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 2
    .param p0, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 2320
    const/4 v0, 0x0

    return v0
.end method

.method private showKey(I)V
    .registers 7
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 3046
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v1, :cond_6

    .line 3061
    :cond_5
    :goto_5
    return-void

    .line 3050
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 3052
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_23

    .line 3053
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "showKey - trying to popup when parent has null window token"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_5

    .line 3057
    :cond_23
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {p0, v1, p1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;IZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 3058
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_5

    .line 3059
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopup(Landroid/widget/PopupWindow;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_5
.end method

.method private showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 34
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "popupKeyboardId"    # I
    .param p3, "popupChars"    # Ljava/lang/CharSequence;
    .param p4, "extraKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3612
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 3613
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 3615
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 3617
    const/16 v19, 0x0

    .line 3618
    .local v19, "defaultPos":I
    if-eqz p3, :cond_20

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 3619
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultForAltCharsPopup(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/lang/CharSequence;)I

    move-result v19

    .line 3623
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    .line 3624
    .local v25, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    add-int v4, p2, v19

    move/from16 v0, v25

    mul-int/lit16 v5, v0, 0xff

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/android/util/LruCache;

    .line 3626
    .local v23, "keyPopups":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<Ljava/lang/CharSequence;Landroid/view/View;>;"
    if-eqz v23, :cond_260

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :goto_49
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v3, :cond_2b1

    .line 3630
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getThemedLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v21

    .line 3631
    .local v21, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 3632
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupLayout:I

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3633
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 3634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 3635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setPressDownPreviewEnabled(Z)V

    .line 3636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setDoubleBuffered(Z)V

    .line 3639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setPressDownPreviewEnabled(Z)V

    .line 3641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    new-instance v4, Lcom/nuance/swype/input/KeyboardViewEx$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/nuance/swype/input/KeyboardViewEx$2;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 3696
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_288

    .line 3697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_266

    .line 3699
    if-nez p4, :cond_263

    move/from16 v7, v19

    .line 3700
    .local v7, "idxDefault":I
    :goto_d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsPopupMaxCol:I

    .line 3701
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v5

    add-int v10, v4, v5

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p1

    .line 3700
    invoke-virtual/range {v3 .. v10}, Lcom/nuance/swype/input/SlideSelectPopupManager;->createPopupCharsKeyboard(ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;ILcom/nuance/swype/input/KeyboardEx$Key;II)Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .line 3719
    .end local v7    # "idxDefault":I
    .local v8, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :goto_f1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 3720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 3721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 3724
    invoke-static/range {p0 .. p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v20

    .line 3726
    .local v20, "gravity":I
    and-int/lit8 v3, v20, 0x5

    const/4 v4, 0x5

    if-eq v3, v4, :cond_119

    const v3, 0x800005

    and-int v3, v3, v20

    const v4, 0x800005

    if-ne v3, v4, :cond_2ad

    :cond_119
    const/16 v22, 0x1

    .line 3727
    .local v22, "isRightSide":Z
    :goto_11b
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->popupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    move/from16 v0, v22

    invoke-static {v3, v4, v5, v0}, Lcom/nuance/swype/view/ShadowDrawable;->addBackgroundShadow(Landroid/content/res/Resources;Landroid/view/View;Lcom/nuance/swype/input/ShadowProps;Z)V

    .line 3730
    if-nez v23, :cond_146

    .line 3731
    new-instance v23, Lcom/nuance/android/util/LruCache;

    .end local v23    # "keyPopups":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<Ljava/lang/CharSequence;Landroid/view/View;>;"
    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    .line 3732
    .restart local v23    # "keyPopups":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<Ljava/lang/CharSequence;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    add-int v4, p2, v19

    move/from16 v0, v25

    mul-int/lit16 v5, v0, 0xff

    add-int/2addr v4, v5

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3734
    :cond_146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    .end local v20    # "gravity":I
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .end local v22    # "isRightSide":Z
    :cond_151
    :goto_151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 3746
    .local v18, "closeButton":Landroid/view/View;
    if-eqz v18, :cond_171

    .line 3747
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_2d0

    .line 3749
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3754
    :cond_171
    :goto_171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3755
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getScreenWidth()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3756
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getScreenHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3754
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 3759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    if-nez v3, :cond_19d

    .line 3760
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    .line 3765
    :cond_19d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 3767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    .line 3769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_2d8

    .line 3774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3776
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v27

    .line 3777
    .local v27, "pt":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->map(Landroid/graphics/Point;)V

    .line 3779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->preparePopup(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v26

    .line 3791
    .end local v27    # "pt":Landroid/graphics/Point;
    .local v26, "pos":Landroid/graphics/Point;
    :cond_1fe
    :goto_1fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-gez v3, :cond_2fc

    const/4 v3, 0x0

    :goto_209
    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupOffset(II)V

    .line 3792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_302

    .line 3797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v24

    .line 3798
    .local v24, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v24, :cond_302

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_302

    .line 3799
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_250
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_302

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3800
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_250

    .line 3626
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v18    # "closeButton":Landroid/view/View;
    .end local v24    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v26    # "pos":Landroid/graphics/Point;
    :cond_260
    const/4 v3, 0x0

    goto/16 :goto_49

    .line 3699
    .restart local v21    # "inflater":Landroid/view/LayoutInflater;
    :cond_263
    const/4 v7, -0x1

    goto/16 :goto_d3

    .line 3705
    :cond_266
    new-instance v8, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsPopupMaxCol:I

    .line 3706
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v4

    add-int v16, v3, v4

    const/16 v17, 0x1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v8 .. v17}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;IIIIZ)V

    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    goto/16 :goto_f1

    .line 3711
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :cond_288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_29d

    .line 3712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    const/4 v4, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v4, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->createStaticKeyboard(IILcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    goto/16 :goto_f1

    .line 3715
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :cond_29d
    new-instance v8, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZZZ)V

    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    goto/16 :goto_f1

    .line 3726
    .restart local v20    # "gravity":I
    :cond_2ad
    const/16 v22, 0x0

    goto/16 :goto_11b

    .line 3737
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v20    # "gravity":I
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    :cond_2b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 3738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .line 3739
    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v8, :cond_151

    .line 3740
    invoke-virtual {v8}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    goto/16 :goto_151

    .line 3751
    .restart local v18    # "closeButton":Landroid/view/View;
    :cond_2d0
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_171

    .line 3781
    :cond_2d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_2e8

    .line 3782
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->calcHardkeyPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;

    move-result-object v26

    .restart local v26    # "pos":Landroid/graphics/Point;
    goto/16 :goto_1fe

    .line 3784
    .end local v26    # "pos":Landroid/graphics/Point;
    :cond_2e8
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->calcPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;

    move-result-object v26

    .line 3785
    .restart local v26    # "pos":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_1fe

    .line 3786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IME;->dragLock(Z)V

    goto/16 :goto_1fe

    .line 3791
    :cond_2fc
    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_209

    .line 3808
    :cond_302
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_320

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_320

    .line 3809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3812
    :cond_320
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_335

    .line 3813
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v28

    .line 3814
    .local v28, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v28, :cond_335

    .line 3815
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 3819
    .end local v28    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_335
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 3820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_380

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_356

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v3

    if-eqz v3, :cond_380

    :cond_356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v3

    if-eqz v3, :cond_380

    .line 3822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    if-eqz v3, :cond_380

    .line 3823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->invalidateItem()V

    .line 3824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 3840
    :cond_380
    const/4 v3, 0x1

    return v3
.end method

.method private showPreviewKeyNew(IIZ)V
    .registers 5
    .param p1, "keyIndex"    # I
    .param p2, "pointerId"    # I
    .param p3, "isAlt"    # Z

    .prologue
    .line 5535
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKeyNew(Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 5536
    return-void
.end method

.method private showSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 10
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 3568
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getSlidePopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 3570
    .local v3, "res":I
    if-eqz v3, :cond_e

    .line 3571
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupAdditionalChars(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3572
    .local v2, "popupChars":Ljava/lang/CharSequence;
    if-nez v2, :cond_f

    .line 3605
    .end local v2    # "popupChars":Ljava/lang/CharSequence;
    :cond_e
    :goto_e
    return v4

    .line 3577
    .restart local v2    # "popupChars":Ljava/lang/CharSequence;
    :cond_f
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-nez v5, :cond_1a

    .line 3578
    new-instance v5, Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/SlideSelectPopupManager;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    iput-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 3581
    :cond_1a
    const/4 v1, 0x0

    .line 3583
    .local v1, "extraKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3584
    .local v0, "altPreviewIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_37

    .line 3585
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    .line 3586
    if-eqz v5, :cond_41

    .line 3590
    const/16 v5, -0xc8

    invoke-static {v7, v0, v5}, Lcom/nuance/swype/input/KeyboardEx;->createIconKey(Lcom/nuance/swype/input/KeyboardStyle;Landroid/graphics/drawable/Drawable;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 3591
    const-string/jumbo v5, "smiley"

    iput-object v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    .line 3592
    const-string/jumbo v5, ":-)"

    iput-object v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 3602
    :cond_37
    :goto_37
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3603
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v4

    goto :goto_e

    .line 3594
    :cond_41
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v6, 0xfdf

    if-eq v5, v6, :cond_37

    .line 3596
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    invoke-static {v7, v0, v5}, Lcom/nuance/swype/input/KeyboardEx;->createIconKey(Lcom/nuance/swype/input/KeyboardStyle;Landroid/graphics/drawable/Drawable;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    goto :goto_37
.end method

.method private showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z
    .registers 8
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "res"    # I
    .param p3, "popupChars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 3546
    const/4 v0, 0x0

    .line 3547
    .local v0, "launched":Z
    if-eqz p2, :cond_15

    .line 3548
    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 3549
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3550
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3551
    if-eqz v0, :cond_15

    .line 3553
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 3556
    :cond_15
    return v0
.end method

.method private shrinkLabelTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "availableWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2657
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 2659
    .local v0, "expectedWidth":F
    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_14

    .line 2660
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    .line 2662
    .local v1, "textSize":F
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2667
    .end local v1    # "textSize":F
    :cond_14
    return-void
.end method

.method private shrinkTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "availableWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2644
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 2646
    .local v0, "expectedWidth":F
    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_14

    .line 2647
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    .line 2650
    .local v1, "textSize":F
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2652
    .end local v1    # "textSize":F
    :cond_14
    return-void
.end method

.method private tracePath(Ljava/util/List;)Landroid/graphics/Path;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 2596
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 2597
    .local v3, "path":Landroid/graphics/Path;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 2598
    .local v5, "size":I
    add-int/lit8 v6, v5, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2599
    .local v4, "point":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2600
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getNumTracePoints(Ljava/util/Collection;)I

    move-result v2

    .line 2601
    .local v2, "numPoints":I
    const/4 v1, 0x1

    .local v1, "n":I
    add-int/lit8 v0, v5, -0x2

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_39

    if-ge v1, v2, :cond_39

    .line 2602
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "point":Landroid/graphics/Point;
    check-cast v4, Landroid/graphics/Point;

    .line 2603
    .restart local v4    # "point":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2601
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 2605
    :cond_39
    return-object v3
.end method

.method private upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4770
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v6

    iget-object v3, v6, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 4773
    .local v3, "locale":Ljava/util/Locale;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4774
    .local v4, "upperCaseStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4777
    .local v5, "upperCaseText":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 4778
    .local v2, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v2, v6, :cond_30

    .line 4779
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4780
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 4784
    :cond_30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    if-ge v1, v2, :cond_4d

    .line 4785
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 4786
    .local v0, "ch":C
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->charUtil:Lcom/nuance/swype/util/CharacterUtilities;

    .line 10326
    iget-object v6, v6, Lcom/nuance/swype/util/CharacterUtilities;->unicase:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4b

    const/4 v6, 0x1

    .line 4786
    :goto_43
    if-eqz v6, :cond_48

    .line 4787
    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4784
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 10326
    :cond_4b
    const/4 v6, 0x0

    goto :goto_43

    .line 4791
    .end local v0    # "ch":C
    :cond_4d
    return-object v5
.end method

.method private useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4675
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasShiftedSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public abortKey()V
    .registers 2

    .prologue
    .line 1663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    .line 1664
    return-void
.end method

.method public allowsMoreKey()Z
    .registers 2

    .prologue
    .line 4446
    const/4 v0, 0x1

    return v0
.end method

.method public bufferDrawTrace(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2540
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v3, v11, :cond_cf

    .line 2541
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 2542
    .local v6, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eqz v6, :cond_cb

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected()Z

    move-result v11

    if-eqz v11, :cond_cb

    iget-object v11, v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v11

    if-lez v11, :cond_cb

    .line 2543
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    if-nez v11, :cond_4a

    .line 2544
    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    .line 2545
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2546
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2547
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2548
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2551
    :cond_4a
    iget v11, v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->fading:I

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v2, v11, v12

    .line 2552
    .local v2, "fadeScale":F
    iget v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    int-to-float v11, v11

    mul-float v9, v11, v2

    .line 2553
    .local v9, "widthScaled":F
    const/4 v11, 0x0

    cmpl-float v11, v9, v11

    if-lez v11, :cond_cb

    .line 2554
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    .line 2555
    .local v4, "paint":Landroid/graphics/Paint;
    iget v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miTraceColor:I

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2563
    iget-boolean v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableTraceAlphaGradient:Z

    if-eqz v11, :cond_ba

    iget-object v11, v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 2564
    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->tracePath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v5

    .line 2565
    .local v5, "path":Landroid/graphics/Path;
    :goto_70
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->offset(FF)V

    .line 2568
    iget-boolean v11, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableTraceAlphaGradient:Z

    if-eqz v11, :cond_c5

    .line 2570
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v1, v11, Landroid/util/DisplayMetrics;->density:F

    .line 2571
    .local v1, "density":F
    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float v7, v11, v12

    .line 2572
    .local v7, "scale":F
    mul-float v10, v7, v2

    .line 2575
    .local v10, "widthStart":F
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2576
    move v8, v10

    .local v8, "width":F
    :goto_9e
    cmpg-float v11, v8, v9

    if-gtz v11, :cond_cb

    .line 2577
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2578
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2579
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2580
    .local v0, "alpha":I
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2581
    if-eqz v0, :cond_cb

    .line 2576
    add-float/2addr v8, v7

    goto :goto_9e

    .line 2564
    .end local v0    # "alpha":I
    .end local v1    # "density":F
    .end local v5    # "path":Landroid/graphics/Path;
    .end local v7    # "scale":F
    .end local v8    # "width":F
    .end local v10    # "widthStart":F
    :cond_ba
    iget-object v11, v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->bezierTracePath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v5

    goto :goto_70

    .line 2587
    .restart local v5    # "path":Landroid/graphics/Path;
    :cond_c5
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2588
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2540
    .end local v2    # "fadeScale":F
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "path":Landroid/graphics/Path;
    .end local v9    # "widthScaled":F
    :cond_cb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2593
    .end local v6    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_cf
    return-void
.end method

.method protected calcHardkeyPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;
    .registers 8
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3895
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3897
    .local v0, "rc":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 3898
    .local v1, "x":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 3899
    .local v2, "y":I
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method protected calcKeyTopCenterInWindow(Lcom/nuance/swype/input/KeyboardEx$Key;[I)[I
    .registers 8
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "pos"    # [I

    .prologue
    .line 5464
    if-nez p2, :cond_5

    .line 5465
    const/4 v1, 0x2

    new-array p2, v1, [I

    .line 5467
    :cond_5
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 5468
    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 5469
    .local v0, "xKeyCenter":I
    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    aput v2, p2, v1

    .line 5470
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v3

    iget v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, p2, v1

    .line 5471
    return-object p2
.end method

.method protected calcPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;
    .registers 9
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3880
    iget v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 3881
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 3884
    .local v0, "mPopupX":I
    iget v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 3885
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v1, v4, v5

    .line 3887
    .local v1, "mPopupY":I
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int v2, v4, v5

    .line 3888
    .local v2, "x":I
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int v3, v4, v5

    .line 3890
    .local v3, "y":I
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    sub-int v5, v3, v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method protected canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z
    .registers 6
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "isAlt"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5509
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShown()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v0, v1

    .line 5521
    :cond_b
    :goto_b
    return v0

    .line 5513
    :cond_c
    if-nez p2, :cond_b

    .line 5521
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-nez v2, :cond_b

    :cond_18
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->hasIconDescription()Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_b
.end method

.method public changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V
    .registers 3
    .param p1, "state"    # Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .prologue
    .line 4930
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    move-result-object v0

    .line 4931
    .local v0, "asm":Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->setCurrentView(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 4932
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 4933
    return-void
.end method

.method public checkAccessibility()V
    .registers 2

    .prologue
    .line 4922
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4923
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 4924
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/accessibility/SoundResources;

    .line 4925
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->prepareScrubGesturePopup()V

    .line 4927
    :cond_17
    return-void
.end method

.method public cleanupAccessibility()V
    .registers 3

    .prologue
    .line 5013
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-eqz v0, :cond_1f

    .line 5015
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    if-eqz v0, :cond_1c

    .line 5016
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    .line 5019
    :cond_1c
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 5021
    :cond_1f
    return-void
.end method

.method public cleanupScrubGesture()V
    .registers 3

    .prologue
    .line 5024
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-eqz v0, :cond_10

    .line 5025
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->hideUpperScreenScrubGestureFrame(Z)V

    .line 5027
    :cond_10
    return-void
.end method

.method public clearDrawBufferCache()V
    .registers 2

    .prologue
    .line 5645
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_9

    .line 5646
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/DrawBufferManager;->evictAll()V

    .line 5648
    :cond_9
    return-void
.end method

.method public clearKeyOffsets()V
    .registers 2

    .prologue
    .line 4465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 4466
    return-void
.end method

.method public clearKeyboardState()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 4332
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 4333
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 4334
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 4335
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetAllPointers()V

    .line 4337
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4338
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 4340
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->removeAllPendingActions()V

    .line 4341
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4342
    return-void
.end method

.method public clearMiniKeyboardCache()V
    .registers 2

    .prologue
    .line 5639
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 5640
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5642
    :cond_9
    return-void
.end method

.method protected clipTouchPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 4854
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_22

    iget v0, p1, Landroid/graphics/Point;->y:I

    :goto_7
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 4855
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_f

    iget v1, p1, Landroid/graphics/Point;->x:I

    :cond_f
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 4860
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_21

    .line 4861
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 4863
    :cond_21
    return-void

    :cond_22
    move v0, v1

    .line 4854
    goto :goto_7
.end method

.method public closePopup()V
    .registers 1

    .prologue
    .line 5573
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 5574
    return-void
.end method

.method public closing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4357
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->releaseOverlayView()V

    .line 4358
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupAccessibility()V

    .line 4360
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 4361
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 4363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIgnoreDraw:Z

    .line 4365
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_20

    .line 4366
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 4367
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->closing()V

    .line 4368
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 4371
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    .line 4373
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4374
    return-void
.end method

.method public computeLongPressableTimeout()I
    .registers 5

    .prologue
    .line 3287
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 3288
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    .line 3289
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 3290
    .local v0, "expValue":I
    const/16 v1, 0x64

    .line 3291
    .local v1, "timeOut":I
    if-ltz v0, :cond_1d

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    if-ge v0, v2, :cond_1d

    .line 3292
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    sub-int v1, v2, v0

    .line 3294
    :cond_1d
    return v1
.end method

.method public configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;IZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 6
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "keyIndex"    # I
    .param p3, "isAlt"    # Z

    .prologue
    .line 5372
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 5373
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, p1, v0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_a
    return-object v0

    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z
    .registers 7
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "isAlt"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5377
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5391
    :goto_7
    return v0

    .line 5381
    :cond_8
    if-eqz p3, :cond_18

    .line 5382
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->configureAltKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5387
    :goto_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPopupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-static {v1, p1, v2, v0}, Lcom/nuance/swype/view/ShadowDrawable;->addBackgroundShadow(Landroid/content/res/Resources;Landroid/view/View;Lcom/nuance/swype/input/ShadowProps;Z)V

    .line 5391
    const/4 v0, 0x1

    goto :goto_7

    .line 5384
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_d
.end method

.method protected currentLanguageSupportsCapitalization()Z
    .registers 2

    .prologue
    .line 4866
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentLanguageSupportsCapitalization()Z

    move-result v0

    return v0
.end method

.method public detectAndSendKey(IIJ)V
    .registers 24
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 2815
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-nez v5, :cond_7

    .line 2876
    :cond_6
    :goto_6
    return-void

    .line 2819
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 2820
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 2821
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v9, v5, v4

    .line 2823
    .local v9, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 2825
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    const/16 v6, 0xfdf

    if-eq v5, v6, :cond_45

    .line 2826
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 2835
    :cond_41
    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    goto :goto_6

    .line 2827
    :cond_45
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    if-eqz v5, :cond_53

    .line 2829
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    goto :goto_41

    .line 2830
    :cond_53
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 2831
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_41

    .line 2832
    :cond_69
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 2833
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_41

    .line 2837
    :cond_7f
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 2838
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    .line 2873
    :goto_94
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastSentIndex:I

    .line 2874
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    goto/16 :goto_6

    .line 2840
    :cond_a0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v7

    .line 2841
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v5, :cond_d5

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapHandledInCore()Z

    move-result v5

    if-eqz v5, :cond_103

    .line 2843
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_be

    .line 2850
    :cond_b9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    .line 2854
    :cond_be
    :goto_be
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-ltz v5, :cond_d5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    iget-object v6, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v6, v6

    if-ge v5, v6, :cond_d5

    .line 2855
    iget-object v5, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    aget v7, v5, v6

    .line 2859
    :cond_d5
    if-eqz v9, :cond_dc

    .line 2860
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 2864
    :cond_dc
    const/4 v5, 0x2

    new-array v8, v5, [I

    .line 2865
    .local v8, "keyInfo":[I
    const/4 v5, 0x0

    aput p1, v8, v5

    .line 2866
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftGestureOffset()I

    move-result v6

    add-int v6, v6, p2

    aput v6, v8, v5

    .line 2868
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    const/4 v6, 0x0

    aget v6, v8, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 2869
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    const/4 v6, 0x1

    aget v6, v8, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 2871
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    move-object/from16 v5, p0

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_94

    .line 2847
    .end local v8    # "keyInfo":[I
    :cond_103
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b9

    .line 2848
    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v16, p3

    invoke-virtual/range {v11 .. v17}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_be
.end method

.method public detectAndSendKeyWrapper(IIJ)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 2809
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 2810
    return-void
.end method

.method public dismissPopupKeyboard()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4404
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4405
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setVisibility(I)V

    .line 4406
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4407
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 4408
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_21

    .line 4409
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 4411
    :cond_21
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 4412
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    .line 4414
    :cond_26
    return-void
.end method

.method public dismissPreviewPopup()V
    .registers 2

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_5

    .line 3071
    :cond_4
    :goto_4
    return-void

    .line 3068
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3069
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_4
.end method

.method public dismissSingleAltCharPopup()V
    .registers 2

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_5

    .line 3081
    :cond_4
    :goto_4
    return-void

    .line 3078
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3079
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_4
.end method

.method public displaysAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4579
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4580
    iget-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    if-eqz v2, :cond_d

    .line 4587
    :cond_c
    :goto_c
    return v0

    .line 4585
    :cond_d
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c

    :cond_13
    move v0, v1

    .line 4587
    goto :goto_c
.end method

.method protected drawKey(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ZLandroid/graphics/Rect;IIIFF)V
    .registers 44
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "hideSecondary"    # Z
    .param p5, "padding"    # Landroid/graphics/Rect;
    .param p6, "overrideHorPadding"    # I
    .param p7, "kbdPaddingLeft"    # I
    .param p8, "kbdPaddingTop"    # I
    .param p9, "keyTextSizeScaleFactor"    # F
    .param p10, "baseLineScaleAdjust"    # F

    .prologue
    .line 1858
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v5, :cond_7

    .line 1941
    :cond_6
    :goto_6
    return-void

    .line 1862
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move-object/from16 v0, p3

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v8, v11

    move-object/from16 v0, p3

    iget v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    move-object/from16 v0, p3

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v11, v14

    invoke-virtual {v5, v6, v7, v8, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1866
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getHighlightedKeyArea(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v9

    .line 1869
    .local v9, "highLightedKeyArea":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiStylePopupKeyboard:Z

    if-eqz v5, :cond_14b

    .line 1870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_143

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 1874
    .local v32, "keyBackground":Landroid/graphics/drawable/Drawable;
    :goto_45
    move-object/from16 v0, v32

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isWriting()Z

    move-result v5

    if-nez v5, :cond_160

    const/4 v5, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/KeyboardEx$Key;->getCurrentDrawableState(Z)[I

    move-result-object v29

    .line 1879
    .local v29, "drawableState":[I
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1881
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v30

    .line 1883
    .local v30, "keyBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1885
    move-object/from16 v0, p3

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    add-int v5, v5, p7

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p3

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int v6, v6, p8

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1888
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v32

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1889
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyBorder(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-static {v5, v0}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1896
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->displaysAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    .line 1897
    if-eqz v5, :cond_118

    .line 1898
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 1899
    .local v31, "csAltLabel":Ljava/lang/CharSequence;
    if-eqz v31, :cond_163

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1901
    .local v10, "altLabel":Ljava/lang/String;
    :goto_c4
    move-object/from16 v0, p3

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    int-to-float v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 1905
    .local v13, "fm":Landroid/graphics/Paint$FontMetrics;
    if-nez p4, :cond_18b

    .line 1906
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1907
    .local v12, "altIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_166

    .line 1908
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v13}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetrics;)V

    .line 1916
    :cond_ed
    :goto_ed
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_187

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1917
    .local v19, "leftAltLabel":Ljava/lang/String;
    :goto_fb
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v22, 0x50

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v9

    move-object/from16 v21, v13

    invoke-direct/range {v14 .. v22}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyLeftAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;I)V

    .end local v10    # "altLabel":Ljava/lang/String;
    .end local v12    # "altIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v19    # "leftAltLabel":Ljava/lang/String;
    .end local v31    # "csAltLabel":Ljava/lang/CharSequence;
    :cond_118
    :goto_118
    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p9

    move/from16 v27, p10

    move/from16 v28, v9

    .line 1932
    invoke-direct/range {v20 .. v30}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;IFFI[ILandroid/graphics/Rect;)V

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move-object/from16 v26, p5

    move/from16 v27, p9

    move/from16 v28, p10

    .line 1936
    invoke-direct/range {v22 .. v30}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;FF[ILandroid/graphics/Rect;)V

    .line 1940
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 1870
    .end local v29    # "drawableState":[I
    .end local v30    # "keyBounds":Landroid/graphics/Rect;
    .end local v32    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_143
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    goto/16 :goto_45

    .line 1872
    :cond_14b
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_159

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .restart local v32    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :goto_157
    goto/16 :goto_45

    .end local v32    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    goto :goto_157

    .line 1877
    .restart local v32    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_160
    const/4 v5, 0x0

    goto/16 :goto_53

    .line 1899
    .restart local v29    # "drawableState":[I
    .restart local v30    # "keyBounds":Landroid/graphics/Rect;
    .restart local v31    # "csAltLabel":Ljava/lang/CharSequence;
    :cond_163
    const/4 v10, 0x0

    goto/16 :goto_c4

    .line 1910
    .restart local v10    # "altLabel":Ljava/lang/String;
    .restart local v12    # "altIcon":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    :cond_166
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v22, 0x30

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v13

    invoke-direct/range {v14 .. v22}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;I)V

    goto/16 :goto_ed

    .line 1916
    :cond_187
    const/16 v19, 0x0

    goto/16 :goto_fb

    .line 1924
    .end local v12    # "altIcon":Landroid/graphics/drawable/Drawable;
    :cond_18b
    move-object/from16 v0, p3

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v6, 0xff7

    if-ne v5, v6, :cond_118

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v28, 0x30

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v13

    invoke-direct/range {v20 .. v28}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;I)V

    goto/16 :goto_118
.end method

.method protected dump(Landroid/util/Printer;)V
    .registers 2
    .param p1, "out"    # Landroid/util/Printer;

    .prologue
    .line 5701
    return-void
.end method

.method public enableSimplifiedMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1373
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    .line 1374
    return-void
.end method

.method public findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 7
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;I)",
            "Lcom/nuance/swype/input/KeyboardEx$Key;"
        }
    .end annotation

    .prologue
    .line 4534
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 4535
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p2, :cond_4

    .line 4540
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public finishTrace(I)V
    .registers 7
    .param p1, "pointerId"    # I

    .prologue
    const/16 v4, 0x401

    .line 5870
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 5871
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    if-nez v1, :cond_2b

    .line 5872
    iget-boolean v1, v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->tracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 5873
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5874
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5875
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5878
    :cond_2b
    return-void
.end method

.method public getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .registers 2

    .prologue
    .line 5953
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2

    .prologue
    .line 3904
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_b

    .line 3905
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3908
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .prologue
    .line 3912
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_b

    .line 3913
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3916
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getDefaultForAltCharsPopup(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/lang/CharSequence;)I
    .registers 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "popupChars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, -0x1

    .line 2777
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2779
    .local v0, "altLabel":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v3, :cond_19

    iget-boolean v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    if-nez v3, :cond_19

    move v1, v2

    .line 2780
    .local v1, "idx":I
    :goto_e
    if-ne v2, v1, :cond_18

    .line 2782
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2784
    invoke-static {v2, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->indexOfSingleCharLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 2786
    :cond_18
    return v1

    .line 2779
    .end local v1    # "idx":I
    :cond_19
    invoke-static {v0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->indexOfSingleCharLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_e
.end method

.method public getDefaultKeyInSlideSelectPopup()Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2

    .prologue
    .line 5588
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v0, :cond_b

    .line 5589
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 5591
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 4065
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/swype/input/IME;->getExtendedEventForView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPoint()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 4999
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getFrozenPointerState(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .registers 3
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 5578
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    return-object v0
.end method

.method public getHighlightedKeyArea(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4913
    sget-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v0

    return v0
.end method

.method public getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 2747
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 2748
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v0, v0, p1

    .line 2751
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2742
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyIndexStrict(II)I
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2711
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v3

    .line 2712
    .local v3, "nearestKeyIndices":[I
    array-length v2, v3

    .line 2713
    .local v2, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_20

    .line 2715
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget v5, v3, v0

    aget-object v1, v4, v5

    .line 2716
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-boolean v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_1d

    .line 2717
    aget v4, v3, v0

    .line 2720
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1c
    return v4

    .line 2713
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2720
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_20
    const/4 v4, -0x1

    goto :goto_1c
.end method

.method protected getKeyIndices(II)I
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2724
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2725
    .local v3, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v5, -0x1

    .line 2726
    .local v5, "primaryIndex":I
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v6, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v4

    .line 2727
    .local v4, "nearestKeyIndices":[I
    array-length v2, v4

    .line 2729
    .local v2, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_1d

    .line 2730
    aget v6, v4, v0

    aget-object v1, v3, v6

    .line 2732
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->isInside(II)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-boolean v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v6, :cond_1e

    .line 2733
    aget v5, v4, v0

    .line 2738
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1d
    return v5

    .line 2729
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public getKeyListInSlideSelectPopup()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5596
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v0, :cond_b

    .line 5597
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->getKeyList()Ljava/util/List;

    move-result-object v0

    .line 5599
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyPreviewRectInWindow(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Landroid/graphics/Rect;
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "constrainTop"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v8, 0x1

    .line 5475
    invoke-virtual {p1, v5, v5}, Landroid/view/View;->measure(II)V

    .line 5478
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 5479
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 5478
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5480
    .local v1, "popupWidth":I
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewHeight:I

    .line 5482
    .local v0, "popupHeight":I
    iget v5, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 5483
    .local v3, "x":I
    iget v5, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewOffset:I

    add-int v4, v5, v6

    .line 5487
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->recalculateOffsets()V

    .line 5489
    if-eqz p3, :cond_41

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v5, v5, v8

    add-int/2addr v5, v4

    if-gez v5, :cond_41

    .line 5491
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v5, v5, v8

    neg-int v4, v5

    .line 5494
    :cond_41
    new-instance v2, Landroid/graphics/Rect;

    add-int v5, v3, v1

    add-int v6, v4, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5495
    .local v2, "rc":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 12089
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 12093
    aget v5, v5, v8

    .line 11129
    invoke-static {v2, v6, v5}, Lcom/nuance/swype/util/GeomUtil;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 5497
    return-object v2
.end method

.method public getKeyTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardFontBold()Z

    move-result v0

    .line 1709
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    goto :goto_10
.end method

.method public getKeyboard()Lcom/nuance/swype/input/KeyboardEx;
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    return-object v0
.end method

.method public getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .registers 2

    .prologue
    .line 4936
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;
    .registers 2

    .prologue
    .line 5669
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method public getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4728
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 4730
    .local v0, "code":I
    :goto_8
    const/16 v1, 0x191e

    if-ne v0, v1, :cond_15

    .line 4731
    const/16 v0, 0x3b

    .line 4736
    :cond_e
    :goto_e
    return v0

    .line 4728
    .end local v0    # "code":I
    :cond_f
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    goto :goto_8

    .line 4732
    .restart local v0    # "code":I
    :cond_15
    const/16 v1, 0xfe7

    if-ne v0, v1, :cond_e

    .line 4733
    const/16 v0, 0x2c

    goto :goto_e
.end method

.method public getMaxRowHeight()I
    .registers 6

    .prologue
    .line 5656
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    iget-object v2, v3, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    .line 5657
    .local v2, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    const/4 v0, 0x0

    .line 5658
    .local v0, "max":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 5659
    .local v1, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$Row;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5660
    goto :goto_b

    .line 5661
    .end local v1    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_20
    return v0
.end method

.method protected getNearestKeyIndex(II)I
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2686
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v7, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v5

    .line 2687
    .local v5, "nearestKeyIndices":[I
    array-length v3, v5

    .line 2690
    .local v3, "keyCount":I
    const v6, 0x7fffffff

    .line 2691
    .local v6, "smallestDist":I
    const/4 v4, -0x1

    .line 2692
    .local v4, "nearest":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_c
    if-ge v1, v3, :cond_24

    .line 2693
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget v8, v5, v1

    aget-object v2, v7, v8

    .line 2695
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v7, :cond_21

    .line 2696
    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v0

    .line 2697
    .local v0, "dist":I
    if-ge v0, v6, :cond_21

    .line 2698
    move v6, v0

    .line 2699
    aget v4, v5, v1

    .line 2692
    .end local v0    # "dist":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2703
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_24
    return v4
.end method

.method protected getNumTracePoints(Ljava/util/Collection;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2639
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Point;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2640
    .local v0, "numPoints":I
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    if-eqz v1, :cond_9

    .end local v0    # "numPoints":I
    :goto_8
    return v0

    .restart local v0    # "numPoints":I
    :cond_9
    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method public declared-synchronized getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .registers 2

    .prologue
    .line 1318
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOverlayView()Lcom/nuance/swype/view/OverlayView;
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    return-object v0
.end method

.method public final getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;
    .registers 4

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v0, :cond_14

    .line 1259
    new-instance v0, Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 1261
    :cond_14
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    return-object v0
.end method

.method protected getPopupAdditionalChars(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3470
    const-string/jumbo v0, ""

    .line 3471
    .local v0, "popupChars":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasStandardPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3472
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSymbolSelectPopupEnabledForCurrentLayer()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3474
    const/4 v1, 0x0

    .line 3504
    :goto_10
    return-object v1

    .line 3477
    :cond_11
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v1, :cond_34

    .line 3479
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 3480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 3491
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultSimpleAlternates(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3496
    :cond_2b
    :goto_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3498
    const/4 v0, 0x0

    :cond_32
    :goto_32
    move-object v1, v0

    .line 3504
    goto :goto_10

    .line 3494
    :cond_34
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    goto :goto_2b

    .line 3500
    :cond_37
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v1, :cond_32

    .line 3502
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public final getPopupViewManager()Lcom/nuance/swype/view/PopupViewManager;
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    return-object v0
.end method

.method public final getPopupViewManagerCreate()Lcom/nuance/swype/view/PopupViewManager;
    .registers 4

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v0, :cond_17

    .line 1274
    new-instance v0, Lcom/nuance/swype/view/PopupViewManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/PopupViewManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    .line 1276
    :cond_17
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    return-object v0
.end method

.method public getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x1

    .line 5455
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$fraction;->slide_select_popup_adjust_y_factor:I

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 5456
    .local v0, "adjustYFactor":F
    if-eqz p1, :cond_13

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 5457
    .local v1, "reference":I
    :goto_f
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 5456
    .end local v1    # "reference":I
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getMaxRowHeight()I

    move-result v1

    goto :goto_f
.end method

.method protected getScreenHeight()I
    .registers 2

    .prologue
    .line 3221
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getDisplaySize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method protected getScreenWidth()I
    .registers 2

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getDisplaySize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getScrubGesturView()Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    .registers 2

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    return-object v0
.end method

.method public getShiftGestureOffset()I
    .registers 2

    .prologue
    .line 2879
    const/4 v0, 0x0

    return v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .registers 3

    .prologue
    .line 1430
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1431
    .local v0, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_c

    .line 1432
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    .line 1434
    :cond_c
    return-object v0
.end method

.method public getSingleTouchPressKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/16 v0, 0xfdf

    .line 5395
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    if-eq v1, v0, :cond_f

    .line 5396
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 5402
    :cond_e
    :goto_e
    return v0

    .line 5397
    :cond_f
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v1, v2, :cond_e

    .line 5402
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_e
.end method

.method public getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4722
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    goto :goto_8
.end method

.method protected getVisibleKeys(Lcom/nuance/swype/input/KeyboardEx;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 7
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1377
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 1378
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    .local v3, "visibleKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_20

    .line 1380
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1381
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_1d

    .line 1382
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1386
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v4
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 4417
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4418
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 4419
    const/4 v0, 0x1

    .line 4421
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public handleCallbackMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x19

    const/16 v10, 0x3eb

    const/4 v6, 0x0

    const/16 v8, 0x401

    .line 850
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_174

    .line 978
    :goto_c
    return v6

    .line 852
    :sswitch_d
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->showKey(I)V

    .line 978
    :cond_12
    :goto_12
    const/4 v6, 0x1

    goto :goto_c

    .line 856
    :sswitch_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    goto :goto_12

    .line 860
    :sswitch_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto :goto_12

    .line 864
    :sswitch_1c
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->repeatKey()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 865
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_12

    .line 866
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12

    .line 884
    :sswitch_32
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 885
    .local v2, "keyIndex":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 886
    .local v4, "pointerId":I
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 888
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v7

    .line 889
    if-eqz v7, :cond_6d

    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressEnabled()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 895
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v7

    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v8

    if-ne v7, v8, :cond_12

    .line 899
    if-eqz v1, :cond_61

    iget-object v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v7, v7

    if-lez v7, :cond_61

    iget-object v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v7, v6

    const/16 v7, 0xfe4

    if-ne v6, v7, :cond_12

    .line 903
    :cond_61
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v6, :cond_6d

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 907
    :cond_6d
    if-eqz v1, :cond_12

    .line 908
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 909
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3ed

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 910
    invoke-virtual {p0, v1, v2, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    goto :goto_12

    .line 916
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "keyIndex":I
    .end local v4    # "pointerId":I
    :sswitch_81
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v6

    if-nez v6, :cond_12

    .line 920
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->popupMiniKeyboardOrLongPress()Z

    goto :goto_12

    .line 924
    :sswitch_8b
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->multitapTimeOut()V

    goto :goto_12

    .line 928
    :sswitch_8f
    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    if-nez v6, :cond_9d

    .line 929
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 932
    :cond_9d
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 933
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_b8

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_b8
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 935
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 936
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/view/InputContainerView;->invalidateItem()V

    .line 937
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    goto/16 :goto_12

    .line 943
    :sswitch_dc
    const/4 v5, 0x0

    .line 944
    .local v5, "postFading":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_de
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_11d

    .line 945
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 946
    .local v3, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eqz v3, :cond_10b

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected()Z

    move-result v6

    if-eqz v6, :cond_10b

    iget-object v6, v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v6

    if-lez v6, :cond_10b

    .line 947
    iget v6, v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->radius:F

    iget v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10e

    .line 948
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 944
    :cond_10b
    :goto_10b
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 951
    :cond_10e
    const/4 v5, 0x1

    .line 952
    iget v6, v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->fading:I

    add-int/lit8 v6, v6, -0x23

    iput v6, v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->fading:I

    .line 953
    iget v6, v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->radius:F

    iget v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->radius:F

    goto :goto_10b

    .line 958
    .end local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_11d
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 960
    if-eqz v5, :cond_127

    .line 961
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 963
    :cond_127
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    if-nez v6, :cond_13f

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_13f
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 965
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 966
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/view/InputContainerView;->invalidateItem()V

    .line 967
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    goto/16 :goto_12

    .line 973
    .end local v0    # "i":I
    .end local v5    # "postFading":Z
    :sswitch_163
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v7, v8, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    goto/16 :goto_12

    .line 850
    :sswitch_data_174
    .sparse-switch
        0x68 -> :sswitch_32
        0x6a -> :sswitch_8b
        0x3e9 -> :sswitch_d
        0x3ea -> :sswitch_14
        0x3eb -> :sswitch_1c
        0x3ed -> :sswitch_81
        0x3ee -> :sswitch_18
        0x3f0 -> :sswitch_163
        0x400 -> :sswitch_8f
        0x401 -> :sswitch_dc
    .end sparse-switch
.end method

.method public handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3388
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3389
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3391
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected handleLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;II)V
    .registers 11
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "pointerId"    # I

    .prologue
    const/16 v6, 0x68

    .line 3259
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3260
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 3263
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_45

    .line 3264
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 3265
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    .line 3266
    const/16 v1, 0x64

    .line 3267
    .local v1, "timeOut":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v2

    if-nez v2, :cond_46

    .line 3268
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 3270
    .local v0, "expValue":I
    if-ltz v0, :cond_39

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    if-ge v0, v2, :cond_39

    .line 3271
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    sub-int v1, v2, v0

    .line 3278
    .end local v0    # "expValue":I
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 3279
    invoke-virtual {v3, v6, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    .line 3278
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3283
    .end local v1    # "timeOut":I
    :cond_45
    return-void

    .line 3275
    .restart local v1    # "timeOut":I
    :cond_46
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    goto :goto_39
.end method

.method protected handlePreTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .registers 2
    .param p1, "points"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 4495
    return-void
.end method

.method public handleScrollDown()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4817
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "handleScrollDown"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4818
    return v3
.end method

.method public handleScrollLeft()Z
    .registers 2

    .prologue
    .line 4826
    const/4 v0, 0x0

    return v0
.end method

.method public handleScrollRight()Z
    .registers 2

    .prologue
    .line 4830
    const/4 v0, 0x0

    return v0
.end method

.method public handleScrollUp()Z
    .registers 2

    .prologue
    .line 4822
    const/4 v0, 0x0

    return v0
.end method

.method public handleScrubGestureFrameHoverEventExit(Landroid/view/MotionEvent;ZZ)Z
    .registers 8
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isTouchEventUp"    # Z
    .param p3, "isExitFromBottom"    # Z

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v1

    .line 4961
    .local v1, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v1, :cond_1f

    .line 4962
    if-eqz p2, :cond_21

    .line 4963
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 4964
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 4965
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4974
    .end local v0    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    return v2

    .line 4968
    :cond_21
    if-nez p3, :cond_1f

    .line 4969
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    goto :goto_1f
.end method

.method public handleScrubGestureFrameHoverEventMove(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 4978
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v3

    .line 4979
    .local v3, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v3, :cond_50

    .line 4980
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 4981
    .local v1, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eqz v1, :cond_50

    .line 4982
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 4983
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 4985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v0, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_51

    .line 4986
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    aget v6, v0, v7

    sub-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 4990
    .local v2, "pt":Landroid/graphics/Point;
    :goto_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    .line 4991
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4995
    .end local v0    # "location":[I
    .end local v1    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .end local v2    # "pt":Landroid/graphics/Point;
    :cond_50
    return v7

    .line 4988
    .restart local v0    # "location":[I
    .restart local v1    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_51
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "pt":Landroid/graphics/Point;
    goto :goto_3e
.end method

.method public handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .registers 5
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 4271
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4288
    :goto_6
    return-void

    .line 4275
    :cond_7
    packed-switch p3, :pswitch_data_18

    goto :goto_6

    .line 4277
    :pswitch_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_6

    .line 4281
    :pswitch_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_6

    .line 4285
    :pswitch_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_6

    .line 4275
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4565
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4597
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v1, 0xfdf

    if-eq v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasAltSymbolsForPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4551
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasPrimarySymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4572
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected hasShiftedSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4544
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected hasStandardPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3448
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 3449
    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-ne v0, v1, :cond_12

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasSymbolSelectPopupResource(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4558
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hideKeyPreview(I)V
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 5541
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_1c

    .line 5542
    if-eq p1, v1, :cond_b

    .line 5543
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hidePreviewKeyNew(I)V

    .line 5550
    :cond_a
    :goto_a
    return-void

    .line 5545
    :cond_b
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 15159
    iget-object v0, v1, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 15160
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_a

    .line 15161
    invoke-virtual {v1, v0}, Lcom/nuance/swype/view/KeyPreviewManager;->dismissNow(I)V

    .line 15160
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 5547
    :cond_1c
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5548
    invoke-virtual {p0, v1, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    goto :goto_a
.end method

.method public invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 12
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x0

    .line 3123
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_89

    move v1, v4

    .line 3124
    .local v1, "glowPaddingX":I
    :goto_6
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_8f

    move v2, v4

    .line 3126
    .local v2, "glowPaddingY":I
    :goto_b
    new-instance v0, Landroid/graphics/Rect;

    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    iget v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v8, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v8

    .line 3127
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    iget v8, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v9, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v8, v9

    .line 3128
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3130
    .local v0, "dirtyRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3132
    .local v3, "keyboardRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v0, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 3133
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3135
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate(Landroid/graphics/Rect;)V

    .line 3136
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v4

    if-nez v4, :cond_66

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v4

    if-eqz v4, :cond_88

    :cond_66
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 3138
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v4

    if-eqz v4, :cond_88

    .line 3139
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputContainerView;->invalidateItem()V

    .line 3140
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 3143
    :cond_88
    return-void

    .line 3123
    .end local v0    # "dirtyRect":Landroid/graphics/Rect;
    .end local v1    # "glowPaddingX":I
    .end local v2    # "glowPaddingY":I
    .end local v3    # "keyboardRect":Landroid/graphics/Rect;
    :cond_89
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingX(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v1

    goto/16 :goto_6

    .line 3124
    .restart local v1    # "glowPaddingX":I
    :cond_8f
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingY(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    goto/16 :goto_b
.end method

.method public invalidateKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 4
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v1, -0x1

    .line 1390
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getVisibleKeys(Lcom/nuance/swype/input/KeyboardEx;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1391
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->requestLayout()V

    .line 1392
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 1394
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1396
    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 1397
    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 1398
    return-void
.end method

.method public invalidateKeyboardImage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3110
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 3111
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 3112
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_29
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3114
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 3115
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->invalidateItem()V

    .line 3116
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 3119
    :cond_4b
    return-void
.end method

.method public isAltKeyPopupAllowed(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4917
    const/4 v0, 0x1

    return v0
.end method

.method public isDoublePinyinMode()Z
    .registers 2

    .prologue
    .line 5151
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawBufferManagerSet()Z
    .registers 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmojiKeyboardShown()Z
    .registers 2

    .prologue
    .line 5044
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    return v0
.end method

.method protected isExploreByTouchOn()Z
    .registers 2

    .prologue
    .line 4940
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFullScreenHandWritingView()Z
    .registers 2

    .prologue
    .line 5665
    const/4 v0, 0x0

    return v0
.end method

.method public isHandlingTrace()Z
    .registers 2

    .prologue
    .line 4909
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    return v0
.end method

.method public isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 6
    .param p1, "pressedkey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v1, 0x0

    .line 3225
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v2, :cond_6

    .line 3234
    :cond_5
    :goto_5
    return v1

    .line 3228
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3231
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    .line 3232
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v0

    .line 3234
    .local v0, "isSupportingAutoSpace":Z
    const/16 v2, 0x8

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public isMultitapHandledInCore()Z
    .registers 2

    .prologue
    .line 2886
    const/4 v0, 0x1

    return v0
.end method

.method public isMultitapping()Z
    .registers 2

    .prologue
    .line 4425
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    return v0
.end method

.method public isPopupKeyboardShowing()Z
    .registers 2

    .prologue
    .line 4813
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

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

.method public isPressDownPreviewEnabled()Z
    .registers 2

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    return v0
.end method

.method public isPressHoldFlickrMessage()Z
    .registers 2

    .prologue
    .line 4809
    const/4 v0, 0x0

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .registers 2

    .prologue
    .line 1510
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .registers 3

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    .line 1447
    .local v0, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected isShortPressState(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2800
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v1, :cond_16

    .line 2801
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 9228
    invoke-virtual {v1, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v1

    .line 9229
    if-eqz v1, :cond_14

    .line 10101
    iget v1, v1, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 2801
    :goto_f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    .line 2805
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v1, v0

    .line 9232
    goto :goto_f

    .line 2805
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_13
.end method

.method public isSlideSelectEnabled()Z
    .registers 2

    .prologue
    .line 3400
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled:Z

    return v0
.end method

.method public isSupportMultitouchGesture()Z
    .registers 2

    .prologue
    .line 4834
    const/4 v0, 0x0

    return v0
.end method

.method protected isSwypingSupportedAndEnabled()Z
    .registers 2

    .prologue
    .line 4470
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTraceInputPreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected isSymbolSelectPopupEnabledForCurrentLayer()Z
    .registers 2

    .prologue
    .line 3458
    const/4 v0, 0x1

    return v0
.end method

.method public isTraceInputEnabled()Z
    .registers 2

    .prologue
    .line 4482
    const/4 v0, 0x0

    return v0
.end method

.method protected isTraceInputPreferenceEnabled()Z
    .registers 2

    .prologue
    .line 4486
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 4487
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isSwypingEnabled()Z

    move-result v0

    return v0
.end method

.method public isTracing()Z
    .registers 2

    .prologue
    .line 4799
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    return v0
.end method

.method public isWriteInputEnabled()Z
    .registers 2

    .prologue
    .line 4795
    const/4 v0, 0x0

    return v0
.end method

.method public isWriting()Z
    .registers 2

    .prologue
    .line 4804
    const/4 v0, 0x0

    return v0
.end method

.method public miniKeyboardOnKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5205
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_7

    .line 5206
    const/4 v0, 0x0

    .line 5221
    :cond_6
    :goto_6
    return v0

    .line 5209
    :cond_7
    const/16 v1, 0x15

    if-eq p1, v1, :cond_6

    const/16 v1, 0x16

    if-eq p1, v1, :cond_6

    const/16 v1, 0x13

    if-eq p1, v1, :cond_6

    const/16 v1, 0x14

    if-eq p1, v1, :cond_6

    const/16 v1, 0x42

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_6

    .line 5216
    const/16 v1, 0x43

    if-eq p1, v1, :cond_2b

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_2b

    const/16 v1, 0x70

    if-ne p1, v1, :cond_6

    .line 5218
    :cond_2b
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto :goto_6
.end method

.method public miniKeyboardOnKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5226
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "miniKeyboardOnKeyUp(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5227
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v2, :cond_20

    .line 5243
    :cond_1f
    :goto_1f
    return v0

    .line 5231
    :cond_20
    const/4 v2, 0x4

    if-eq p1, v2, :cond_27

    const/16 v2, 0x6f

    if-ne p1, v2, :cond_38

    .line 5232
    :cond_27
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "BACK or ESCAPE (dismiss popup)"

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5233
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    move v0, v1

    .line 5234
    goto :goto_1f

    .line 5237
    :cond_38
    const/16 v1, 0x15

    if-eq p1, v1, :cond_50

    const/16 v1, 0x16

    if-eq p1, v1, :cond_50

    const/16 v1, 0x13

    if-eq p1, v1, :cond_50

    const/16 v1, 0x14

    if-eq p1, v1, :cond_50

    const/16 v1, 0x42

    if-eq p1, v1, :cond_50

    const/16 v1, 0x3e

    if-ne p1, v1, :cond_1f

    .line 5240
    :cond_50
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method protected movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z
    .registers 6
    .param p1, "ptr"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "ptNew"    # Landroid/graphics/Point;
    .param p3, "time"    # J

    .prologue
    .line 3395
    invoke-virtual {p1, p2, p3, p4}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3396
    const/4 v0, 0x1

    return v0
.end method

.method public multitapClearInvalid()V
    .registers 2

    .prologue
    .line 4450
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidKey:I

    .line 4451
    return-void
.end method

.method public multitapIsInvalid()Z
    .registers 3

    .prologue
    .line 4454
    const/4 v0, -0x1

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidKey:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public multitapTimeOut()V
    .registers 2

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_9

    .line 4459
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 4461
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4462
    return-void
.end method

.method protected notifyHardwareKeyboardActionListener(I[I)V
    .registers 4
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 5553
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_9

    .line 5554
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onHardwareCharKey(I[I)V

    .line 5556
    :cond_9
    return-void
.end method

.method public declared-synchronized notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .registers 16
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 2962
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_f

    .line 2964
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 2965
    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 2967
    :cond_f
    monitor-exit p0

    return-void

    .line 2962
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 2945
    monitor-enter p0

    if-nez p1, :cond_5

    .line 2957
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 2949
    :cond_5
    :try_start_5
    instance-of v0, p0, Lcom/nuance/swype/input/AlphaInputView;

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 2950
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    goto :goto_3

    .line 2945
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2952
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_3

    .line 2953
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    .line 2954
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_1e

    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 4388
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4389
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v0, :cond_12

    .line 4390
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    .line 4391
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/view/OverlayView;->attach(Landroid/view/View;)V

    .line 4392
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->initKeyPrevManager()V

    .line 4394
    :cond_12
    return-void
.end method

.method public onBeginDrag()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4882
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onBeginDrag(): XXX"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4883
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_17

    .line 4884
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 4886
    :cond_17
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 4887
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 4888
    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    .line 4889
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 4890
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1520
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_11

    .line 1521
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->dragLock(Z)V

    .line 1523
    :cond_11
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 4399
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4400
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->closing()V

    .line 4401
    return-void
.end method

.method public onDrag(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4895
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1608
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1610
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v4

    .line 1611
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v2

    .line 1613
    .local v2, "height":I
    if-lez v4, :cond_11

    if-gtz v2, :cond_12

    .line 1648
    :cond_11
    :goto_11
    return-void

    .line 1618
    :cond_12
    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->ensureBackCanvas(II)V

    .line 1620
    iget-boolean v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-nez v5, :cond_63

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    if-eqz v5, :cond_63

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    .line 1622
    invoke-virtual {v5, p0}, Lcom/nuance/swype/input/view/DragHelper;->shouldUseDragPaint(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_63

    const/4 v0, 0x1

    .line 1623
    .local v0, "applyDragPaintViaLayer":Z
    :goto_26
    if-eqz v0, :cond_33

    .line 1626
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/view/DragHelper;->getDragPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {p1, v3, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 1629
    :cond_33
    iget-boolean v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v5, :cond_65

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1630
    .local v1, "drawCanvas":Landroid/graphics/Canvas;
    :goto_39
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->bufferDrawKeyboard(Landroid/graphics/Canvas;)V

    .line 1631
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->drawPaddingBackground(Landroid/graphics/Canvas;)V

    .line 1633
    iget-boolean v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v5, :cond_54

    .line 1634
    if-nez v0, :cond_4f

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/view/DragHelper;->getDragPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 1636
    .local v3, "paint":Landroid/graphics/Paint;
    :cond_4f
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1639
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_54
    if-eqz v0, :cond_59

    .line 1640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1643
    :cond_59
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSwypingSupportedAndEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1644
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->bufferDrawTrace(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 1622
    .end local v0    # "applyDragPaintViaLayer":Z
    .end local v1    # "drawCanvas":Landroid/graphics/Canvas;
    :cond_63
    const/4 v0, 0x0

    goto :goto_26

    .restart local v0    # "applyDragPaintViaLayer":Z
    :cond_65
    move-object v1, p1

    .line 1629
    goto :goto_39
.end method

.method public onEndDrag()V
    .registers 2

    .prologue
    .line 4899
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 4900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    .line 4901
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 4902
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5061
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v6

    if-nez v6, :cond_b

    .line 5145
    :goto_a
    return v4

    .line 5065
    :cond_b
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v5, [Ljava/lang/Object;

    const-string/jumbo v8, "onHoverEvent"

    aput-object v8, v7, v4

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5081
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v9, :cond_1f

    move v4, v5

    .line 5082
    goto :goto_a

    .line 5085
    :cond_1f
    const/4 v3, 0x0

    .line 5086
    .local v3, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_108

    .line 5144
    :goto_27
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastEvent:I

    move v4, v3

    .line 5145
    goto :goto_a

    .line 5089
    :pswitch_2f
    const/4 v3, 0x1

    .line 5090
    goto :goto_27

    .line 5092
    :pswitch_31
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    if-eqz v6, :cond_c2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getHoverExitWidthOffset()I

    move-result v1

    .line 5093
    .local v1, "hover_exit_adjustment_width_offset":I
    :goto_3f
    new-array v2, v9, [I

    .line 5094
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 5095
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5099
    .local v0, "display":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_5b

    .line 5100
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 5102
    :cond_5b
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 5104
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "keyboard_height: "

    aput-object v8, v7, v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v10

    if-lez v4, :cond_c5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c5

    .line 5107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v6, v1

    cmpl-float v4, v4, v6

    if-lez v4, :cond_c5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c5

    .line 5110
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    .line 5111
    new-instance v4, Lcom/nuance/swype/input/KeyboardViewEx$3;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/KeyboardViewEx$3;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    .line 5117
    iput-boolean v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    .line 5119
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5128
    :cond_bf
    :goto_bf
    const/4 v3, 0x1

    .line 5129
    goto/16 :goto_27

    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "hover_exit_adjustment_width_offset":I
    .end local v2    # "location":[I
    :cond_c2
    move v1, v4

    .line 5092
    goto/16 :goto_3f

    .line 5120
    .restart local v0    # "display":Landroid/util/DisplayMetrics;
    .restart local v1    # "hover_exit_adjustment_width_offset":I
    .restart local v2    # "location":[I
    :cond_c5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gez v4, :cond_eb

    .line 5121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v1

    cmpg-float v4, v4, v5

    if-lez v4, :cond_eb

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_bf

    .line 5123
    :cond_eb
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->playSoundPlayedOnKeyboardExit()V

    .line 5124
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->removeAllPendingActions()V

    .line 5126
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v4

    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    goto :goto_bf

    .line 5134
    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "hover_exit_adjustment_width_offset":I
    .end local v2    # "location":[I
    :pswitch_101
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->showScrubGestureView()V

    .line 5141
    :pswitch_104
    const/4 v3, 0x1

    goto/16 :goto_27

    .line 5086
    nop

    :pswitch_data_108
    .packed-switch 0x4
        :pswitch_2f
        :pswitch_27
        :pswitch_27
        :pswitch_104
        :pswitch_27
        :pswitch_101
        :pswitch_31
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 4947
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4949
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    .line 4956
    :cond_b
    :goto_b
    return-void

    .line 4952
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    .line 4953
    .local v0, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v0, :cond_b

    .line 4954
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 15
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5249
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-ne v7, p0, :cond_a

    .line 5250
    :cond_8
    const/4 v7, 0x0

    .line 5367
    :goto_9
    return v7

    .line 5252
    :cond_a
    const/4 v2, -0x1

    .line 5253
    .local v2, "focusedKey":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    if-ge v3, v7, :cond_1a

    .line 5254
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v3

    iget-boolean v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    if-eqz v7, :cond_4f

    .line 5255
    move v2, v3

    .line 5259
    :cond_1a
    const/16 v7, 0x15

    if-eq p1, v7, :cond_22

    const/16 v7, 0x16

    if-ne p1, v7, :cond_97

    .line 5260
    :cond_22
    const/4 v7, -0x1

    if-ne v2, v7, :cond_54

    .line 5261
    const/16 v7, 0x15

    if-ne p1, v7, :cond_52

    .line 5262
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .line 5266
    :goto_2e
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5267
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5269
    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5287
    :goto_4a
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5367
    :cond_4d
    :goto_4d
    const/4 v7, 0x1

    goto :goto_9

    .line 5253
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 5264
    :cond_52
    const/4 v2, 0x0

    goto :goto_2e

    .line 5271
    :cond_54
    move v6, v2

    .line 5272
    .local v6, "newkey":I
    const/16 v7, 0x15

    if-ne p1, v7, :cond_85

    .line 5273
    add-int/lit8 v6, v6, -0x1

    .line 5277
    :goto_5b
    if-ltz v6, :cond_62

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    if-lt v6, v7, :cond_88

    .line 5278
    :cond_62
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5279
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5281
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a7

    aput v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    goto :goto_4a

    .line 5275
    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    .line 5283
    :cond_88
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5284
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_4a

    .line 5288
    .end local v6    # "newkey":I
    :cond_97
    const/16 v7, 0x14

    if-eq p1, v7, :cond_9f

    const/16 v7, 0x13

    if-ne p1, v7, :cond_164

    .line 5290
    :cond_9f
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    iget-object v4, v7, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    .line 5291
    .local v4, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    move v5, v2

    .line 5292
    .local v5, "newKey":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_aa

    .line 5293
    const/4 v5, 0x0

    .line 5295
    :cond_aa
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_ef

    .line 5296
    const/16 v7, 0x13

    if-ne p1, v7, :cond_da

    .line 5297
    const/4 v5, 0x0

    .line 5301
    :goto_b6
    const/4 v7, -0x1

    if-ne v2, v7, :cond_e0

    .line 5302
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5303
    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5304
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5346
    :cond_d5
    :goto_d5
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_4d

    .line 5299
    :cond_da
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    goto :goto_b6

    .line 5306
    :cond_e0
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5307
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_d5

    .line 5309
    :cond_ef
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_d5

    .line 5310
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Row;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx$Row;->keyCount()I

    move-result v1

    .line 5311
    .local v1, "firstRowKeyCount":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Row;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx$Row;->keyCount()I

    move-result v0

    .line 5312
    .local v0, "bottomRowKeyCount":I
    const/16 v7, 0x13

    if-ne p1, v7, :cond_144

    .line 5313
    if-ge v5, v1, :cond_138

    .line 5315
    const/4 v5, 0x0

    .line 5337
    :cond_118
    :goto_118
    const/4 v7, -0x1

    if-ne v2, v7, :cond_154

    .line 5338
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5339
    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5340
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_d5

    .line 5316
    :cond_138
    add-int v7, v1, v0

    if-ge v5, v7, :cond_142

    .line 5318
    sub-int/2addr v5, v1

    .line 5319
    if-lt v5, v1, :cond_118

    .line 5320
    add-int/lit8 v5, v1, -0x1

    goto :goto_118

    .line 5323
    :cond_142
    sub-int/2addr v5, v0

    goto :goto_118

    .line 5326
    :cond_144
    if-ge v5, v1, :cond_152

    .line 5328
    add-int/2addr v5, v1

    .line 5333
    :goto_147
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    if-lt v5, v7, :cond_118

    .line 5334
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    goto :goto_118

    .line 5330
    :cond_152
    add-int/2addr v5, v0

    goto :goto_147

    .line 5342
    :cond_154
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5343
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto/16 :goto_d5

    .line 5347
    .end local v0    # "bottomRowKeyCount":I
    .end local v1    # "firstRowKeyCount":I
    .end local v4    # "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    .end local v5    # "newKey":I
    :cond_164
    const/16 v7, 0x42

    if-eq p1, v7, :cond_16c

    const/16 v7, 0x3e

    if-ne p1, v7, :cond_4d

    .line 5348
    :cond_16c
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1b5

    .line 5349
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v7, :cond_1b5

    .line 5352
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->reconstructWord()V

    .line 5353
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/InputView;->handleBackspace(I)Z

    .line 5354
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-nez v7, :cond_19e

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_1cd

    .line 5355
    :cond_19e
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v8

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1be

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    :goto_1b2
    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/InputView;->onHardKeyText(Ljava/lang/CharSequence;)V

    .line 5365
    :cond_1b5
    :goto_1b5
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto/16 :goto_4d

    .line 5355
    :cond_1be
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    int-to-char v7, v7

    .line 5357
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b2

    .line 5359
    :cond_1cd
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v8, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1e9

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 5361
    :goto_1e1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    .line 5359
    invoke-interface {v8, v7, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_1b5

    :cond_1e9
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    int-to-char v7, v7

    .line 5361
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_1e1
.end method

.method public onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 5
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3369
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3370
    .local v0, "result":Z
    if-eqz v0, :cond_23

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 3371
    :cond_1d
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 3373
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 3376
    :cond_23
    return v0
.end method

.method public onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-nez v1, :cond_1a

    .line 1529
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    .line 1530
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1529
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setMeasuredDimension(II)V

    .line 1541
    :goto_19
    return-void

    .line 1532
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 1533
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_37

    .line 1535
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1537
    :cond_37
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1538
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1537
    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setMeasuredDimension(II)V

    goto :goto_19
.end method

.method public onScrollDown()Z
    .registers 2

    .prologue
    .line 4838
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollDown()Z

    move-result v0

    return v0
.end method

.method public onScrollLeft()Z
    .registers 2

    .prologue
    .line 4842
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollLeft()Z

    move-result v0

    return v0
.end method

.method public onScrollRight()Z
    .registers 2

    .prologue
    .line 4846
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollRight()Z

    move-result v0

    return v0
.end method

.method public onScrollUp()Z
    .registers 2

    .prologue
    .line 4850
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollUp()Z

    move-result v0

    return v0
.end method

.method public onShortPress(II)Z
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 5915
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v0

    return v0
.end method

.method public onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z
    .registers 15
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "pointerId"    # I

    .prologue
    const/16 v9, 0x3ed

    const/16 v10, 0x3ea

    const/4 v8, 0x0

    .line 3302
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "onShortPress()"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3303
    const/4 v0, 0x1

    .line 3304
    .local v0, "handled":Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    .line 3305
    .local v2, "hasAltKeyEvent":Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasSymbolSelectPopupResource(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    .line 3306
    .local v3, "hasSymbolSelectPopup":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v4

    .line 3307
    .local v4, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v4, :cond_30

    .line 3308
    invoke-virtual {v4}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v5

    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeycodeLongpress(I)V

    .line 3310
    :cond_30
    if-nez v2, :cond_3f

    .line 3311
    if-eqz v3, :cond_3a

    .line 3313
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    :goto_38
    move v1, v0

    .line 3356
    .end local v0    # "handled":Z
    .local v1, "handled":Z
    :goto_39
    return v1

    .line 3315
    .end local v1    # "handled":Z
    .restart local v0    # "handled":Z
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_38

    .line 3320
    :cond_3f
    if-eqz v3, :cond_72

    .line 3321
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 3323
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    :goto_4b
    move v1, v0

    .line 3356
    .end local v0    # "handled":Z
    .restart local v1    # "handled":Z
    goto :goto_39

    .line 3327
    .end local v1    # "handled":Z
    .restart local v0    # "handled":Z
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3331
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 3332
    invoke-virtual {v6, v9, p2, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v8, v7

    .line 3331
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3334
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    int-to-long v6, v6

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3335
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    goto :goto_4b

    .line 3339
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_4b

    .line 3346
    :cond_72
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    if-eqz v5, :cond_90

    iget-boolean v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-eqz v5, :cond_90

    .line 3348
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3349
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    int-to-long v6, v6

    invoke-virtual {v5, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3350
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    goto :goto_4b

    .line 3352
    :cond_90
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_4b
.end method

.method public onSizeChanged(IIII)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1546
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSizeChanged(): w: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1548
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->discardBackCanvas()V

    .line 1550
    return-void
.end method

.method public onSnapToEdge(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4906
    return-void
.end method

.method protected onTouchEnded(IIFFI)V
    .registers 12
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "eventTime"    # I

    .prologue
    .line 5931
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPointerIdCreate(I)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v0

    .line 5932
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    new-instance v2, Landroid/graphics/Point;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    int-to-long v4, p5

    invoke-virtual {v0, v2, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 5934
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5935
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v1

    .line 5936
    .local v1, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v1, :cond_22

    .line 5937
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5940
    .end local v1    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_22
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 5941
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4073
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 4074
    .local v0, "delegate":Landroid/view/TouchDelegate;
    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4115
    :cond_12
    :goto_12
    return v3

    .line 4079
    :cond_13
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    if-nez v1, :cond_12

    .line 4083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_54

    .line 4114
    :goto_20
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastEvent:I

    goto :goto_12

    .line 4085
    :pswitch_27
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastEvent:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3b

    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    if-eqz v1, :cond_3b

    .line 4086
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4087
    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    goto :goto_20

    .line 4089
    :cond_3b
    invoke-direct {p0, p1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventDown(Landroid/view/MotionEvent;Z)V

    goto :goto_20

    .line 4094
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventDown(Landroid/view/MotionEvent;Z)V

    goto :goto_20

    .line 4098
    :pswitch_43
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventMove(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 4102
    :pswitch_47
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 4106
    :pswitch_4b
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 4110
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventCancel(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 4083
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_27
        :pswitch_4b
        :pswitch_43
        :pswitch_4f
        :pswitch_20
        :pswitch_3f
        :pswitch_47
    .end packed-switch
.end method

.method public onTouchHeldEnded(II)V
    .registers 4
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    .line 5911
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5912
    return-void
.end method

.method public onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 8
    .param p1, "pointerId"    # I
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x0

    .line 5894
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->touchUpHandleBySlideSelectPopup(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/stats/UsageManager;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5895
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_36

    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    :goto_15
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    .line 5897
    :cond_1a
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 5898
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 5899
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 5901
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5902
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    .line 5903
    .local v0, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v0, :cond_32

    .line 5904
    invoke-virtual {v0, v4, v4}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5907
    .end local v0    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_32
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 5908
    return-void

    .line 5895
    :cond_36
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_15
.end method

.method public onTouchHeldMoved(I[F[F[I)V
    .registers 11
    .param p1, "pointerId"    # I
    .param p2, "xcoords"    # [F
    .param p3, "ycoords"    # [F
    .param p4, "times"    # [I

    .prologue
    .line 5774
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPointerIdCreate(I)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v1

    .line 5775
    .local v1, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->clear()V

    .line 5776
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, p2

    if-ge v0, v3, :cond_1f

    .line 5777
    new-instance v3, Landroid/graphics/Point;

    aget v4, p2, v0

    float-to-int v4, v4

    aget v5, p3, v0

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aget v4, p4, v0

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 5776
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5781
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->touchMoveHandleBySlideSelectPopup(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 5782
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 5783
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v2

    .line 5784
    .local v2, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v2, :cond_35

    .line 5785
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5789
    .end local v2    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_35
    return-void
.end method

.method public onTouchMoved(I[F[F[IZI)V
    .registers 28
    .param p1, "pointerId"    # I
    .param p2, "xcoords"    # [F
    .param p3, "ycoords"    # [F
    .param p4, "times"    # [I
    .param p5, "canBeTraced"    # Z
    .param p6, "keyIndex"    # I

    .prologue
    .line 5794
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    .line 5795
    .local v13, "traceWidth":I
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPointerIdCreate(I)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v10

    .line 5797
    .local v10, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->setTraceDetected(Z)V

    .line 5799
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->clear()V

    .line 5800
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_32

    .line 5801
    new-instance v14, Landroid/graphics/Point;

    aget v15, p2, v4

    float-to-int v15, v15

    aget v16, p3, v4

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/Point;-><init>(II)V

    aget v15, p4, v4

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v14, v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 5800
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 5804
    :cond_32
    iget-object v11, v10, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->renderingTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 5807
    .local v11, "renderingTracePoints":Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    .line 5808
    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v15

    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->size()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 5809
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    .line 5807
    invoke-interface/range {v14 .. v16}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 5811
    .local v7, "newPoints":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Point;>;"
    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v14

    if-lez v14, :cond_b6

    .line 5812
    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v6

    .line 5817
    .local v6, "lastPoint":Landroid/graphics/Point;
    :goto_60
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5818
    .local v2, "dirtyRect":Landroid/graphics/Rect;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_69
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 5819
    .local v9, "point":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v16, v16, v13

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    .line 5820
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    sub-int v17, v17, v13

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v18, v18, v13

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    .line 5821
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v19, v19, v13

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5819
    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_69

    .line 5814
    .end local v2    # "dirtyRect":Landroid/graphics/Rect;
    .end local v6    # "lastPoint":Landroid/graphics/Point;
    .end local v9    # "point":Landroid/graphics/Point;
    :cond_b6
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .restart local v6    # "lastPoint":Landroid/graphics/Point;
    goto :goto_60

    .line 5826
    .restart local v2    # "dirtyRect":Landroid/graphics/Rect;
    :cond_c2
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/KeyboardViewEx;->getNumTracePoints(Ljava/util/Collection;)I

    move-result v8

    .line 5827
    .local v8, "numPoints":I
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v8, :cond_156

    .line 5828
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v11}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v15

    sub-int/2addr v14, v15

    add-int/lit8 v3, v14, 0x1

    .line 5830
    .local v3, "growth":I
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int v4, v14, v8

    const/4 v5, 0x0

    .line 5831
    .local v5, "j":I
    :goto_f0
    if-lez v4, :cond_156

    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_156

    if-ge v5, v3, :cond_156

    .line 5832
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "lastPoint":Landroid/graphics/Point;
    check-cast v6, Landroid/graphics/Point;

    .line 5833
    .restart local v6    # "lastPoint":Landroid/graphics/Point;
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    add-int/lit8 v15, v4, -0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 5835
    .restart local v9    # "point":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Point;->x:I

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v15, v13

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    .line 5836
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v16, v16, v13

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v17, v17, v13

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 5837
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v18, v18, v13

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5835
    invoke-virtual {v2, v14}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 5831
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_f0

    .line 5843
    .end local v3    # "growth":I
    .end local v5    # "j":I
    .end local v9    # "point":Landroid/graphics/Point;
    :cond_156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/KeyboardViewEx;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5844
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_16c

    .line 5845
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5848
    :cond_16c
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getTimes()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 5850
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate(Landroid/graphics/Rect;)V

    .line 5852
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v14, :cond_1c4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v14}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v14

    if-nez v14, :cond_19a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v14}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v14

    if-eqz v14, :cond_1c4

    :cond_19a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v14}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v14

    if-eqz v14, :cond_1c4

    .line 5854
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v14}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v14

    if-eqz v14, :cond_1c4

    .line 5855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v14}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/view/InputContainerView;->invalidateItem()V

    .line 5856
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v14}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 5860
    :cond_1c4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v14

    if-eqz v14, :cond_1db

    .line 5861
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v12

    .line 5862
    .local v12, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v12, :cond_1db

    .line 5863
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v14

    invoke-virtual {v12, v10, v14}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5866
    .end local v12    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_1db
    return-void
.end method

.method protected onTouchStarted(IIFFI)V
    .registers 12
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "eventTime"    # I

    .prologue
    .line 5919
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPointerIdCreate(I)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v0

    .line 5920
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    new-instance v2, Landroid/graphics/Point;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    int-to-long v4, p5

    invoke-virtual {v0, v2, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 5922
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5923
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v1

    .line 5924
    .local v1, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v1, :cond_22

    .line 5925
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5928
    .end local v1    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_22
    return-void
.end method

.method public popupMiniKeyboardOrLongPress()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3173
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3174
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-ltz v3, :cond_20

    .line 3175
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->multitapTimeOut()V

    .line 3183
    :cond_f
    :goto_f
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupLayout:I

    if-nez v3, :cond_2b

    .line 3184
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "popupMiniKeyboardOrLongPress(): no layout"

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3201
    :cond_1f
    :goto_1f
    return v2

    .line 3177
    :cond_20
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3178
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    goto :goto_f

    .line 3188
    :cond_2b
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 3189
    .local v1, "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-nez v1, :cond_40

    .line 3190
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v5, "popupMiniKeyboardOrLongPress(): invalid current key"

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1f

    .line 3194
    :cond_40
    if-eqz v1, :cond_52

    .line 3195
    iget v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v4, 0xfdf

    if-eq v3, v4, :cond_57

    .line 3196
    .local v0, "hasAltKeyEvent":Z
    :goto_48
    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v3, :cond_52

    if-eqz v0, :cond_1f

    iget-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    if-nez v3, :cond_1f

    .line 3201
    .end local v0    # "hasAltKeyEvent":Z
    :cond_52
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    goto :goto_1f

    :cond_57
    move v0, v2

    .line 3195
    goto :goto_48
.end method

.method public pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .registers 4
    .param p1, "keys"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I

    .prologue
    .line 2938
    array-length v0, p1

    if-ge p2, v0, :cond_11

    aget-object v0, p1, p2

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_11

    .line 2939
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx$Key;->onPressed()V

    .line 2940
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 2942
    :cond_11
    return-void
.end method

.method public recalculateOffsets()V
    .registers 5

    .prologue
    .line 3038
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 3039
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 3041
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3042
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3043
    return-void
.end method

.method public redrawKeyboard()V
    .registers 1

    .prologue
    .line 5569
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 5570
    return-void
.end method

.method protected releaseAllOtherPointers(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .registers 5
    .param p1, "excludedPointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 3925
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 3926
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3927
    .local v1, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eq v1, p1, :cond_16

    .line 3928
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 3925
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3931
    .end local v1    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_19
    return-void
.end method

.method public releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 5
    .param p1, "keys"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "inside"    # Z

    .prologue
    .line 2931
    array-length v0, p1

    if-le v0, p2, :cond_11

    aget-object v0, p1, p2

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v0, :cond_11

    .line 2932
    aget-object v0, p1, p2

    invoke-virtual {v0, p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->onReleased(Z)V

    .line 2933
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 2935
    :cond_11
    return-void
.end method

.method public removeAllPendingActions()V
    .registers 3

    .prologue
    .line 4345
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4346
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4347
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4348
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4349
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4350
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4351
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4352
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4353
    return-void
.end method

.method protected resetDynamicDeleteKeyRepeatable(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 5
    .param p1, "pressedkey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v2, 0x0

    .line 3238
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-nez v0, :cond_6

    .line 3255
    :cond_5
    :goto_5
    return-void

    .line 3241
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3242
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3243
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3246
    :cond_1e
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_5

    .line 3247
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    .line 3248
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v0

    .line 3249
    if-eqz v0, :cond_39

    .line 3250
    iput-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    goto :goto_5

    .line 3252
    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    goto :goto_5
.end method

.method public resetMultiTap()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4430
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v0, :cond_8

    .line 4431
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 4434
    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastSentIndex:I

    .line 4435
    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    .line 4436
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    .line 4437
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    .line 4438
    return-void
.end method

.method public resetTrace(I)V
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 5881
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    if-eqz v1, :cond_b

    .line 5882
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetAllPointers()V

    .line 5889
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5890
    return-void

    .line 5884
    :cond_b
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 5885
    .local v0, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eqz v0, :cond_7

    .line 5886
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    goto :goto_7
.end method

.method public setContextCandidatesView(Z)V
    .registers 2
    .param p1, "isGridCandidatesView"    # Z

    .prologue
    .line 5770
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isContextCandidatesView:Z

    .line 5771
    return-void
.end method

.method public setCurrentKeyInSlideSelectPopupManager(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 6
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5582
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCurrentKeyInSlideSelectPopupManager(): key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5583
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5585
    return-void
.end method

.method public setDoubleBuffered(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 4870
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    .line 4871
    return-void
.end method

.method public setDragHelper(Lcom/nuance/swype/input/view/DragHelper;)V
    .registers 2
    .param p1, "dragHelper"    # Lcom/nuance/swype/input/view/DragHelper;

    .prologue
    .line 4877
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    .line 4878
    return-void
.end method

.method public setDrawBufferManager(Lcom/nuance/swype/input/DrawBufferManager;)V
    .registers 2
    .param p1, "buffer"    # Lcom/nuance/swype/input/DrawBufferManager;

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    .line 1652
    return-void
.end method

.method public setIme(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 5972
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    .line 5973
    return-void
.end method

.method public setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "state"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 2970
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 2971
    iput p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 2972
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    return v0
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 8
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1330
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1332
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v2, :cond_35

    .line 1333
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {p0, v4, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 1334
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 1336
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 1337
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1338
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v2, :cond_1a

    .line 1339
    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    if-eqz v2, :cond_33

    move v2, v3

    :goto_2f
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/KeyboardEx$Key;->onReleased(Z)V

    goto :goto_1a

    :cond_33
    const/4 v2, 0x1

    goto :goto_2f

    .line 1344
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_35
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v2, :cond_71

    .line 1345
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_42

    .line 1347
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1351
    :cond_42
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v2, v4, :cond_85

    .line 1352
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1353
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_top:I

    .line 1354
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_right:I

    .line 1355
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_bottom:I

    .line 1356
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 1353
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPadding(IIII)V

    .line 1362
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->isSanitizeFont()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizingFont:Z

    .line 1363
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1366
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->setMicrophoneKeyIcon()V

    .line 1368
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetAllPointers()V

    .line 1369
    return-void

    .line 1358
    :cond_85
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setPadding(IIII)V

    goto :goto_71
.end method

.method public declared-synchronized setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1310
    monitor-exit p0

    return-void

    .line 1309
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPopupOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1491
    iput p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    .line 1492
    iput p2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    .line 1493
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 1494
    return-void
.end method

.method protected setPopupParent(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 1488
    return-void
.end method

.method public setPressDownPreviewEnabled(Z)V
    .registers 3
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 1473
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    .line 1474
    return-void

    .line 1473
    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1503
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityCorrectOn:Z

    .line 1504
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 3
    .param p1, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_11

    .line 1417
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1419
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 1420
    const/4 v0, 0x1

    .line 1423
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected showAltSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3417
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3418
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_a
.end method

.method protected showAltSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 5
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v1, 0x0

    .line 3422
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 3423
    .local v0, "res":I
    if-eqz v0, :cond_1f

    .line 3424
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-nez v2, :cond_12

    .line 3425
    new-instance v2, Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/SlideSelectPopupManager;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    iput-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 3428
    :cond_12
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3429
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    .line 3431
    :cond_1f
    return v1
.end method

.method protected showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3435
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 3436
    .local v0, "res":I
    if-eqz v0, :cond_e

    .line 3438
    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z

    move-result v1

    .line 3440
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .registers 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 3157
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_9

    .line 3158
    invoke-virtual {p0, p1, p2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKeyNew(Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 3170
    :cond_8
    :goto_8
    return-void

    .line 3162
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_23

    .line 3163
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showAltLabelPopup():  trying to popup when parent has null window token"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_8

    .line 3167
    :cond_23
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3168
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopup(Landroid/widget/PopupWindow;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_8
.end method

.method public showHardKeyPopupKeyboard(I)V
    .registers 13
    .param p1, "keyCode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5159
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "showHardKeyPopupKeyboard(): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5160
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 5161
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyByKeyCode(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v4

    .line 5162
    .local v4, "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v4, :cond_9e

    .line 5163
    iget v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-eqz v5, :cond_9e

    iget-object v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9e

    .line 5164
    iget v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    iget-object v6, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z

    .line 5167
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 5168
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 5169
    .local v1, "defaultKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v0, 0x0

    .line 5170
    .local v0, "defaultIndex":I
    if-eqz v3, :cond_84

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_84

    .line 5171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7c

    .line 5172
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v9, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5173
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v9, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 5174
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 5175
    move v0, v2

    .line 5171
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 5178
    :cond_7c
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v10, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5181
    .end local v2    # "i":I
    :cond_84
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v5, :cond_9b

    .line 5182
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v5, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v6, Lcom/nuance/swype/input/R$id;->closeButton:I

    .line 5183
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 5184
    new-array v6, v9, [I

    invoke-virtual {v5, v6, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5186
    :cond_9b
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5190
    .end local v0    # "defaultIndex":I
    .end local v1    # "defaultKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v4    # "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_9e
    return-void
.end method

.method protected showPopup(Landroid/widget/PopupWindow;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 8
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3088
    iget-boolean v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-nez v1, :cond_5

    .line 3106
    :cond_4
    :goto_4
    return-void

    .line 3091
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3095
    :cond_11
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isScreenMagnificationOn()Z

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyPreviewRectInWindow(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3097
    .local v0, "rc":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3098
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 3099
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 3098
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_4

    .line 3100
    :cond_33
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 3101
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3102
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3103
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4
.end method

.method public showPreviewKey(II)V
    .registers 13
    .param p1, "currentKeyIndex"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/16 v9, 0x3ea

    const/4 v6, -0x1

    const/16 v8, 0x3e9

    const/4 v4, 0x0

    .line 2977
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3035
    :cond_c
    :goto_c
    return-void

    .line 2982
    :cond_d
    iget v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    if-eq v5, p1, :cond_1e

    const/4 v0, 0x1

    .line 2983
    .local v0, "isNewKey":Z
    :goto_12
    iput p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 2985
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v5, :cond_20

    .line 2986
    if-eqz v0, :cond_c

    .line 2987
    invoke-direct {p0, p1, p2, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKeyNew(IIZ)V

    goto :goto_c

    .end local v0    # "isNewKey":Z
    :cond_1e
    move v0, v4

    .line 2982
    goto :goto_12

    .line 2992
    .restart local v0    # "isNewKey":Z
    :cond_20
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 2997
    .local v3, "previewPopup":Landroid/widget/PopupWindow;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 2998
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v1, :cond_6b

    .line 3001
    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v2

    .line 3008
    .local v2, "previewEnabled":Z
    :goto_2c
    if-eqz v2, :cond_c

    if-nez v0, :cond_38

    if-eq p1, v6, :cond_38

    .line 3009
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3010
    :cond_38
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3011
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 3012
    if-ne p1, v6, :cond_5b

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 3013
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 3014
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3019
    :cond_5b
    if-eqz v1, :cond_c

    .line 3020
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_67

    iget v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    if-nez v5, :cond_6d

    .line 3025
    :cond_67
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showKey(I)V

    goto :goto_c

    .line 3005
    .end local v2    # "previewEnabled":Z
    :cond_6b
    const/4 v2, 0x1

    .restart local v2    # "previewEnabled":Z
    goto :goto_2c

    .line 3027
    :cond_6d
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3028
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 3029
    invoke-virtual {v6, v8, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    int-to-long v6, v6

    .line 3028
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c
.end method

.method protected showPreviewKeyNew(Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 13
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "pointerId"    # I
    .param p3, "isAlt"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    const/4 v8, 0x0

    .line 5527
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 5528
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 12244
    iget-boolean v3, v2, Lcom/nuance/swype/view/KeyPreviewManager;->enabled:Z

    if-eqz v3, :cond_54

    .line 12249
    invoke-virtual {v2, p2}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfoCreate(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v3

    .line 13097
    iget-object v4, v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    .line 12252
    iget-object v5, v2, Lcom/nuance/swype/view/KeyPreviewManager;->keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5, v4, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 12254
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_57

    .line 12259
    iget-object v5, v2, Lcom/nuance/swype/view/KeyPreviewManager;->keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5, v4, p1, v8}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyPreviewRectInWindow(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Landroid/graphics/Rect;

    move-result-object v5

    .line 12260
    iget-object v2, v2, Lcom/nuance/swype/view/KeyPreviewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 15079
    new-array v6, v0, [I

    .line 15042
    iget v7, v5, Landroid/graphics/Rect;->left:I

    aput v7, v6, v8

    .line 15043
    iget v7, v5, Landroid/graphics/Rect;->top:I

    aput v7, v6, v1

    .line 14109
    invoke-virtual {v2, v6}, Lcom/nuance/swype/view/OverlayView;->windowToOverlay([I)[I

    .line 14110
    invoke-static {v5, v6}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;[I)V

    .line 13129
    invoke-virtual {v2}, Lcom/nuance/swype/view/OverlayView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v5, v2, v0}, Lcom/nuance/swype/util/GeomUtil;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 12260
    invoke-static {v4, v5}, Lcom/nuance/swype/view/OverlayView;->setGeometry(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 15091
    iget-object v2, v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v2}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 15092
    if-eqz p3, :cond_55

    iput v0, v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    :goto_4d
    iput v0, v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 15093
    iget-object v0, v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/widget/PreviewView;->setVisibility(I)V

    .line 12265
    :cond_54
    :goto_54
    return-void

    :cond_55
    move v0, v1

    .line 15092
    goto :goto_4d

    .line 12266
    :cond_57
    invoke-virtual {v2, p2}, Lcom/nuance/swype/view/KeyPreviewManager;->dismissNow(I)V

    goto :goto_54

    .line 5530
    :cond_5b
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/view/KeyPreviewManager;->hide(I)V

    goto :goto_54
.end method

.method public showScrubGestureView()V
    .registers 2

    .prologue
    .line 5048
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-eqz v0, :cond_9

    .line 5049
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->addUpperScreenScrubGestureFrame()V

    .line 5051
    :cond_9
    return-void
.end method

.method public showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 5
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3534
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v1

    .line 3535
    .local v1, "res":I
    if-eqz v1, :cond_18

    .line 3536
    const-string/jumbo v0, ""

    .line 3537
    .local v0, "popupChars":Ljava/lang/CharSequence;
    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-ne v1, v2, :cond_13

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_13

    .line 3538
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 3540
    :cond_13
    invoke-direct {p0, p1, v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z

    move-result v2

    .line 3542
    .end local v0    # "popupChars":Ljava/lang/CharSequence;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3408
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3409
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_a
.end method

.method public subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .registers 10
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    const/16 v4, 0x68

    .line 4177
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v0

    .line 4178
    .local v0, "keyIndex":I
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    .line 4180
    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 4182
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 4183
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 4184
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v3

    invoke-virtual {v2, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    int-to-long v4, v3

    .line 4183
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4188
    :cond_28
    return-void
.end method

.method public subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z
    .registers 7
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 4129
    if-nez p3, :cond_20

    .line 4130
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboardShowing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4155
    :cond_11
    :goto_11
    return v0

    .line 4136
    :cond_12
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePointerId:I

    if-ne v1, v2, :cond_11

    .line 4142
    :cond_20
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboardShowing()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressAllowed()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 4145
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v1, :cond_11

    .line 4147
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hidePreviewKeyNew(I)V

    goto :goto_11

    .line 4152
    :cond_3c
    if-nez p3, :cond_41

    .line 4153
    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->press(Landroid/view/MotionEvent;)V

    .line 4155
    :cond_41
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .registers 4
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 4247
    return-void
.end method

.method public subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .registers 10
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 4254
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v0

    .line 4255
    .local v0, "keyIndex":I
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v1

    .line 4257
    .local v1, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4259
    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->release(Landroid/view/MotionEvent;)V

    .line 4260
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    if-nez v2, :cond_27

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    .line 4261
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKeyWrapper(IIJ)V

    .line 4263
    :cond_27
    return-void
.end method

.method protected touchMoveHandleBySlideSelectPopup(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Z
    .registers 10
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    const/4 v5, 0x0

    .line 4191
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v6, :cond_32

    .line 4192
    invoke-virtual {p1, v5}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->get(I)Landroid/graphics/Point;

    move-result-object v1

    .line 4193
    .local v1, "first":Landroid/graphics/Point;
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pathSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->get(I)Landroid/graphics/Point;

    move-result-object v0

    .line 4194
    .local v0, "cur":Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int v3, v5, v6

    .line 4195
    .local v3, "xOffset":I
    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v6

    .line 4196
    .local v4, "yOffset":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 4197
    .local v2, "pt":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    invoke-virtual {v5, v2}, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->map(Landroid/graphics/Point;)V

    .line 4198
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->onMove(IIII)V

    .line 4199
    const/4 v5, 0x1

    .line 4201
    .end local v0    # "cur":Landroid/graphics/Point;
    .end local v1    # "first":Landroid/graphics/Point;
    .end local v2    # "pt":Landroid/graphics/Point;
    .end local v3    # "xOffset":I
    .end local v4    # "yOffset":I
    :cond_32
    return v5
.end method

.method public touchUpHandleBySlideSelectPopup(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/stats/UsageManager;)Z
    .registers 9
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "usageMgr"    # Lcom/nuance/swype/stats/UsageManager;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4206
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v2, :cond_44

    .line 4208
    invoke-virtual {p0, v4, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    .line 4209
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyIndices:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 4210
    if-eqz p1, :cond_14

    .line 4211
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 4214
    :cond_14
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4215
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 4216
    .local v0, "isShowing":Z
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4219
    if-eqz v0, :cond_45

    .line 4220
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->onUp()V

    .line 4221
    if-eqz p2, :cond_36

    .line 4222
    invoke-virtual {p2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeycodeLongpress(I)V

    .line 4224
    :cond_36
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 4225
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v1, :cond_41

    .line 4226
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 4228
    :cond_41
    iput-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 4229
    const/4 v1, 0x1

    .line 4243
    .end local v0    # "isShowing":Z
    :cond_44
    :goto_44
    return v1

    .line 4232
    .restart local v0    # "isShowing":Z
    :cond_45
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 4233
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v2, :cond_50

    .line 4234
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 4236
    :cond_50
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->onCancel()V

    .line 4237
    iput-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 4238
    if-eqz p2, :cond_44

    .line 4239
    invoke-virtual {p2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeycodeLongpress(I)V

    goto :goto_44
.end method

.method public tracedGesture()Z
    .registers 2

    .prologue
    .line 5651
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isTracedGesture:Z

    return v0
.end method

.method protected updateEmojiKeyboardPosition()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 5031
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_12

    .line 5041
    :cond_11
    :goto_11
    return-void

    .line 5035
    :cond_12
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_11

    .line 5036
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 5037
    .local v0, "rec":Landroid/graphics/Rect;
    if-eqz v0, :cond_11

    .line 5038
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_11
.end method

.method public updateKeyboardBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1827
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1828
    return-void
.end method

.method public useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4751
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasShiftedSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_SHOW:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_26

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_26

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_28

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_26

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
