.class public Lcom/nuance/swype/input/KeyboardViewEx;
.super Landroid/view/View;
.source "KeyboardViewEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardViewEx$5;,
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

.field private static final FADING_DELAY:I = 0x19

.field private static final FIVE_ROW_LAYOUT:I = 0x5

.field private static final GLOW_OVERFLOW:D = 0.25

.field private static final HOVER_TO_TOUCH_WAITING_TIME:J = 0xaL

.field private static final ICON_STATE_PREVIEW:[I

.field private static final ICON_STATE_PRIMARY:[I

.field private static final ICON_STATE_SECONDARY:[I

.field private static final MAX_CHAR_POPUP_CACHE:I = 0x4

.field private static MAX_NEARBY_KEYS:I = 0x0

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

.field protected static final TRACE_DELAY:I = 0xa

.field private static final TRACE_POINTS_INIT_CAPACITY:I = 0x1f4

.field private static final keyboardPoint:Landroid/graphics/Point;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field public static final shiftKeyLevel:I = 0x0

.field public static final shiftKeyMiniLevel:I = 0x2

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private altCharsForceFirstDefault:Z

.field private altCharsPopupMaxCol:I

.field private final bounds:Landroid/graphics/Rect;

.field private bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

.field protected charUtil:Lcom/nuance/swype/util/CharacterUtilities;

.field private defaultBackground:Landroid/graphics/drawable/Drawable;

.field private final dest:Landroid/graphics/Rect;

.field private displaySize:Landroid/graphics/Rect;

.field private doubleBuffered:Z

.field enableSimplifiedMode:Z

.field private enableTraceAlphaGradient:Z

.field private final glowPadding:I

.field private grayscalePaint:Landroid/graphics/Paint;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field protected isEmojiKeyboardShown:Z

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

.field protected mCurrentIndex:I

.field protected mCurrentKey:I

.field private mCurrentKeyIndex:I

.field protected mCurrentKeyTime:J

.field private mCursorString:Ljava/lang/String;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDistances:[I

.field protected mDownTime:J

.field protected mFlickerPopup:I

.field private mGlow:Landroid/graphics/drawable/Drawable;

.field protected final mHandler:Landroid/os/Handler;

.field private mHandlerHoverExit:Landroid/os/Handler;

.field private mHoverExitRunnable:Ljava/lang/Runnable;

.field protected mHshPointers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/input/KeyboardViewEx$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIgnoreDraw:Z

.field protected mIme:Lcom/nuance/swype/input/IME;

.field protected mInMultiTap:Z

.field protected mInvalidIndex:I

.field protected mInvalidKey:I

.field protected mInvalidTapCount:I

.field protected mIsClearKeyLabelUpdated:Z

.field protected mIsDelimiterKeyLabelUpdated:Z

.field protected mIsTracing:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyBorder:Landroid/graphics/drawable/Drawable;

.field protected final mKeyIndices:[I

.field private final mKeyPaint:Landroid/graphics/Paint;

.field protected mKeyRepeated:Z

.field private mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

.field protected mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

.field private mKeyboardHasChanged:Z

.field protected mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

.field protected mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mLastEvent:I

.field private mLastHoverExitPending:Z

.field protected mLastKey:I

.field protected mLastKeyTime:J

.field protected mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field protected mLongPressTimeout:I

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

.field protected mOffsetInWindow:[I

.field private final mPadding:Landroid/graphics/Rect;

.field private mPopupCharSize:I

.field private final mPopupKeyboard:Landroid/widget/PopupWindow;

.field protected mPopupLayout:I

.field protected mPopupParent:Landroid/view/View;

.field protected mPopupTextColor:I

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

.field private mProximityThreshold:I

.field protected mRepeatKeyIndex:I

.field private mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

.field protected mShortLongPressTimeout:I

.field protected mTapCount:I

.field private mTracePaint:Landroid/graphics/Paint;

.field protected mTracePointerId:I

.field protected mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

.field protected mTraceWidth:I

.field private mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

.field private mWindowOffset:[I

.field private mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

.field protected mfDecay:F

.field protected mfRadius:F

.field protected miFading:I

.field protected miHighlightTextColor:I

.field protected miTraceColor:I

.field private minMoveDistance:I

.field protected multiTouchPointerCount:I

.field private final outRect:Landroid/graphics/Rect;

.field private overlayView:Lcom/nuance/swype/view/OverlayView;

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

.field protected prevPointerId:I

.field private previewHideDelay:I

.field private previewKeyTypeface:Landroid/graphics/Typeface;

.field private previewKeyTypefaceBold:Landroid/graphics/Typeface;

.field private previewShowDelay:I

.field protected repeatCount:I

.field private sanitizingFont:Z

.field private secondary_padding_adjustment:I

.field protected showCompleteTrace:Z

.field private final simplifiedAltPopupCharsPrefix:Ljava/lang/String;

.field private slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

.field protected swypeDistanceSum:F

.field private textShadow:Lcom/nuance/swype/input/ShadowEffect;

.field private final typefaceBold:Landroid/graphics/Typeface;

.field private final typefaceNormal:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    const-string v0, "KeyboardViewEx"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 148
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 633
    new-array v0, v3, [I

    const v1, 0x10100a4

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PRIMARY:[I

    .line 638
    new-array v0, v3, [I

    const v1, 0x10100a5

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_SECONDARY:[I

    .line 643
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PREVIEW:[I

    .line 692
    const/16 v0, 0xc

    sput v0, Lcom/nuance/swype/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    .line 2665
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 912
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 934
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsForceFirstDefault:Z

    .line 154
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->prevPointerId:I

    .line 565
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 566
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 590
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    .line 605
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    .line 621
    const/16 v15, 0x1e

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    .line 622
    const/16 v15, 0x3c

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    .line 627
    const/16 v15, 0x1f4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->pressHoldFlickrTimeOut:I

    .line 649
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    .line 660
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 663
    const/16 v15, 0xc

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyIndices:[I

    .line 664
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 665
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 672
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    .line 677
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    .line 693
    sget v15, Lcom/nuance/swype/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    .line 709
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 710
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidKey:I

    .line 711
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentIndex:I

    .line 712
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidIndex:I

    .line 713
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidTapCount:I

    .line 716
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    .line 718
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    .line 731
    new-instance v15, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    const/16 v16, 0x1f4

    invoke-direct/range {v15 .. v16}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .line 732
    const/high16 v15, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mfRadius:F

    .line 733
    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    .line 734
    const/16 v15, 0xff

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miFading:I

    .line 735
    const v15, -0xffff01

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miTraceColor:I

    .line 736
    const v15, -0xffff01

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    .line 737
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    .line 738
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    .line 742
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 743
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isTracedGesture:Z

    .line 747
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsDelimiterKeyLabelUpdated:Z

    .line 748
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsClearKeyLabelUpdated:Z

    .line 755
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    .line 764
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizingFont:Z

    .line 894
    new-instance v15, Lcom/nuance/swype/input/KeyboardViewEx$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/nuance/swype/input/KeyboardViewEx$1;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->handlerCallback:Landroid/os/Handler$Callback;

    .line 901
    new-instance v15, Lcom/nuance/swype/input/ShadowEffect;

    invoke-direct {v15}, Lcom/nuance/swype/input/ShadowEffect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    .line 1800
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    .line 1805
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    .line 3375
    const-string v15, "string/simple_alternates_for_"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->simplifiedAltPopupCharsPrefix:Ljava/lang/String;

    .line 3378
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->popupCharsSimplifiedMap:Ljava/util/Map;

    .line 4018
    new-instance v15, Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/nuance/swype/util/CoordUtils$CoordMapper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    .line 936
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->charUtil:Lcom/nuance/swype/util/CharacterUtilities;

    .line 938
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v15}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 940
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->key_secondary_character_padding_adjustment:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    .line 944
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setPadding(IIII)V

    .line 946
    sget-object v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx:[I

    sget v16, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 949
    .local v4, "a":Landroid/content/res/TypedArray;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    .line 954
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 955
    .local v12, "n":I
    const/4 v8, 0x0

    .line 957
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 959
    .local v13, "popupCharSizeAdjust":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$integer;->preview_popup_show_delay:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    .line 960
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$integer;->preview_popup_hide_delay:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$integer;->alt_chars_popup_max_col:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsPopupMaxCol:I

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$bool;->LOW_END_DEVICE_BUILD:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->lowEndDeviceBuild:Z

    .line 967
    const/4 v14, 0x0

    .line 969
    .local v14, "typefaceCustom":Landroid/graphics/Typeface;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_16

    .line 970
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 972
    .local v7, "attr":I
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyBackground:I

    if-ne v7, v15, :cond_1

    .line 973
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 969
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 974
    :cond_1
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyBorder:I

    if-ne v7, v15, :cond_2

    .line 975
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 976
    :cond_2
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewLayout:I

    if-ne v7, v15, :cond_3

    .line 977
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    goto :goto_1

    .line 978
    :cond_3
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewOffset:I

    if-ne v7, v15, :cond_4

    .line 979
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewOffset:I

    goto :goto_1

    .line 980
    :cond_4
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewHeight:I

    if-ne v7, v15, :cond_5

    .line 981
    const/16 v15, 0x50

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewHeight:I

    goto :goto_1

    .line 982
    :cond_5
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_popupLayout:I

    if-ne v7, v15, :cond_6

    .line 983
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupLayout:I

    goto :goto_1

    .line 984
    :cond_6
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_flickerPopup:I

    if-ne v7, v15, :cond_7

    .line 985
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mFlickerPopup:I

    goto :goto_1

    .line 986
    :cond_7
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelTextColor:I

    if-ne v7, v15, :cond_8

    .line 987
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextColor:I

    goto :goto_1

    .line 988
    :cond_8
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelTextSize:I

    if-ne v7, v15, :cond_9

    .line 989
    const/16 v15, 0xa

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextSize:I

    goto :goto_1

    .line 990
    :cond_9
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelCharSize:I

    if-ne v7, v15, :cond_a

    .line 991
    const/16 v15, 0xa

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    goto/16 :goto_1

    .line 992
    :cond_a
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupLabelCharSizeAdjustment:I

    if-ne v7, v15, :cond_b

    .line 993
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    goto/16 :goto_1

    .line 994
    :cond_b
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_traceTrail:I

    if-ne v7, v15, :cond_c

    .line 996
    const v15, -0xffff01

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miTraceColor:I

    goto/16 :goto_1

    .line 997
    :cond_c
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_highLightTextColor:I

    if-ne v7, v15, :cond_d

    .line 999
    const v15, -0xffff01

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    goto/16 :goto_1

    .line 1000
    :cond_d
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_traceWidth:I

    if-ne v7, v15, :cond_e

    .line 1002
    const/16 v15, 0x10

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    goto/16 :goto_1

    .line 1003
    :cond_e
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_shadowStyle:I

    if-ne v7, v15, :cond_f

    .line 1004
    new-instance v15, Lcom/nuance/swype/input/ShadowEffect;

    new-instance v16, Lcom/nuance/swype/input/ShadowProps;

    sget v17, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_shadowStyle:I

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    invoke-direct/range {v15 .. v16}, Lcom/nuance/swype/input/ShadowEffect;-><init>(Lcom/nuance/swype/input/ShadowProps;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    goto/16 :goto_1

    .line 1005
    :cond_f
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_popupBackgroundShadowStyle:I

    if-ne v7, v15, :cond_10

    .line 1010
    new-instance v15, Lcom/nuance/swype/input/ShadowProps;

    sget v16, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_popupBackgroundShadowStyle:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v15, v0, v4, v1}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->popupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    goto/16 :goto_1

    .line 1012
    :cond_10
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupBackgroundShadowStyle:I

    if-ne v7, v15, :cond_11

    .line 1013
    new-instance v15, Lcom/nuance/swype/input/ShadowProps;

    sget v16, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPopupBackgroundShadowStyle:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v15, v0, v4, v1}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPopupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    goto/16 :goto_1

    .line 1015
    :cond_11
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_altShadowRadius:I

    if-ne v7, v15, :cond_12

    .line 1016
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    goto/16 :goto_1

    .line 1017
    :cond_12
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_altShadowColor:I

    if-ne v7, v15, :cond_13

    .line 1018
    const v15, 0x4c010101    # 3.3817604E7f

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowColor:I

    goto/16 :goto_1

    .line 1019
    :cond_13
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_fontAssetFileName:I

    if-ne v7, v15, :cond_14

    .line 1020
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1021
    .local v6, "assetFileName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-static {v15, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    goto/16 :goto_1

    .line 1025
    .end local v6    # "assetFileName":Ljava/lang/String;
    :cond_14
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_isPopupKeyboard:I

    if-ne v7, v15, :cond_15

    .line 1026
    const/4 v15, 0x0

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    goto/16 :goto_1

    .line 1027
    :cond_15
    sget v15, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_background:I

    if-ne v7, v15, :cond_0

    .line 1028
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto/16 :goto_1

    .line 1032
    .end local v7    # "attr":I
    :cond_16
    if-nez v14, :cond_1c

    .line 1033
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultTypefaceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1034
    .local v9, "customFontName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1b

    .line 1035
    const/4 v15, 0x0

    invoke-static {v9, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    .line 1036
    const/4 v15, 0x1

    invoke-static {v9, v15}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    .line 1046
    .end local v9    # "customFontName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypeface:Landroid/graphics/Typeface;

    .line 1047
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypefaceBold:Landroid/graphics/Typeface;

    .line 1049
    new-instance v15, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPreviewStyleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->initKeyPrevManager()V

    .line 1051
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1054
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    .line 1056
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v15, :cond_18

    .line 1057
    if-eqz v8, :cond_17

    .line 1058
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/KeyboardViewEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 1063
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    .line 1064
    .local v5, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v15, Lcom/nuance/swype/input/R$attr;->traceAlphaGradientEnabled:I

    invoke-virtual {v5, v15}, Lcom/nuance/swype/input/IMEApplication;->getThemedBoolean(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->enableTraceAlphaGradient:Z

    .line 1065
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$attr;->glow:I

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 1066
    sget v15, Lcom/nuance/swype/input/R$attr;->glowStretch:I

    invoke-virtual {v5, v15}, Lcom/nuance/swype/input/IMEApplication;->getThemedDimension(I)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    neg-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->glowPadding:I

    .line 1068
    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    .line 1069
    .local v11, "minTraceWidth":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    if-ge v15, v11, :cond_19

    .line 1070
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    .line 1073
    :cond_19
    new-instance v15, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    .line 1074
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->prepareAltPopup()V

    .line 1079
    new-instance v15, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1080
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    if-eqz v15, :cond_1d

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->preparePreviewPopup()V

    .line 1085
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1088
    new-instance v15, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressAllowed()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 1091
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1097
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 1099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    sget-object v16, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1103
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 1104
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    .line 1105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$bool;->enable_slide_select_popup:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled:Z

    .line 1110
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 1111
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$string;->accessibility_note_Context:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCursorString:Ljava/lang/String;

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->trace_redraw_threadshold:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->minMoveDistance:I

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$bool;->animate_fade_trace:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-nez v15, :cond_1a

    .line 1119
    const/high16 v15, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    .line 1122
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->checkAccessibility()V

    .line 1123
    return-void

    .line 1038
    .end local v5    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v11    # "minTraceWidth":I
    .restart local v9    # "customFontName":Ljava/lang/String;
    :cond_1b
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    .line 1039
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 1043
    .end local v9    # "customFontName":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 1083
    .restart local v5    # "app":Lcom/nuance/swype/input/IMEApplication;
    .restart local v11    # "minTraceWidth":I
    :cond_1d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    goto/16 :goto_3

    .line 1094
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    goto/16 :goto_4
.end method

.method private SpeakContextAroundCursor(II)V
    .locals 13
    .param p1, "numWordsBeforeCursor"    # I
    .param p2, "numWordsAfterCursor"    # I

    .prologue
    const/16 v7, 0x400

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 5957
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    .line 5958
    .local v5, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_3

    .line 5959
    invoke-interface {v5, v7, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5960
    .local v3, "cs_before":Ljava/lang/CharSequence;
    invoke-interface {v5, v7, v11}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5962
    .local v2, "cs_after":Ljava/lang/CharSequence;
    const-string v1, ""

    .line 5963
    .local v1, "announcementBeforeCursor":Ljava/lang/String;
    const-string v0, ""

    .line 5964
    .local v0, "announcementAfterCursor":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5965
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5966
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    if-ge v7, p1, :cond_0

    array-length v4, v6

    .line 5967
    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    .line 5968
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    sub-int/2addr v8, v4

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5967
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    move v4, p1

    .line 5966
    goto :goto_0

    .line 5972
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5973
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5974
    .restart local v6    # "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v7, v6

    if-ge v4, v7, :cond_2

    if-ge v4, p2, :cond_2

    .line 5975
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5974
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5978
    .end local v4    # "i":I
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCursorString:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    aput-object v0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v12}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5980
    .end local v0    # "announcementAfterCursor":Ljava/lang/String;
    .end local v1    # "announcementBeforeCursor":Ljava/lang/String;
    .end local v2    # "cs_after":Ljava/lang/CharSequence;
    .end local v3    # "cs_before":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/KeyboardViewEx;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/KeyboardViewEx;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/KeyboardViewEx;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/KeyboardViewEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 120
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->minMoveDistance:I

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/KeyboardViewEx;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$502(Lcom/nuance/swype/input/KeyboardViewEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    return p1
.end method

.method private adjustShift(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 5097
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->currentLanguageSupportsCapitalization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5100
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5102
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method private bezierTracePath(Ljava/util/List;)Landroid/graphics/Path;
    .locals 11
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
    .line 2409
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 2410
    .local v6, "path":Landroid/graphics/Path;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 2411
    .local v8, "size":I
    add-int/lit8 v9, v8, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 2412
    .local v7, "point":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2413
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getNumTracePoints(Ljava/util/Collection;)I

    move-result v5

    .line 2414
    .local v5, "numPoints":I
    const/4 v3, 0x1

    .local v3, "n":I
    add-int/lit8 v0, v8, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    if-ge v3, v5, :cond_1

    .line 2415
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2416
    .local v4, "nextPoint":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 2417
    .local v1, "midX":F
    iget v9, v7, Landroid/graphics/Point;->y:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 2418
    .local v2, "midY":F
    const/4 v9, 0x1

    if-ne v3, v9, :cond_0

    .line 2419
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2423
    :goto_1
    move-object v7, v4

    .line 2414
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2421
    :cond_0
    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 2425
    .end local v1    # "midX":F
    .end local v2    # "midY":F
    .end local v4    # "nextPoint":Landroid/graphics/Point;
    :cond_1
    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2426
    return-object v6
.end method

.method private final bufferDrawKeyboard(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1715
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    move-object/from16 v2, p1

    .line 1720
    .local v2, "keyboardCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyPaint:Landroid/graphics/Paint;

    .line 1721
    .local v3, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 1722
    .local v6, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v8

    .line 1723
    .local v8, "kbdPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v9

    .line 1724
    .local v9, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1726
    .local v15, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-nez v1, :cond_2

    .line 1727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1731
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1732
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1735
    const/16 v1, 0xff

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1736
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1738
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v1, :cond_3

    .line 1739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1740
    const/high16 v1, -0x1000000

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v19

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1743
    :cond_3
    const/4 v5, 0x0

    .line 1744
    .local v5, "hideSecondary":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v1, v0, :cond_9

    const/4 v14, 0x1

    .line 1745
    .local v14, "isPortrait":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    .line 1746
    .local v18, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v14, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v1

    const v19, 0x3f68f5c3    # 0.91f

    cmpg-float v1, v1, v19

    if-gtz v1, :cond_a

    const/4 v1, 0x1

    .line 1748
    :goto_2
    if-eqz v1, :cond_5

    .line 1749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getLayoutRowCount()I

    move-result v1

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v1, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v1, v0, :cond_d

    .line 1752
    :cond_4
    const/4 v5, 0x1

    .line 1758
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nuance/swype/input/KeyboardViewEx;->calcKeyTextScaleFactor(Z)F

    move-result v10

    .line 1760
    .local v10, "keyTestSizeScaleFactor":F
    const/4 v7, -0x1

    .line 1761
    .local v7, "overrideHorizontalPadding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isIndianLetterCategory()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1768
    :cond_6
    const/4 v7, 0x2

    .line 1772
    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1773
    .local v11, "baseLineScaleAdjust":F
    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardFullDockMode()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1775
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 1778
    :cond_8
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v17, "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    move-object v12, v15

    .local v12, "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    array-length v0, v15

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_f

    aget-object v4, v12, v13

    .line 1780
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v1, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v1, :cond_e

    .line 1781
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1779
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1744
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v7    # "overrideHorizontalPadding":I
    .end local v10    # "keyTestSizeScaleFactor":F
    .end local v11    # "baseLineScaleAdjust":F
    .end local v12    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v13    # "i$":I
    .end local v14    # "isPortrait":Z
    .end local v16    # "len$":I
    .end local v17    # "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v18    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1746
    .restart local v14    # "isPortrait":Z
    .restart local v18    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v1

    const v19, 0x3f68f5c3    # 0.91f

    cmpg-float v1, v1, v19

    if-gtz v1, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1753
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isDoublePinyinMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1754
    const/4 v5, 0x1

    goto/16 :goto_3

    .restart local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v7    # "overrideHorizontalPadding":I
    .restart local v10    # "keyTestSizeScaleFactor":F
    .restart local v11    # "baseLineScaleAdjust":F
    .restart local v12    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_e
    move-object/from16 v1, p0

    .line 1783
    invoke-virtual/range {v1 .. v11}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKey(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ZLandroid/graphics/Rect;IIIFF)V

    goto :goto_5

    .line 1786
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .restart local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v1, p0

    .line 1787
    invoke-virtual/range {v1 .. v11}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKey(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ZLandroid/graphics/Rect;IIIFF)V

    goto :goto_6

    .line 1790
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_10
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1793
    .end local v5    # "hideSecondary":Z
    .end local v7    # "overrideHorizontalPadding":I
    .end local v10    # "keyTestSizeScaleFactor":F
    .end local v11    # "baseLineScaleAdjust":F
    .end local v12    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "isPortrait":Z
    .end local v16    # "len$":I
    .end local v17    # "pressedKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v18    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method private calcKeyTextScaleFactor(Z)F
    .locals 4
    .param p1, "isPortrait"    # Z

    .prologue
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f51eb85    # 0.82f

    const v0, 0x3f266666    # 0.65f

    .line 1669
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1670
    const v0, 0x3f4ccccd    # 0.8f

    .line 1706
    :cond_0
    :goto_0
    return v0

    .line 1673
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1675
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1677
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1679
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1682
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    .line 1683
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isRussianOrUkrainLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1684
    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    .line 1685
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1686
    if-nez p1, :cond_9

    move v0, v1

    .line 1687
    goto :goto_0

    .line 1689
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isIndianLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 1690
    goto :goto_0

    .line 1691
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 1692
    goto :goto_0

    .line 1696
    :cond_6
    if-eqz p1, :cond_8

    .line 1697
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1698
    :cond_7
    const v0, 0x3f47ae14    # 0.78f

    goto :goto_0

    .line 1701
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isTHLetterCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1702
    goto :goto_0

    .line 1706
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private calculateDistance(Ljava/util/List;)D
    .locals 14
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

    .line 4530
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4531
    const-wide/16 v10, 0x0

    .line 4551
    :goto_0
    return-wide v10

    .line 4533
    :cond_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->swypeDistanceSum:F

    .line 4534
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4535
    .local v0, "display":Landroid/util/DisplayMetrics;
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v9

    .line 4536
    .local v7, "startX":F
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v9

    .line 4538
    .local v8, "startY":F
    const/4 v3, 0x1

    .local v3, "h":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 4539
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 4540
    .local v6, "pt":Landroid/graphics/Point;
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v4, v9

    .line 4541
    .local v4, "hx":F
    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v5, v9

    .line 4543
    .local v5, "hy":F
    sub-float v9, v4, v7

    iget v10, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v9, v10

    .line 4544
    .local v1, "dx":F
    sub-float v9, v5, v8

    iget v10, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v9, v10

    .line 4546
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

    .line 4548
    move v7, v4

    .line 4549
    move v8, v5

    .line 4538
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4551
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "hx":F
    .end local v5    # "hy":F
    .end local v6    # "pt":Landroid/graphics/Point;
    :cond_1
    iget v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->swypeDistanceSum:F

    float-to-double v10, v9

    goto :goto_0
.end method

.method protected static capsModeToShiftState(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 1
    .param p0, "capsMode"    # I

    .prologue
    .line 1409
    sparse-switch p0, :sswitch_data_0

    .line 1418
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_0
    return-object v0

    .line 1411
    :sswitch_0
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 1415
    :sswitch_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 1409
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeProximityThreshold(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 7
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1515
    if-nez p1, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1521
    .local v3, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v3, :cond_0

    .line 1525
    array-length v4, v3

    .line 1526
    .local v4, "length":I
    const/4 v0, 0x0

    .line 1528
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1529
    aget-object v2, v3, v1

    .line 1530
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1528
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1533
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 1537
    int-to-float v5, v0

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityThreshold:I

    .line 1538
    iget v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityThreshold:I

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityThreshold:I

    goto :goto_0
.end method

.method public static distance(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 3
    .param p0, "p1"    # Landroid/graphics/Point;
    .param p1, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 383
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
    .locals 23
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "highLightKeyArea"    # I
    .param p5, "altLabel"    # Ljava/lang/String;
    .param p6, "keyBounds"    # Landroid/graphics/Rect;
    .param p7, "altIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "fm"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 1980
    sget-object v4, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_SECONDARY:[I

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1983
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 1984
    .local v15, "altIconWidth":I
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 1985
    .local v14, "altIconHeight":I
    move-object/from16 v0, p3

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    if-eqz v4, :cond_0

    .line 1986
    move-object/from16 v0, p3

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    int-to-float v4, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1995
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    .line 1996
    .local v20, "size":D
    int-to-double v4, v14

    div-double v4, v20, v4

    int-to-double v6, v15

    mul-double/2addr v4, v6

    double-to-int v15, v4

    .line 1997
    move-wide/from16 v0, v20

    double-to-int v14, v0

    .line 1999
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 2000
    .local v22, "w":I
    move/from16 v0, v22

    if-le v15, v0, :cond_1

    .line 2002
    mul-int v4, v22, v14

    div-int v14, v4, v15

    .line 2003
    move/from16 v15, v22

    .line 2007
    :cond_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    and-int/lit8 v17, v4, 0x7

    .line 2010
    .local v17, "horGravity":I
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p3

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v5, 0xff7

    if-ne v4, v5, :cond_2

    .line 2011
    const/16 v12, 0x30

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-direct/range {v4 .. v13}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;IZ)V

    .line 2014
    const/16 v17, 0x5

    .line 2018
    :cond_2
    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v4, v5

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 2020
    .local v16, "altLabelBaselineOffset":I
    move-object/from16 v0, p6

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v16

    sub-int v19, v4, v14

    .line 2023
    .local v19, "iAltIconY":I
    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .line 2024
    .local v18, "iAltIconX":I
    packed-switch v17, :pswitch_data_0

    .line 2033
    :pswitch_0
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v15

    div-int/lit8 v4, v4, 0x2

    add-int v18, v18, v4

    .line 2038
    :goto_0
    add-int v4, v18, v15

    add-int v5, v19, v14

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2042
    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    if-eqz v4, :cond_3

    .line 2043
    const/16 v4, 0x78

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2047
    :goto_1
    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2049
    return-void

    .line 2026
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int v18, v18, v4

    .line 2027
    goto :goto_0

    .line 2029
    :pswitch_2
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v4, v5

    add-int v18, v18, v4

    .line 2030
    goto :goto_0

    .line 2045
    :cond_3
    const/16 v4, 0xff

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 2024
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;IZ)V
    .locals 13
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "highLightKeyArea"    # I
    .param p5, "altLabel"    # Ljava/lang/String;
    .param p6, "keyBounds"    # Landroid/graphics/Rect;
    .param p7, "fm"    # Landroid/graphics/Paint$FontMetrics;
    .param p8, "vGravity"    # I
    .param p9, "isLeftAltLabel"    # Z

    .prologue
    .line 1902
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1975
    :goto_0
    return-void

    .line 1905
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1907
    .local v3, "altLabelStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1908
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1912
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v3, p2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizeFontSize(Ljava/lang/String;Landroid/graphics/Paint;Z)V

    .line 1915
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1916
    .local v8, "availableWidth":I
    invoke-direct {p0, v3, v8, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->shrinkTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V

    .line 1918
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v1, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1919
    move-object/from16 v0, p6

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 1920
    .local v11, "iAltLabelY":I
    and-int/lit8 v1, p8, 0x70

    packed-switch v1, :pswitch_data_0

    .line 1923
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    .line 1925
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->getExcessAboveAscent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    add-int v11, v1, v2

    .line 1934
    :goto_1
    move-object/from16 v0, p6

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 1935
    .local v10, "iAltLabelX":I
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_1

    .line 1946
    :pswitch_0
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v10, v1

    .line 1947
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1950
    :goto_2
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    invoke-static {v3, v1, v2, p2}, Lcom/nuance/swype/util/DrawingUtils;->hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I

    move-result v1

    add-int/2addr v10, v1

    .line 1953
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1954
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1955
    int-to-float v4, v10

    int-to-float v1, v11

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAltShadowRadius:F

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 1960
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v12

    .line 1961
    .local v12, "vowelLabelValue":I
    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v9

    .line 1962
    .local v9, "consonantLabelValue":I
    if-eqz p9, :cond_3

    .line 1963
    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v12

    .line 1964
    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v9

    .line 1966
    :cond_3
    and-int v1, p4, v12

    if-eq v1, v12, :cond_4

    and-int v1, p4, v9

    if-ne v1, v9, :cond_5

    .line 1970
    :cond_4
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1974
    :goto_3
    int-to-float v4, v10

    int-to-float v5, v11

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    goto/16 :goto_0

    .line 1928
    .end local v9    # "consonantLabelValue":I
    .end local v10    # "iAltLabelX":I
    .end local v12    # "vowelLabelValue":I
    :pswitch_1
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v11

    .line 1930
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->getExcessBelowDescent(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v2

    sub-int v11, v1, v2

    goto/16 :goto_1

    .line 1937
    .restart local v10    # "iAltLabelX":I
    :pswitch_2
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    add-int/2addr v10, v1

    .line 1938
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_2

    .line 1941
    :pswitch_3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->secondary_padding_adjustment:I

    sub-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 1942
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_2

    .line 1972
    .restart local v9    # "consonantLabelValue":I
    .restart local v12    # "vowelLabelValue":I
    :cond_5
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 1920
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch

    .line 1935
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private drawKeyBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "keyBackground"    # Landroid/graphics/drawable/Drawable;
    .param p4, "keyBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 2053
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    move v1, v4

    .line 2054
    .local v1, "drawGlow":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2055
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2056
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingX(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    .line 2057
    .local v2, "glowPaddingX":I
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingY(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 2058
    .local v3, "glowPaddingY":I
    neg-int v5, v2

    neg-int v6, v3

    iget v7, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v2

    iget v8, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v8, v3

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2060
    .end local v2    # "glowPaddingX":I
    .end local v3    # "glowPaddingY":I
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2061
    .local v0, "bkgBounds":Landroid/graphics/Rect;
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v6, :cond_2

    .line 2062
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p3, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2064
    :cond_2
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2065
    if-eqz v1, :cond_3

    .line 2066
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2068
    :cond_3
    return-void

    .line 2053
    .end local v0    # "bkgBounds":Landroid/graphics/Rect;
    .end local v1    # "drawGlow":Z
    :cond_4
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v1

    goto :goto_0
.end method

.method private drawKeyBorder(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 5
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2159
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2165
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2166
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2167
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2171
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2173
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2174
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2178
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    iget v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2179
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 2176
    :cond_2
    iget v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;F[ILandroid/graphics/drawable/Drawable;Landroid/graphics/Rect;I)V
    .locals 14
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "keyTextSizeScaleFactor"    # F
    .param p5, "drawableState"    # [I
    .param p6, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "drawBounds"    # Landroid/graphics/Rect;
    .param p8, "iconGrav"    # I

    .prologue
    .line 2220
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PRIMARY:[I

    move-object/from16 v0, p5

    invoke-static {v6, v0}, Lcom/nuance/android/compat/ArraysCompat;->addAll([I[I)[I

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2222
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2224
    move-object/from16 v0, p6

    instance-of v6, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_2

    .line 2227
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 2247
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v11, v8, v7

    sub-int v12, v6, v9

    if-le v11, v12, :cond_4

    if-lez v11, :cond_8

    mul-int/2addr v6, v7

    div-int/2addr v6, v8

    invoke-static {v10, v7, v6}, Landroid/support/v4/app/ActivityCompatHoneycomb;->setSize(Landroid/graphics/Rect;II)V

    move v8, v6

    move v6, v7

    :goto_1
    and-int/lit8 v11, p8, 0x7

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v11

    move v7, v6

    :goto_2
    and-int/lit8 v6, p8, 0x70

    sparse-switch v6, :sswitch_data_0

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v9, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    :goto_3
    invoke-static {v10, v7, v6}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 2248
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

    .line 2250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2251
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2252
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    if-eqz v6, :cond_5

    .line 2253
    const/16 v6, 0x78

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2257
    :goto_4
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    if-nez v6, :cond_1

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    if-eqz v6, :cond_7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v6, v6, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v6, :cond_7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v6, v6, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    iget-boolean v6, v6, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-eqz v6, :cond_7

    .line 2259
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2261
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2269
    :goto_5
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2272
    return-void

    .line 2231
    :cond_2
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2232
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2233
    move-object/from16 v0, p3

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v6, v6

    mul-float v6, v6, p4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    .line 2235
    .local v2, "fontHeight":F
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-gtz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    .line 2237
    :cond_3
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v6, :cond_0

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    const/16 v7, 0xfea

    if-eq v6, v7, :cond_0

    .line 2239
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float v6, v2, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 2240
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

    .line 2241
    .local v3, "scaledWidth":I
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->dest:Landroid/graphics/Rect;

    double-to-int v7, v4

    invoke-static {v6, v3, v7}, Landroid/support/v4/app/ActivityCompatHoneycomb;->setSize(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 2247
    .end local v2    # "fontHeight":F
    .end local v3    # "scaledWidth":I
    .end local v4    # "maxHeight":D
    :cond_4
    if-lez v12, :cond_8

    mul-int/2addr v8, v9

    div-int v6, v8, v6

    invoke-static {v10, v6, v9}, Landroid/support/v4/app/ActivityCompatHoneycomb;->setSize(Landroid/graphics/Rect;II)V

    move v8, v9

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move v7, v6

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int v6, v7, v6

    move v7, v6

    goto/16 :goto_2

    :sswitch_0
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3

    :sswitch_1
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    goto/16 :goto_3

    .line 2255
    :cond_5
    const/16 v6, 0xff

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_4

    .line 2264
    :cond_6
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5

    .line 2267
    :cond_7
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_5

    :cond_8
    move v13, v6

    move v6, v8

    move v8, v13

    goto/16 :goto_1

    .line 2247
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;FF[ILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "keyboardCanvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "keyTextSizeScaleFactor"    # F
    .param p6, "baseLineScaleAdjust"    # F
    .param p7, "drawableState"    # [I
    .param p8, "keyBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2188
    invoke-direct {p0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2189
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 2215
    :goto_0
    return-void

    .line 2193
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2194
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    invoke-static {v1, p4}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2196
    iget v10, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2198
    .local v10, "altHeight":I
    iget v1, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    if-lez v1, :cond_2

    .line 2200
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2201
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2203
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    int-to-float v3, v3

    mul-float v3, v3, p6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2204
    const/16 v9, 0x51

    .line 2213
    .local v9, "iconGrav":I
    :goto_1
    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;F[ILandroid/graphics/drawable/Drawable;Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 2207
    .end local v9    # "iconGrav":I
    :cond_2
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2208
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2209
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v10

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2211
    :cond_3
    const/16 v9, 0x11

    .restart local v9    # "iconGrav":I
    goto :goto_1
.end method

.method private drawKeyLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;IFFI[ILandroid/graphics/Rect;)V
    .locals 15
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
    .line 2074
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2075
    .local v9, "csLabel":Ljava/lang/CharSequence;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2076
    .local v3, "label":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 2156
    :goto_1
    return-void

    .line 2075
    .end local v3    # "label":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2080
    .restart local v3    # "label":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0x9fff

    if-ne v1, v2, :cond_4

    const/4 v14, 0x1

    .line 2081
    .local v14, "isComponent":Z
    :goto_2
    if-eqz v14, :cond_2

    .line 2082
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2085
    :cond_2
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2086
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    int-to-float v1, v1

    mul-float v1, v1, p6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 2095
    .local v10, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 2097
    .local v8, "availableWidth":I
    const/4 v11, 0x0

    .line 2098
    .local v11, "horPadding":I
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_5

    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_5

    .line 2099
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2101
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v11, v1, 0x2

    .line 2106
    :cond_3
    :goto_3
    sub-int/2addr v8, v11

    .line 2108
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v8, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->shrinkLabelTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V

    .line 2111
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    if-lez v1, :cond_7

    .line 2112
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    int-to-float v2, v2

    mul-float v2, v2, p7

    float-to-int v2, v2

    sub-int v13, v1, v2

    .line 2118
    .local v13, "iLabelY":I
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2119
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    invoke-static {v1, v10}, Lcom/nuance/swype/util/DrawingUtils;->vAdjustCharAlignment$4ccb736e(Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;)I

    move-result v1

    add-int/2addr v13, v1

    .line 2121
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v12, v1, 0x2

    .line 2123
    .local v12, "iLabelX":I
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2124
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    const/16 v2, 0x11

    move-object/from16 v0, p2

    invoke-static {v3, v1, v2, v0}, Lcom/nuance/swype/util/DrawingUtils;->hAdjustCharAlignment(Ljava/lang/String;Landroid/graphics/Rect;ILandroid/graphics/Paint;)I

    move-result v1

    add-int/2addr v12, v1

    .line 2126
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ShadowEffect;->set(Landroid/graphics/Paint;)V

    .line 2127
    if-eqz v14, :cond_8

    .line 2128
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2129
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2152
    :goto_5
    int-to-float v4, v12

    int-to-float v5, v13

    move-object/from16 v0, p3

    iget-boolean v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    .line 2154
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->textShadow:Lcom/nuance/swype/input/ShadowEffect;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ShadowEffect;->reset(Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2080
    .end local v8    # "availableWidth":I
    .end local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v11    # "horPadding":I
    .end local v12    # "iLabelX":I
    .end local v13    # "iLabelY":I
    .end local v14    # "isComponent":Z
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2104
    .restart local v8    # "availableWidth":I
    .restart local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v11    # "horPadding":I
    .restart local v14    # "isComponent":Z
    :cond_5
    if-ltz p5, :cond_6

    move/from16 v11, p5

    goto :goto_3

    :cond_6
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v1, v2

    goto/16 :goto_3

    .line 2114
    :cond_7
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v13, v1

    .restart local v13    # "iLabelY":I
    goto/16 :goto_4

    .line 2132
    .restart local v12    # "iLabelX":I
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2133
    if-eqz p8, :cond_9

    sget-object v1, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v1

    and-int v1, v1, p8

    sget-object v2, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 2136
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miHighlightTextColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 2138
    :cond_9
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    if-eqz v1, :cond_c

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v1, :cond_c

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    iget-boolean v1, v1, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-eqz v1, :cond_c

    .line 2140
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2142
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 2145
    :cond_b
    move-object/from16 v0, p3

    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 2149
    :cond_c
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5
.end method

.method private drawPaddingBackground(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6012
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v1

    if-gtz v1, :cond_0

    .line 6024
    :goto_0
    return-void

    .line 6015
    :cond_0
    move-object v0, p1

    .line 6016
    .local v0, "keyboardCanvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 6017
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$color;->padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 6019
    .local v6, "color":I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 6020
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6021
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 6022
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

    .line 6023
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "isMultiline"    # Z

    .prologue
    .line 2461
    if-nez p6, :cond_1

    .line 2462
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2472
    :cond_0
    return-void

    .line 2464
    :cond_1
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2466
    .local v2, "lines":[Ljava/lang/String;
    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float v1, v3, v4

    .line 2468
    .local v1, "lineHeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2469
    aget-object v3, v2, v0

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, p4

    invoke-virtual {p1, v3, p3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAltIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5029
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getAltKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5058
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    goto :goto_0
.end method

.method private getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5038
    const/4 v0, 0x0

    .line 5039
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5040
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 5054
    :cond_0
    :goto_0
    return-object v0

    .line 5042
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5043
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5045
    :cond_2
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 5047
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    .line 5048
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabelUpperCase:Ljava/lang/CharSequence;

    .line 5050
    :cond_3
    if-nez v0, :cond_0

    .line 5051
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "label":Ljava/lang/CharSequence;
    iput-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabelUpperCase:Ljava/lang/CharSequence;

    .restart local v0    # "label":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5062
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    goto :goto_0
.end method

.method private getAltPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4971
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 4972
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4973
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 4974
    if-nez v0, :cond_0

    .line 4975
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 4981
    :cond_0
    :goto_0
    return-object v0

    .line 4977
    :cond_1
    if-nez v0, :cond_0

    .line 4978
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getAltPreviewLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4985
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getAltText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5066
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getDefaultSimpleAlternates(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 3381
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupCharsSimplifiedMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3382
    .local v0, "chars":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 3383
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3384
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3385
    .local v2, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "string/simple_alternates_for_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3386
    .local v4, "resourceName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3387
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 3388
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3390
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupCharsSimplifiedMap:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3392
    .end local v1    # "id":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getDefaultTypefaceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 927
    const-string v1, "string/custom_font_name_"

    .line 928
    .local v1, "prefix":Ljava/lang/String;
    sget v2, Lcom/nuance/swype/input/R$string;->custom_font_name:I

    invoke-static {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocalizedResourceId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 929
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDisplaySize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->displaySize:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 3054
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->displaySize:Landroid/graphics/Rect;

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->displaySize:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getGlowPaddingX(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 6
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4852
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
    .locals 6
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4856
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

.method private getKeyByKeyCode(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    .line 5548
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v4, :cond_1

    .line 5549
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 5550
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_0

    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_0

    .line 5555
    .end local v0    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "i$":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "len$":I
    :goto_1
    return-object v2

    .line 5549
    .restart local v0    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v1    # "i$":I
    .restart local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5555
    .end local v0    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "i$":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "len$":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getKeyByResId(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 5502
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v4, :cond_1

    .line 5503
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 5504
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-ne v4, p1, :cond_0

    .line 5509
    .end local v0    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "i$":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "len$":I
    :goto_1
    return-object v2

    .line 5503
    .restart local v0    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v1    # "i$":I
    .restart local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5509
    .end local v0    # "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "i$":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "len$":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getKeyIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4994
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getKeyIndices(II[I)I
    .locals 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .prologue
    .line 2531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2532
    .local v14, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    const/16 v17, -0x1

    .line 2533
    .local v17, "primaryIndex":I
    const/4 v5, -0x1

    .line 2534
    .local v5, "closestKey":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityThreshold:I

    move/from16 v18, v0

    add-int/lit8 v6, v18, 0x1

    .line 2535
    .local v6, "closestKeyDist":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v16

    .line 2537
    .local v16, "nearestKeyIndices":[I
    move-object/from16 v0, v16

    array-length v13, v0

    .line 2539
    .local v13, "keyCount":I
    const/4 v10, 0x0

    .line 2540
    .local v10, "isInsideAKey":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v13, :cond_0

    .line 2541
    aget v18, v16, v8

    aget-object v18, v14, v18

    .line 2542
    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$Key;->isInside(II)Z

    move-result v10

    .line 2544
    if-eqz v10, :cond_4

    .line 2545
    aget v17, v16, v8

    .line 2552
    :cond_0
    if-eqz v10, :cond_8

    .line 2553
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_8

    .line 2554
    aget v18, v16, v8

    aget-object v12, v14, v18

    .line 2555
    .local v12, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v7, 0x0

    .line 2556
    .local v7, "dist":I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;->isInside(II)Z

    move-result v9

    .line 2557
    .local v9, "isInside":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityCorrectOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityThreshold:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_2

    :cond_1
    if-eqz v9, :cond_6

    :cond_2
    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 2561
    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v15, v0

    .line 2562
    .local v15, "nCodes":I
    if-ge v7, v6, :cond_3

    .line 2563
    move v6, v7

    .line 2564
    aget v5, v16, v8

    .line 2567
    :cond_3
    if-eqz p3, :cond_7

    .line 2568
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v15

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    move/from16 v0, v18

    if-le v0, v7, :cond_5

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v19, v0

    add-int v20, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v11

    sub-int v21, v21, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2576
    add-int v18, v11, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v11

    sub-int v19, v19, v15

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2578
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_3
    if-ge v4, v15, :cond_6

    .line 2579
    add-int v18, v11, v4

    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v19, v0

    aget v19, v19, v4

    aput v19, p3, v18

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v11, v4

    aput v7, v18, v19

    .line 2578
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2540
    .end local v4    # "c":I
    .end local v7    # "dist":I
    .end local v9    # "isInside":Z
    .end local v11    # "j":I
    .end local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "nCodes":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 2571
    .restart local v7    # "dist":I
    .restart local v9    # "isInside":Z
    .restart local v11    # "j":I
    .restart local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v15    # "nCodes":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2587
    .end local v11    # "j":I
    .end local v15    # "nCodes":I
    :cond_6
    if-eqz v9, :cond_7

    .line 2588
    aget v17, v16, v8

    .line 2553
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2593
    .end local v7    # "dist":I
    .end local v9    # "isInside":Z
    .end local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_8
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2594
    move/from16 v17, v5

    .line 2596
    :cond_9
    return v17
.end method

.method private getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5005
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5006
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 5015
    .local v0, "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v0

    .line 5007
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 5008
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 5009
    .restart local v0    # "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 5010
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "label":Ljava/lang/CharSequence;
    iput-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .restart local v0    # "label":Ljava/lang/CharSequence;
    goto :goto_0

    .line 5013
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .restart local v0    # "label":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private static getLocalizedResourceId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .prologue
    .line 916
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->createLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
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

    .line 918
    .local v2, "resourceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 919
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 920
    move v0, p2

    .line 922
    :cond_0
    return v0
.end method

.method private getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5078
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    goto :goto_0
.end method

.method private getPopupResId(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5497
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    return v0
.end method

.method private getPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4956
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 4957
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4958
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 4959
    if-nez v0, :cond_0

    .line 4960
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 4966
    :cond_0
    :goto_0
    return-object v0

    .line 4962
    :cond_1
    if-nez v0, :cond_0

    .line 4963
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getPreviewText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2739
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-nez v4, :cond_1

    .line 2773
    :cond_0
    :goto_0
    return-object v2

    .line 2743
    :cond_1
    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v4, :cond_4

    .line 2745
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2746
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v4

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-gez v4, :cond_2

    move v4, v3

    :goto_1
    if-le v5, v4, :cond_0

    .line 2749
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-gez v6, :cond_3

    :goto_2
    aget v3, v5, v3

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2750
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->adjustShift(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2746
    :cond_2
    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_1

    .line 2749
    :cond_3
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_2

    .line 2753
    :cond_4
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 2754
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 2755
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2758
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 2760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2762
    .local v1, "newText":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 2763
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    .line 2764
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2762
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2769
    :cond_6
    move-object v2, v1

    goto :goto_0
.end method

.method private getSlidePopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5083
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupResId(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    goto :goto_0
.end method

.method private getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5070
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getThemedLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1205
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
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 3925
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 3926
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    .line 3927
    return-void
.end method

.method private handleTouchEventDown(Landroid/view/MotionEvent;Z)V
    .locals 11
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isMultiTouch"    # Z

    .prologue
    const/4 v10, 0x0

    .line 3762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 3763
    shr-int/lit8 v5, v7, 0x8

    .line 3764
    .local v5, "pointerIndex":I
    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 3766
    .local v4, "pointerId":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v7

    neg-int v1, v7

    .line 3767
    .local v1, "iOffsetX":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v7

    neg-int v2, v7

    .line 3771
    .local v2, "iOffsetY":I
    if-ltz v5, :cond_3

    .line 3772
    if-nez v5, :cond_1

    if-nez p2, :cond_1

    .line 3773
    const/4 v7, 0x1

    iput v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    .line 3774
    iput-boolean v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 3779
    :goto_0
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3780
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-direct {v9, p0, v4}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;I)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3783
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3786
    .local v3, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->clear()V

    .line 3788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 3789
    new-instance v7, Landroid/graphics/Point;

    invoke-static {p1, v5, v0}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v1

    invoke-static {p1, v5, v0}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v2

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3788
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3776
    .end local v0    # "i":I
    .end local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_1
    iget v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    goto :goto_0

    .line 3794
    .restart local v0    # "i":I
    .restart local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_2
    new-instance v7, Landroid/graphics/Point;

    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v1

    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v2

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3797
    invoke-virtual {p0, p1, v3, v10}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 3800
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3801
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    .line 3802
    .local v6, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v6, :cond_3

    .line 3803
    invoke-virtual {v6, v3, p1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    .line 3807
    .end local v0    # "i":I
    .end local v3    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .end local v6    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_3
    return-void
.end method

.method private handleTouchEventMove(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 3810
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v10

    neg-int v1, v10

    .line 3811
    .local v1, "iOffsetX":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v10

    neg-int v2, v10

    .line 3813
    .local v2, "iOffsetY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 3814
    shr-int/lit8 v8, v10, 0x8

    .line 3815
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 3816
    .local v7, "pointerId":I
    iget-object v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3817
    .local v6, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-nez v6, :cond_1

    .line 3864
    :cond_0
    :goto_0
    return-void

    .line 3821
    :cond_1
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->size()I

    move-result v3

    .line 3823
    .local v3, "iPathSize":I
    if-lez v3, :cond_0

    .line 3825
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 3826
    .local v5, "location":[I
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 3827
    invoke-static {p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getRawY(Landroid/view/MotionEvent;)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    sub-int/2addr v10, v11

    if-gez v10, :cond_3

    .line 3830
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 3831
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 3832
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

    .line 3839
    .end local v0    # "extendedPoint":Landroid/graphics/Point;
    .local v9, "ptNew":Landroid/graphics/Point;
    :goto_1
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 3840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p0, v6, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    .line 3857
    :goto_2
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->size()I

    move-result v10

    if-le v10, v3, :cond_0

    .line 3858
    iget v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 3859
    const/4 v10, 0x2

    invoke-virtual {p0, p1, v6, v10}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3835
    .end local v9    # "ptNew":Landroid/graphics/Point;
    :cond_2
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v1

    invoke-static {p1}, Lcom/nuance/swype/input/MotionEventWrapper;->getRawY(Landroid/view/MotionEvent;)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int/2addr v11, v12

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .restart local v9    # "ptNew":Landroid/graphics/Point;
    goto :goto_1

    .line 3842
    .end local v9    # "ptNew":Landroid/graphics/Point;
    :cond_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 3843
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-static {p1, v10, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v1

    const/4 v11, 0x0

    invoke-static {p1, v11, v4}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 3847
    .restart local v9    # "ptNew":Landroid/graphics/Point;
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 3848
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v10

    invoke-virtual {p0, v6, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    .line 3842
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3851
    .end local v9    # "ptNew":Landroid/graphics/Point;
    :cond_4
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v1

    const/4 v11, 0x0

    invoke-static {p1, v11}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v2

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 3853
    .restart local v9    # "ptNew":Landroid/graphics/Point;
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 3854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p0, v6, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    goto :goto_2
.end method

.method private handleTouchEventUp(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 3872
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 3874
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v8

    neg-int v1, v8

    .line 3875
    .local v1, "iOffsetX":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v8

    neg-int v2, v8

    .line 3877
    .local v2, "iOffsetY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 3878
    shr-int/lit8 v5, v8, 0x8

    .line 3879
    .local v5, "pointerIndex":I
    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 3880
    .local v4, "pointerId":I
    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3881
    .local v3, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-nez v3, :cond_1

    .line 3922
    :cond_0
    :goto_0
    return-void

    .line 3884
    :cond_1
    iget v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    add-int/lit8 v8, v8, -0x1

    :goto_1
    iput v8, p0, Lcom/nuance/swype/input/KeyboardViewEx;->multiTouchPointerCount:I

    .line 3891
    if-ltz v5, :cond_0

    .line 3894
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 3897
    new-instance v6, Landroid/graphics/Point;

    invoke-static {p1, v5, v0}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v1

    invoke-static {p1, v5, v0}, Lcom/nuance/swype/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v2

    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 3901
    .local v6, "ptNew":Landroid/graphics/Point;
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 3902
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3896
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3884
    .end local v0    # "i":I
    .end local v6    # "ptNew":Landroid/graphics/Point;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 3905
    .restart local v0    # "i":I
    :cond_3
    new-instance v6, Landroid/graphics/Point;

    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v1

    invoke-static {p1, v5}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v2

    invoke-direct {v6, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 3908
    .restart local v6    # "ptNew":Landroid/graphics/Point;
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->clipTouchPoint(Landroid/graphics/Point;)V

    .line 3909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3911
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v3, v8}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 3914
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3915
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v7

    .line 3916
    .local v7, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v7, :cond_0

    .line 3917
    invoke-virtual {v7, v3, p1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private hidePreviewKeyNew(I)V
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 5855
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->hide(I)V

    .line 5856
    return-void
.end method

.method protected static indexOfSingleCharLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "popupChars"    # Ljava/lang/CharSequence;

    .prologue
    .line 2643
    if-eqz p0, :cond_0

    .line 2644
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2646
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    .line 2649
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initKeyPrevManager()V
    .locals 4

    .prologue
    .line 1154
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v1, :cond_0

    .line 1166
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1167
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_key_preview_manager:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1168
    if-eqz v1, :cond_0

    .line 1169
    new-instance v1, Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPreviewStyleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/nuance/swype/view/KeyPreviewManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/view/OverlayView;Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;)V

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 1172
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private invalidateKeyByIndex(I)V
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 2990
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 2991
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_0

    .line 2992
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 2994
    :cond_0
    return-void
.end method

.method private prepareAltPopup()V
    .locals 3

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getThemedLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$layout;->alternate_char_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/PreviewView;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    .line 1216
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1217
    return-void
.end method

.method private preparePreviewPopup()V
    .locals 3

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getThemedLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/PreviewView;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    .line 1210
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1211
    return-void
.end method

.method private prepareScrubGesturePopup()V
    .locals 3

    .prologue
    .line 5318
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-nez v1, :cond_0

    .line 5319
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5320
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/nuance/swype/input/R$layout;->accessibility_scrub_gesture_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    .line 5322
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->setKeyboardView(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 5324
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method private pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .locals 1
    .param p1, "keys"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I

    .prologue
    .line 2785
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object v0, p1, p2

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_0

    .line 2786
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx$Key;->onPressed()V

    .line 2787
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 2789
    :cond_0
    return-void
.end method

.method private releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 1
    .param p1, "keys"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "inside"    # Z

    .prologue
    .line 2777
    array-length v0, p1

    if-le v0, p2, :cond_1

    aget-object v0, p1, p2

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 2779
    :cond_0
    aget-object v0, p1, p2

    invoke-virtual {v0, p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->onReleased(Z)V

    .line 2780
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 2782
    :cond_1
    return-void
.end method

.method private releaseOverlayView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4653
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-eqz v0, :cond_0

    .line 4654
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0}, Lcom/nuance/swype/view/OverlayView;->detach()V

    .line 4655
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 4657
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    .line 4658
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    .line 4660
    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 4555
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 4556
    :cond_0
    const/4 v1, 0x0

    .line 4564
    :goto_0
    return v1

    .line 4559
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 4560
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget-wide v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 4562
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    goto :goto_0
.end method

.method private resetAllPointers()V
    .locals 2

    .prologue
    .line 3754
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3755
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3756
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    goto :goto_0

    .line 3759
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private sanitizeFontSize(Ljava/lang/String;Landroid/graphics/Paint;Z)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "isLanguageMenuKey"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2282
    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizingFont:Z

    if-nez v4, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2287
    .local v0, "adjustment":F
    if-nez p3, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isIndianLetterCategory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2293
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKeyWidthReducedDockMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2294
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isMLLetterCategory()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isTALetterCategory()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKNLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2295
    :cond_3
    const v0, 0x3f733333    # 0.95f

    .line 2312
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isBamarLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2313
    const v0, 0x3f4ccccd    # 0.8f

    .line 2326
    :cond_4
    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    .line 2327
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    mul-float v3, v4, v0

    .line 2328
    .local v3, "textSize":F
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 2296
    .end local v3    # "textSize":F
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2297
    const v0, 0x3f59999a    # 0.85f

    goto :goto_1

    .line 2298
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isGULetterCategory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2299
    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_1

    .line 2301
    :cond_7
    const v0, 0x3f99999a    # 1.2f

    goto :goto_1

    .line 2305
    :cond_8
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKMLetterCategory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2306
    const v0, 0x3f733333    # 0.95f

    goto :goto_1

    .line 2308
    :cond_9
    const v0, 0x3f99999a    # 1.2f

    goto :goto_1

    .line 2316
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 2318
    const-string v4, "H"

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v2, v4, v5

    .line 2321
    .local v2, "maxWidth":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2322
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, p1, v6, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2323
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2
.end method

.method private setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p1, "keyIndex"    # I
    .param p2, "state"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 2816
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 2817
    iput p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 2818
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    return v0
.end method

.method private setLongPressTimeoutValue()V
    .locals 2

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$integer;->long_press_timeout_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 1131
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->getLongPressTimeoutValue()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 1135
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 1136
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    if-gez v0, :cond_1

    .line 1137
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 1140
    :cond_1
    return-void
.end method

.method private setMicrophoneKeyIcon()V
    .locals 5

    .prologue
    .line 4863
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 4864
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v1, :cond_0

    .line 4865
    const/16 v4, 0x193f

    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    .line 4866
    .local v2, "speechKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v2, :cond_0

    .line 4867
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v3

    .line 4870
    .local v3, "speechprovider":I
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4871
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_1

    .line 4872
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4876
    :goto_0
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4877
    instance-of v4, v0, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v4, :cond_2

    .line 4878
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4882
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4885
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "speechKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "speechprovider":I
    :cond_0
    return-void

    .line 4874
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "speechKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v3    # "speechprovider":I
    :cond_1
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 4880
    :cond_2
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method private showKey(I)V
    .locals 3
    .param p1, "keyIndex"    # I

    .prologue
    .line 2892
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v1, :cond_1

    .line 2907
    :cond_0
    :goto_0
    return-void

    .line 2896
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 2898
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2899
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "showKey - trying to popup when parent has null window token"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 2903
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewView:Lcom/nuance/swype/widget/PreviewView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;IZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 2904
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_0

    .line 2905
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopup(Landroid/widget/PopupWindow;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0
.end method

.method private showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 27
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "popupKeyboardId"    # I
    .param p3, "popupChars"    # Ljava/lang/CharSequence;
    .param p4, "extraKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3481
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 3482
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 3484
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 3486
    const/16 v18, 0x0

    .line 3487
    .local v18, "defaultPos":I
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultForAltCharsPopup(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/lang/CharSequence;)I

    move-result v18

    .line 3492
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    .line 3493
    .local v23, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    add-int v4, p2, v18

    move/from16 v0, v23

    mul-int/lit16 v5, v0, 0xff

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/android/util/LruCache;

    .line 3495
    .local v21, "keyPopups":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<Ljava/lang/CharSequence;Landroid/view/View;>;"
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :goto_0
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v3, :cond_c

    .line 3499
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getThemedLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupLayout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 3501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setPressDownPreviewEnabled(Z)V

    .line 3502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setDoubleBuffered(Z)V

    .line 3505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setPressDownPreviewEnabled(Z)V

    .line 3507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    new-instance v4, Lcom/nuance/swype/input/KeyboardViewEx$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/nuance/swype/input/KeyboardViewEx$3;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 3561
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_8

    .line 3564
    if-nez p4, :cond_7

    move/from16 v7, v18

    .line 3565
    .local v7, "idxDefault":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsPopupMaxCol:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v5

    add-int v10, v4, v5

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v10}, Lcom/nuance/swype/input/SlideSelectPopupManager;->createPopupCharsKeyboard(ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;ILcom/nuance/swype/input/KeyboardEx$Key;II)Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .line 3584
    .end local v7    # "idxDefault":I
    .local v8, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isSanitizeFont()Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/nuance/swype/input/KeyboardEx;->setSanitizeFont(Z)V

    .line 3585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 3586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 3589
    invoke-static/range {p0 .. p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 3590
    and-int/lit8 v3, v3, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    const/16 v20, 0x1

    .line 3591
    .local v20, "isRightSide":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->popupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    move/from16 v0, v20

    invoke-static {v3, v4, v5, v0}, Lcom/nuance/swype/view/ShadowDrawable;->addBackgroundShadow(Landroid/content/res/Resources;Landroid/view/View;Lcom/nuance/swype/input/ShadowProps;Z)V

    .line 3595
    if-nez v21, :cond_1

    .line 3596
    new-instance v21, Lcom/nuance/android/util/LruCache;

    .end local v21    # "keyPopups":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<Ljava/lang/CharSequence;Landroid/view/View;>;"
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    .line 3597
    .restart local v21    # "keyPopups":Lcom/nuance/android/util/LruCache;, "Lcom/nuance/android/util/LruCache<Ljava/lang/CharSequence;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    add-int v4, p2, v18

    move/from16 v0, v23

    mul-int/lit16 v5, v0, 0xff

    add-int/2addr v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3599
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3610
    .end local v20    # "isRightSide":Z
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 3611
    .local v17, "closeButton":Landroid/view/View;
    if-eqz v17, :cond_3

    .line 3612
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_d

    .line 3614
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3619
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getScreenWidth()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getScreenHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 3624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    if-nez v3, :cond_4

    .line 3625
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    .line 3630
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 3632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    .line 3634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_e

    .line 3639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3641
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v25

    .line 3642
    .local v25, "pt":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->map(Landroid/graphics/Point;)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->preparePopup(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v24

    .line 3656
    .end local v25    # "pt":Landroid/graphics/Point;
    .local v24, "pos":Landroid/graphics/Point;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-gez v3, :cond_10

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPopupOffset(II)V

    .line 3657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v22

    .line 3663
    .local v22, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v22, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 3664
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3665
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_8

    .line 3495
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v17    # "closeButton":Landroid/view/View;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v24    # "pos":Landroid/graphics/Point;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3564
    :cond_7
    const/4 v7, -0x1

    goto/16 :goto_1

    .line 3570
    :cond_8
    new-instance v8, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsPopupMaxCol:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v4

    add-int v16, v3, v4

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v8 .. v16}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;IIII)V

    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    goto/16 :goto_2

    .line 3576
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v3, :cond_a

    .line 3577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    const/4 v4, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v4, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->createStaticKeyboard(IILcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    goto/16 :goto_2

    .line 3580
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :cond_a
    new-instance v8, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-direct {v8, v3, v0, v4, v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZZ)V

    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    goto/16 :goto_2

    .line 3590
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 3602
    .end local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 3603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .line 3604
    .restart local v8    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v8, :cond_2

    .line 3605
    invoke-virtual {v8}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    goto/16 :goto_4

    .line 3616
    .restart local v17    # "closeButton":Landroid/view/View;
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 3646
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3647
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->calcHardkeyPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;

    move-result-object v24

    .restart local v24    # "pos":Landroid/graphics/Point;
    goto/16 :goto_6

    .line 3649
    .end local v24    # "pos":Landroid/graphics/Point;
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardViewEx;->calcPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;

    move-result-object v24

    .line 3650
    .restart local v24    # "pos":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_5

    .line 3651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IME;->dragLock(Z)V

    goto/16 :goto_6

    .line 3656
    :cond_10
    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_7

    .line 3672
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v24

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3676
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 3677
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3678
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v26

    .line 3679
    .local v26, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v26, :cond_13

    .line 3680
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 3681
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .line 3685
    .end local v26    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 3686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 3689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 3692
    :cond_14
    const/4 v3, 0x1

    return v3
.end method

.method private showPreviewKeyNew(IIZ)V
    .locals 1
    .param p1, "keyIndex"    # I
    .param p2, "pointerId"    # I
    .param p3, "isAlt"    # Z

    .prologue
    .line 5889
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKeyNew(Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 5890
    return-void
.end method

.method private showSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 8
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 3438
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getSlidePopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 3440
    .local v3, "res":I
    if-eqz v3, :cond_0

    .line 3441
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupAdditionalChars(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3442
    .local v2, "popupChars":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 3475
    .end local v2    # "popupChars":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v4

    .line 3447
    .restart local v2    # "popupChars":Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-nez v5, :cond_2

    .line 3448
    new-instance v5, Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/SlideSelectPopupManager;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    iput-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 3451
    :cond_2
    const/4 v1, 0x0

    .line 3453
    .local v1, "extraKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3454
    .local v0, "altPreviewIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 3455
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    .line 3456
    if-eqz v5, :cond_4

    .line 3460
    const/16 v5, -0xc8

    invoke-static {v7, v0, v5}, Lcom/nuance/swype/input/KeyboardEx;->createIconKey(Lcom/nuance/swype/input/KeyboardStyle;Landroid/graphics/drawable/Drawable;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 3461
    const-string v5, "smiley"

    iput-object v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    .line 3462
    const-string v5, ":-)"

    iput-object v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 3472
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3473
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v4

    goto :goto_0

    .line 3464
    :cond_4
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v6, 0xfdf

    if-eq v5, v6, :cond_3

    .line 3466
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    invoke-static {v7, v0, v5}, Lcom/nuance/swype/input/KeyboardEx;->createIconKey(Lcom/nuance/swype/input/KeyboardStyle;Landroid/graphics/drawable/Drawable;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    goto :goto_1
.end method

.method private showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z
    .locals 4
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "res"    # I
    .param p3, "popupChars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 3415
    const/4 v0, 0x0

    .line 3416
    .local v0, "launched":Z
    if-eqz p2, :cond_0

    .line 3417
    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 3418
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3419
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3420
    if-eqz v0, :cond_0

    .line 3422
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 3425
    :cond_0
    return v0
.end method

.method private shrinkLabelTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "availableWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2448
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 2450
    .local v0, "expectedWidth":F
    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2451
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    .line 2453
    .local v1, "textSize":F
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2458
    .end local v1    # "textSize":F
    :cond_0
    return-void
.end method

.method private shrinkTextToFit(Ljava/lang/String;ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "availableWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2436
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 2438
    .local v0, "expectedWidth":F
    int-to-float v2, p2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 2439
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    div-float v1, v2, v0

    .line 2440
    .local v1, "textSize":F
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2443
    .end local v1    # "textSize":F
    :cond_0
    return-void
.end method

.method private tracePath(Ljava/util/List;)Landroid/graphics/Path;
    .locals 8
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
    .line 2387
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 2388
    .local v3, "path":Landroid/graphics/Path;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 2389
    .local v5, "size":I
    add-int/lit8 v6, v5, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 2390
    .local v4, "point":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2391
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getNumTracePoints(Ljava/util/Collection;)I

    move-result v2

    .line 2392
    .local v2, "numPoints":I
    const/4 v1, 0x1

    .local v1, "n":I
    add-int/lit8 v0, v5, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    if-ge v1, v2, :cond_0

    .line 2393
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "point":Landroid/graphics/Point;
    check-cast v4, Landroid/graphics/Point;

    .line 2394
    .restart local v4    # "point":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2392
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2396
    :cond_0
    return-object v3
.end method

.method private upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5108
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v6

    iget-object v3, v6, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 5111
    .local v3, "locale":Ljava/util/Locale;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 5112
    .local v4, "upperCaseStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5115
    .local v5, "upperCaseText":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 5116
    .local v2, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v2, v6, :cond_0

    .line 5117
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 5122
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 5123
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5124
    .local v0, "ch":C
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->charUtil:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v6, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isUnicase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5125
    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 5122
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5129
    .end local v0    # "ch":C
    :cond_2
    return-object v5
.end method

.method private useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5019
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasShiftedSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validMovingPoints(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 3868
    invoke-static {p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->minMoveDistance:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abortKey()V
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    .line 1666
    return-void
.end method

.method public allowsMoreKey()Z
    .locals 1

    .prologue
    .line 4719
    const/4 v0, 0x1

    return v0
.end method

.method protected animateKeyboardDocking(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "currentPositionOfFinger1"    # Landroid/graphics/Point;
    .param p2, "currentPostionOfFinger2"    # Landroid/graphics/Point;

    .prologue
    .line 4603
    return-void
.end method

.method protected animateKeyboardSpreading(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "currentPositionOfFinger1"    # Landroid/graphics/Point;
    .param p2, "currentPostionOfFinger2"    # Landroid/graphics/Point;

    .prologue
    .line 4599
    return-void
.end method

.method public bufferDrawTrace(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2334
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v9}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 2335
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    if-nez v9, :cond_0

    .line 2336
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    .line 2337
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2338
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2339
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2340
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2343
    :cond_0
    iget v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miFading:I

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v2, v9, v10

    .line 2344
    .local v2, "fadeScale":F
    iget v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    int-to-float v9, v9

    mul-float v7, v9, v2

    .line 2345
    .local v7, "widthScaled":F
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    .line 2346
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePaint:Landroid/graphics/Paint;

    .line 2347
    .local v3, "paint":Landroid/graphics/Paint;
    iget v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miTraceColor:I

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 2355
    iget-boolean v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableTraceAlphaGradient:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v9}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->tracePath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v4

    .line 2357
    .local v4, "path":Landroid/graphics/Path;
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->offset(FF)V

    .line 2360
    iget-boolean v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableTraceAlphaGradient:Z

    if-eqz v9, :cond_2

    .line 2362
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 2363
    .local v1, "density":F
    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    .line 2364
    .local v5, "scale":F
    mul-float v8, v5, v2

    .line 2365
    .local v8, "widthStart":F
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2368
    move v6, v8

    .local v6, "width":F
    :goto_1
    cmpg-float v9, v6, v7

    if-gtz v9, :cond_3

    .line 2369
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2370
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2371
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2372
    .local v0, "alpha":I
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2373
    if-eqz v0, :cond_3

    .line 2374
    add-float/2addr v6, v5

    goto :goto_1

    .line 2355
    .end local v0    # "alpha":I
    .end local v1    # "density":F
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v5    # "scale":F
    .end local v6    # "width":F
    .end local v8    # "widthStart":F
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v9}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->bezierTracePath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v4

    goto :goto_0

    .line 2379
    .restart local v4    # "path":Landroid/graphics/Path;
    :cond_2
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2380
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2384
    .end local v2    # "fadeScale":F
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "widthScaled":F
    :cond_3
    return-void
.end method

.method protected calcHardkeyPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;
    .locals 6
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3712
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3714
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

    .line 3715
    .local v1, "x":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 3716
    .local v2, "y":I
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method protected calcKeyTopCenterInWindow(Lcom/nuance/swype/input/KeyboardEx$Key;[I)[I
    .locals 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "pos"    # [I

    .prologue
    .line 5817
    if-nez p2, :cond_0

    .line 5818
    const/4 v1, 0x2

    new-array p2, v1, [I

    .line 5820
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 5821
    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 5822
    .local v0, "xKeyCenter":I
    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    aput v2, p2, v1

    .line 5823
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v3

    iget v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, p2, v1

    .line 5824
    return-object p2
.end method

.method protected calcPopupKeyboardPos(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/Point;
    .locals 7
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3697
    iget v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 3698
    iget v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 3701
    .local v0, "mPopupX":I
    iget v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 3702
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v1, v4, v5

    .line 3704
    .local v1, "mPopupY":I
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int v2, v4, v5

    .line 3705
    .local v2, "x":I
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mWindowOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int v3, v4, v5

    .line 3707
    .local v3, "y":I
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    sub-int v5, v3, v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method protected canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "isAlt"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5862
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 5874
    :cond_1
    :goto_0
    return v0

    .line 5866
    :cond_2
    if-nez p2, :cond_1

    .line 5874
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->hasIconDescription()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V
    .locals 1
    .param p1, "state"    # Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .prologue
    .line 5268
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    move-result-object v0

    .line 5269
    .local v0, "asm":Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->setCurrentView(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 5270
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 5271
    return-void
.end method

.method public checkAccessibility()V
    .locals 1

    .prologue
    .line 5260
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5261
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 5262
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/accessibility/SoundResources;

    .line 5263
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->prepareScrubGesturePopup()V

    .line 5265
    :cond_0
    return-void
.end method

.method public checkMultiTap(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x4e2

    const/4 v5, -0x1

    const/16 v4, 0x6a

    .line 4723
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 4724
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-nez v0, :cond_1

    .line 4779
    :cond_0
    :goto_0
    return-void

    .line 4728
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 4730
    .local v1, "pendingMultitapTimeoutMesg":Z
    if-eqz v1, :cond_2

    .line 4731
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4734
    :cond_2
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v2, v2

    if-le v2, v3, :cond_8

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    if-nez v2, :cond_8

    .line 4735
    iput-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    .line 4741
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->allowsMoreKey()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4742
    iput v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_0

    .line 4747
    :cond_3
    iput p3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentIndex:I

    .line 4749
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->multitapIsInvalid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4750
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidIndex:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentIndex:I

    if-ne v2, v3, :cond_5

    .line 4751
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidTapCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    .line 4765
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4766
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4753
    :cond_5
    iput v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_1

    .line 4755
    :cond_6
    iget-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v2, p1, v2

    if-gez v2, :cond_7

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastSentIndex:I

    if-ne p3, v2, :cond_7

    .line 4756
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    goto :goto_1

    .line 4759
    :cond_7
    iput v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    .line 4760
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v2, :cond_4

    .line 4761
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v2}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    goto :goto_1

    .line 4772
    :cond_8
    iget-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v2, p1, v2

    if-gtz v2, :cond_9

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastSentIndex:I

    if-eq p3, v2, :cond_0

    .line 4773
    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v2, :cond_a

    .line 4774
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v2}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 4777
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    goto/16 :goto_0
.end method

.method public cleanupAccessibility()V
    .locals 2

    .prologue
    .line 5327
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-eqz v0, :cond_1

    .line 5329
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    if-eqz v0, :cond_0

    .line 5330
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    .line 5333
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 5335
    :cond_1
    return-void
.end method

.method public cleanupScrubGesture()V
    .locals 2

    .prologue
    .line 5338
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-eqz v0, :cond_0

    .line 5339
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->hideUpperScreenScrubGestureFrame(Z)V

    .line 5342
    :cond_0
    return-void
.end method

.method public clearGestureDetector()V
    .locals 1

    .prologue
    .line 1261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .line 1262
    return-void
.end method

.method public clearKeyOffsets()V
    .locals 1

    .prologue
    .line 4797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 4798
    return-void
.end method

.method public clearKeyboardState()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4606
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetTrace()V

    .line 4608
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 4609
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 4610
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 4611
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetAllPointers()V

    .line 4613
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4614
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 4616
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->removeAllPendingActions()V

    .line 4617
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4618
    return-void
.end method

.method public clearMiniKeyboardCache()V
    .locals 1

    .prologue
    .line 5983
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 5984
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5986
    :cond_0
    return-void
.end method

.method protected clipTouchPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 5198
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_2

    iget v0, p1, Landroid/graphics/Point;->y:I

    :goto_0
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 5199
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    :cond_0
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 5204
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 5205
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5207
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 5198
    goto :goto_0
.end method

.method public closePopup()V
    .locals 0

    .prologue
    .line 5927
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 5928
    return-void
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4633
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->releaseOverlayView()V

    .line 4634
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupAccessibility()V

    .line 4636
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 4637
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 4639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIgnoreDraw:Z

    .line 4641
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_0

    .line 4642
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->closing()V

    .line 4643
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 4646
    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->grayscalePaint:Landroid/graphics/Paint;

    .line 4647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    .line 4649
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4650
    return-void
.end method

.method public computeLongPressableTimeout()I
    .locals 4

    .prologue
    .line 3136
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 3137
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    .line 3138
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 3139
    .local v0, "expValue":I
    const/16 v1, 0x64

    .line 3140
    .local v1, "timeOut":I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    if-ge v0, v2, :cond_0

    .line 3141
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    sub-int v1, v2, v0

    .line 3143
    :cond_0
    return v1
.end method

.method protected configureAltKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 4
    .param p1, "view"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5753
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5754
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 5755
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PREVIEW:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5756
    invoke-virtual {p1, v0}, Lcom/nuance/swype/widget/PreviewView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5757
    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5778
    :cond_0
    :goto_0
    return-void

    .line 5759
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPreviewLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5760
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5763
    invoke-virtual {p1, v1}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 5764
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextColor:I

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 5765
    invoke-virtual {p1, v1}, Lcom/nuance/swype/widget/PreviewView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5767
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 5768
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 5769
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 5771
    :cond_2
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 5772
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;IZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 2
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "keyIndex"    # I
    .param p3, "isAlt"    # Z

    .prologue
    .line 5731
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 5732
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, p1, v0, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_0
    return-object v0

    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z
    .locals 3
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "isAlt"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5736
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5749
    :goto_0
    return v0

    .line 5740
    :cond_0
    if-eqz p3, :cond_1

    .line 5741
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->configureAltKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5746
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPopupBackgroundShadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-static {v1, p1, v2, v0}, Lcom/nuance/swype/view/ShadowDrawable;->addBackgroundShadow(Landroid/content/res/Resources;Landroid/view/View;Lcom/nuance/swype/input/ShadowProps;Z)V

    .line 5749
    const/4 v0, 0x1

    goto :goto_0

    .line 5743
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_1
.end method

.method protected configureKeyPreviewHelper(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 4
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5781
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPreviewText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5782
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPreviewIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5783
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 5784
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->ICON_STATE_PREVIEW:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->getCurrentDrawableState()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/android/compat/ArraysCompat;->addAll([I[I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5785
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5798
    :cond_0
    :goto_0
    return-void

    .line 5786
    :cond_1
    if-eqz v1, :cond_0

    .line 5787
    invoke-virtual {p1, v1}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 5788
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextColor:I

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 5790
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 5791
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupTextSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 5792
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 5794
    :cond_2
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupCharSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 5795
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewKeyTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Lcom/nuance/swype/widget/PreviewView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method protected currentLanguageSupportsCapitalization()Z
    .locals 1

    .prologue
    .line 5210
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentLanguageSupportsCapitalization()Z

    move-result v0

    return v0
.end method

.method protected detectAndSendKey(IIJ)V
    .locals 19
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 2667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-nez v5, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2671
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 2672
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2673
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v9, v5, v4

    .line 2675
    .local v9, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2676
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 2677
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    const/16 v6, 0xfdf

    if-eq v5, v6, :cond_3

    .line 2678
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 2687
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    goto :goto_0

    .line 2679
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 2681
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    goto :goto_1

    .line 2682
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2683
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_1

    .line 2684
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2685
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_1

    .line 2689
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2690
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    .line 2722
    :goto_2
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastSentIndex:I

    .line 2723
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    goto/16 :goto_0

    .line 2692
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v7

    .line 2693
    .local v7, "code":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v5, :cond_a

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapHandledInCore()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2695
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 2702
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    .line 2706
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-ltz v5, :cond_a

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    iget-object v6, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a

    .line 2707
    iget-object v5, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    aget v7, v5, v6

    .line 2711
    :cond_a
    if-eqz v9, :cond_b

    .line 2712
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 2714
    :cond_b
    const/4 v5, 0x2

    new-array v8, v5, [I

    .line 2715
    .local v8, "keyInfo":[I
    const/4 v5, 0x0

    aput p1, v8, v5

    .line 2716
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftGestureOffset()I

    move-result v5

    neg-int v5, v5

    move/from16 v0, p2

    if-le v0, v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftGestureOffset()I

    move-result v5

    add-int v5, v5, p2

    :goto_4
    aput v5, v8, v6

    .line 2718
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    const/4 v6, 0x0

    aget v6, v8, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 2719
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    const/4 v6, 0x1

    aget v6, v8, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 2720
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardPoint:Landroid/graphics/Point;

    move-object/from16 v5, p0

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_2

    .line 2699
    .end local v8    # "keyInfo":[I
    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 2700
    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v16, p3

    invoke-virtual/range {v11 .. v17}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_3

    .line 2716
    .restart local v8    # "keyInfo":[I
    :cond_d
    const/4 v5, 0x0

    goto :goto_4
.end method

.method protected detectAndSendKeyWrapper(IIJ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 2662
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 2663
    return-void
.end method

.method public dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4680
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4681
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setVisibility(I)V

    .line 4682
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4683
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 4684
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 4685
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    .line 4687
    :cond_0
    return-void
.end method

.method protected dismissPreviewPopup()V
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_1

    .line 2917
    :cond_0
    :goto_0
    return-void

    .line 2914
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public dismissSingleAltCharPopup()V
    .locals 1

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_1

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2924
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2925
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method protected displaysAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4933
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4934
    iget-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    if-eqz v2, :cond_1

    .line 4941
    :cond_0
    :goto_0
    return v0

    .line 4939
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4941
    goto :goto_0
.end method

.method protected drawKey(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ZLandroid/graphics/Rect;IIIFF)V
    .locals 36
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
    .line 1810
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v5, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1814
    :cond_1
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

    if-eqz v5, :cond_0

    .line 1818
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->highlightKeyArea(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v9

    .line 1820
    .local v9, "highLightKeyArea":I
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    .line 1821
    .local v34, "keyBackground":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, v34

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1823
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->getCurrentDrawableState()[I

    move-result-object v32

    .line 1824
    .local v32, "drawableState":[I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isWriting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1825
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_2
    move-object/from16 v0, v32

    array-length v5, v0

    move/from16 v0, v33

    if-ge v0, v5, :cond_2

    .line 1827
    aget v5, v32, v33

    const v6, 0x10100a7

    if-ne v5, v6, :cond_6

    .line 1828
    move-object/from16 v0, v32

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [I

    move-object/from16 v35, v0

    .line 1829
    .local v35, "temp":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v5, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1830
    add-int/lit8 v5, v33, 0x1

    move-object/from16 v0, v32

    array-length v6, v0

    sub-int v6, v6, v33

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1831
    move-object/from16 v32, v35

    .line 1836
    .end local v33    # "i":I
    .end local v35    # "temp":[I
    :cond_2
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1838
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/KeyboardEx$Key;->getVisibleBounds()Landroid/graphics/Rect;

    move-result-object v30

    .line 1840
    .local v30, "keyBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1842
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

    .line 1845
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v34

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1846
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyBorder(Landroid/graphics/Canvas;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-static {v5, v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1852
    move-object/from16 v0, p3

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    int-to-float v5, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 1856
    .local v13, "fm":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->displaysAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    .line 1857
    if-eqz v5, :cond_4

    .line 1858
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 1859
    .local v31, "csAltLabel":Ljava/lang/CharSequence;
    if-eqz v31, :cond_7

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1861
    .local v10, "altLabel":Ljava/lang/String;
    :goto_3
    if-nez p4, :cond_a

    .line 1862
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1863
    .local v12, "altIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_8

    .line 1864
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v13}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetrics;)V

    .line 1872
    :cond_3
    :goto_4
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1873
    .local v19, "leftAltLabel":Ljava/lang/String;
    :goto_5
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v22, 0x50

    const/16 v23, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v9

    move-object/from16 v21, v13

    invoke-direct/range {v14 .. v23}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;IZ)V

    .end local v10    # "altLabel":Ljava/lang/String;
    .end local v12    # "altIcon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "leftAltLabel":Ljava/lang/String;
    .end local v31    # "csAltLabel":Ljava/lang/CharSequence;
    :cond_4
    :goto_6
    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p9

    move/from16 v27, p10

    move/from16 v28, v9

    move-object/from16 v29, v32

    .line 1888
    invoke-direct/range {v20 .. v30}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;IFFI[ILandroid/graphics/Rect;)V

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move-object/from16 v26, p5

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, v32

    .line 1892
    invoke-direct/range {v22 .. v30}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Rect;FF[ILandroid/graphics/Rect;)V

    .line 1896
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1820
    .end local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v30    # "keyBounds":Landroid/graphics/Rect;
    .end local v32    # "drawableState":[I
    .end local v34    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    goto/16 :goto_1

    .line 1825
    .restart local v32    # "drawableState":[I
    .restart local v33    # "i":I
    .restart local v34    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_6
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_2

    .line 1859
    .end local v33    # "i":I
    .restart local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v30    # "keyBounds":Landroid/graphics/Rect;
    .restart local v31    # "csAltLabel":Ljava/lang/CharSequence;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1866
    .restart local v10    # "altLabel":Ljava/lang/String;
    .restart local v12    # "altIcon":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v22, 0x30

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v13

    invoke-direct/range {v14 .. v23}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;IZ)V

    goto/16 :goto_4

    .line 1872
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1880
    .end local v12    # "altIcon":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p3

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v6, 0xff7

    if-ne v5, v6, :cond_4

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v28, 0x30

    const/16 v29, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v27, v13

    invoke-direct/range {v20 .. v29}, Lcom/nuance/swype/input/KeyboardViewEx;->drawKeyAltLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Paint$FontMetrics;IZ)V

    goto/16 :goto_6
.end method

.method public enableSimplifiedMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1328
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    .line 1329
    return-void
.end method

.method protected findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 4
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
    .line 4888
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 4889
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p2, :cond_0

    .line 4894
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .locals 1

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 3722
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3725
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 3729
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 3730
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3733
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultForAltCharsPopup(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "popupChars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, -0x1

    .line 2623
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->altCharsForceFirstDefault:Z

    if-eqz v3, :cond_1

    .line 2625
    const/4 v1, 0x0

    .line 2639
    :cond_0
    :goto_0
    return v1

    .line 2628
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2632
    .local v0, "altLabel":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    if-nez v3, :cond_2

    move v1, v2

    .line 2633
    .local v1, "idx":I
    :goto_1
    if-ne v2, v1, :cond_0

    .line 2635
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2637
    invoke-static {v2, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->indexOfSingleCharLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    .line 2632
    .end local v1    # "idx":I
    :cond_2
    invoke-static {v0, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->indexOfSingleCharLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1
.end method

.method public getDefaultKeyInSlideSelectPopup()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 5941
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v0, :cond_0

    .line 5942
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 5944
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/swype/input/IME;->getExtendedEventForView(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getFrozenPointerState(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .locals 1
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 5932
    new-instance v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    return-object v0
.end method

.method public getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2605
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2606
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v0, v0, p1

    .line 2609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2600
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    return-object v0
.end method

.method public getKeyIndexForPoint(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 5914
    invoke-static {p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->access$600(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method protected getKeyIndexStrict(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2501
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v3

    .line 2502
    .local v3, "nearestKeyIndices":[I
    array-length v2, v3

    .line 2503
    .local v2, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2504
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget v5, v3, v0

    aget-object v1, v4, v5

    .line 2505
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_0

    .line 2506
    aget v4, v3, v0

    .line 2509
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1
    return v4

    .line 2503
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2509
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method protected getKeyIndices(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2513
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2514
    .local v3, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v5, -0x1

    .line 2515
    .local v5, "primaryIndex":I
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v6, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v4

    .line 2516
    .local v4, "nearestKeyIndices":[I
    array-length v2, v4

    .line 2518
    .local v2, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2519
    aget v6, v4, v0

    aget-object v1, v3, v6

    .line 2520
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->isInside(II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v6, :cond_1

    .line 2521
    aget v5, v4, v0

    .line 2526
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    return v5

    .line 2518
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getKeyListInSlideSelectPopup()Ljava/util/List;
    .locals 1
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
    .line 5949
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-eqz v0, :cond_0

    .line 5950
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->getKeyList()Ljava/util/List;

    move-result-object v0

    .line 5952
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyPreviewRectInWindow(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "constrainTop"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5828
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 5831
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5833
    .local v1, "popupWidth":I
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewHeight:I

    .line 5835
    .local v0, "popupHeight":I
    iget v5, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 5836
    .local v3, "x":I
    iget v5, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewOffset:I

    add-int v4, v5, v6

    .line 5840
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->recalculateOffsets()V

    .line 5842
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v5, v5, v9

    add-int/2addr v5, v4

    if-gez v5, :cond_0

    .line 5844
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v5, v5, v9

    neg-int v4, v5

    .line 5847
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    add-int v5, v3, v1

    add-int v6, v4, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5848
    .local v2, "rc":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v6, v5, v8

    aget v5, v5, v9

    invoke-static {v2, v6, v5}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 5850
    return-object v2
.end method

.method protected getKeyTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardFontBold()Z

    move-result v0

    .line 1711
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceBold:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->typefaceNormal:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public getKeyboard()Lcom/nuance/swype/input/KeyboardEx;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    return-object v0
.end method

.method public getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .locals 1

    .prologue
    .line 5274
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 6006
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method public getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5074
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->useShiftAsPrimary(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getMaxRowHeight()I
    .locals 5

    .prologue
    .line 5993
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    iget-object v3, v4, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    .line 5994
    .local v3, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    const/4 v1, 0x0

    .line 5995
    .local v1, "max":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 5996
    .local v2, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx$Row;->getHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5997
    goto :goto_0

    .line 5998
    .end local v2    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_0
    return v1
.end method

.method protected getNearestKeyIndex(II)I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2477
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v7, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v5

    .line 2478
    .local v5, "nearestKeyIndices":[I
    array-length v3, v5

    .line 2481
    .local v3, "keyCount":I
    const v6, 0x7fffffff

    .line 2482
    .local v6, "smallestDist":I
    const/4 v4, -0x1

    .line 2483
    .local v4, "nearest":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2484
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget v8, v5, v1

    aget-object v2, v7, v8

    .line 2485
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v7, :cond_0

    .line 2486
    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v0

    .line 2487
    .local v0, "dist":I
    if-ge v0, v6, :cond_0

    .line 2488
    move v6, v0

    .line 2489
    aget v4, v5, v1

    .line 2483
    .end local v0    # "dist":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2493
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    return v4
.end method

.method protected getNumTracePoints(Ljava/util/Collection;)I
    .locals 2
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
    .line 2430
    .local p1, "points":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Point;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2431
    .local v0, "numPoints":I
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    if-eqz v1, :cond_0

    .end local v0    # "numPoints":I
    :goto_0
    return v0

    .restart local v0    # "numPoints":I
    :cond_0
    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getOverlayView()Lcom/nuance/swype/view/OverlayView;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    return-object v0
.end method

.method public final getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    return-object v0
.end method

.method protected getPopupAdditionalChars(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3337
    const-string v0, ""

    .line 3338
    .local v0, "popupChars":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasStandardPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3339
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSymbolSelectPopupEnabledForCurrentLayer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3341
    const/4 v1, 0x0

    .line 3371
    :goto_0
    return-object v1

    .line 3344
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v1, :cond_3

    .line 3346
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 3347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3358
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultSimpleAlternates(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3363
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3365
    const/4 v0, 0x0

    :cond_2
    :goto_2
    move-object v1, v0

    .line 3371
    goto :goto_0

    .line 3361
    :cond_3
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    goto :goto_1

    .line 3367
    :cond_4
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->enableSimplifiedMode:Z

    if-eqz v1, :cond_2

    .line 3369
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final getPopupViewManager()Lcom/nuance/swype/view/PopupViewManager;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    return-object v0
.end method

.method public final getPopupViewManagerCreate()Lcom/nuance/swype/view/PopupViewManager;
    .locals 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Lcom/nuance/swype/view/PopupViewManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/PopupViewManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    return-object v0
.end method

.method public getPopupYAdjust(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x1

    .line 5808
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$fraction;->slide_select_popup_adjust_y_factor:I

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 5809
    .local v0, "adjustYFactor":F
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 5810
    .local v1, "reference":I
    :goto_0
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 5809
    .end local v1    # "reference":I
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getMaxRowHeight()I

    move-result v1

    goto :goto_0
.end method

.method protected getScreenHeight()I
    .locals 1

    .prologue
    .line 3064
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getDisplaySize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method protected getScreenWidth()I
    .locals 1

    .prologue
    .line 3060
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getDisplaySize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getScrubGesturView()Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    .locals 1

    .prologue
    .line 5398
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    return-object v0
.end method

.method protected getShiftGestureOffset()I
    .locals 1

    .prologue
    .line 5194
    const/4 v0, 0x0

    return v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 3

    .prologue
    .line 1376
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1377
    .local v1, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1378
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v2, :cond_0

    .line 1381
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->currentLanguageSupportsCapitalization()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCapsModeAtCursor(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->capsModeToShiftState(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 1391
    :cond_0
    :goto_0
    return-object v1

    .line 1387
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    goto :goto_0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 4690
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4691
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 4692
    const/4 v0, 0x1

    .line 4694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCallbackMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x19

    const/16 v6, 0x3eb

    const/4 v3, 0x0

    const/16 v5, 0x401

    .line 768
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 891
    :goto_0
    return v3

    .line 770
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->showKey(I)V

    .line 891
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 774
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    goto :goto_1

    .line 778
    :sswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto :goto_1

    .line 782
    :sswitch_3
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->repeatKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 802
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 803
    .local v1, "keyIndex":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 804
    .local v2, "pointerId":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 806
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v4

    .line 807
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 813
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v4

    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 814
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v4, v4

    if-lez v4, :cond_1

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v4, v3

    const/16 v4, 0xfe4

    if-ne v3, v4, :cond_0

    .line 818
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    :cond_2
    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 828
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)V

    goto :goto_1

    .line 836
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "keyIndex":I
    .end local v2    # "pointerId":I
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->popupMiniKeyboardOrLongPress()Z

    goto :goto_1

    .line 844
    :sswitch_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->multitapTimeOut()V

    goto :goto_1

    .line 848
    :sswitch_7
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v3, :cond_3

    .line 849
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-interface {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 851
    :cond_3
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->showCompleteTrace:Z

    if-nez v3, :cond_4

    .line 852
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 855
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 856
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    goto/16 :goto_1

    .line 866
    :sswitch_8
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 867
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfRadius:F

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 868
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "MSG_FADING reset trace"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 869
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetTrace()V

    .line 870
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_1

    .line 873
    :cond_5
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miFading:I

    add-int/lit8 v3, v3, -0x23

    iput v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miFading:I

    .line 874
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfRadius:F

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfDecay:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfRadius:F

    .line 875
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 876
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 877
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 880
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    goto/16 :goto_1

    .line 886
    :sswitch_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    goto/16 :goto_1

    .line 768
    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_4
        0x6a -> :sswitch_6
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_3
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_2
        0x3f0 -> :sswitch_9
        0x400 -> :sswitch_7
        0x401 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3249
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;II)V
    .locals 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "pointerId"    # I

    .prologue
    const/16 v6, 0x68

    .line 3104
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3132
    :cond_0
    :goto_0
    return-void

    .line 3108
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3109
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 3112
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 3114
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    .line 3115
    const/16 v1, 0x64

    .line 3116
    .local v1, "timeOut":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3117
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 3119
    .local v0, "expValue":I
    if-ltz v0, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    if-ge v0, v2, :cond_2

    .line 3120
    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    sub-int v1, v2, v0

    .line 3127
    .end local v0    # "expValue":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3124
    :cond_3
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    goto :goto_1
.end method

.method protected handlePreTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 0
    .param p1, "points"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 4849
    return-void
.end method

.method protected handleScrollDown()V
    .locals 2

    .prologue
    .line 5155
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "handleScrollDown"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 5156
    return-void
.end method

.method protected handleScrollLeft()V
    .locals 0

    .prologue
    .line 5163
    return-void
.end method

.method protected handleScrollRight()V
    .locals 0

    .prologue
    .line 5167
    return-void
.end method

.method protected handleScrollUp()V
    .locals 0

    .prologue
    .line 5160
    return-void
.end method

.method public handleScrubGestureFrameHoverEventExit(Landroid/view/MotionEvent;ZZ)Z
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isTouchEventUp"    # Z
    .param p3, "isExitFromBottom"    # Z

    .prologue
    .line 5299
    if-eqz p2, :cond_1

    .line 5300
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    .line 5305
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5301
    :cond_1
    if-nez p3, :cond_0

    .line 5303
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    goto :goto_0
.end method

.method public handleScrubGestureFrameHoverEventMove(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 5309
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventMove(Landroid/view/MotionEvent;)V

    .line 5310
    const/4 v0, 0x1

    return v0
.end method

.method protected handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 4504
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4521
    :goto_0
    return-void

    .line 4508
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 4510
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 4514
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 4518
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 4508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4919
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4951
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v1, 0xfdf

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasAltSymbolsForPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4905
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasPrimarySymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4926
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIcon(Lcom/nuance/swype/input/KeyboardEx$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasShiftedSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4898
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasStandardPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3314
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 3315
    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasSymbolSelectPopupResource(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4912
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideKeyPreview(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 5895
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_2

    .line 5896
    if-eq p1, v1, :cond_1

    .line 5897
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hidePreviewKeyNew(I)V

    .line 5904
    :cond_0
    :goto_0
    return-void

    .line 5899
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0}, Lcom/nuance/swype/view/KeyPreviewManager;->dismissAllNow()V

    goto :goto_0

    .line 5901
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5902
    invoke-virtual {p0, v1, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    goto :goto_0
.end method

.method public highlightKeyArea(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5251
    sget-object v0, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v0

    return v0
.end method

.method protected horizontalPinch(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "positionOfFinger1"    # Landroid/graphics/Point;
    .param p2, "postionOfFinger2"    # Landroid/graphics/Point;

    .prologue
    .line 4592
    return-void
.end method

.method protected horizontalSpread(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "positionOfFinger1"    # Landroid/graphics/Point;
    .param p2, "postionOfFinger2"    # Landroid/graphics/Point;

    .prologue
    .line 4595
    return-void
.end method

.method public initGestureDetector(II)V
    .locals 2
    .param p1, "keyboardWidth"    # I
    .param p2, "keyboardHeight"    # I

    .prologue
    .line 1222
    new-instance v0, Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/nuance/swype/input/TwoFingersGestureDetector;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .line 1224
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    new-instance v1, Lcom/nuance/swype/input/KeyboardViewEx$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/KeyboardViewEx$2;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->setListener(Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;)V

    .line 1258
    return-void
.end method

.method public invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x0

    .line 2969
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    move v1, v4

    .line 2970
    .local v1, "glowPaddingX":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mGlow:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    move v2, v4

    .line 2972
    .local v2, "glowPaddingY":I
    :goto_1
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

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    iget v8, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v9, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2976
    .local v0, "dirtyRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2977
    .local v3, "keyboardRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v0, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 2978
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2980
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate(Landroid/graphics/Rect;)V

    .line 2981
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2983
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2984
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 2987
    :cond_0
    return-void

    .line 2969
    .end local v0    # "dirtyRect":Landroid/graphics/Rect;
    .end local v1    # "glowPaddingX":I
    .end local v2    # "glowPaddingY":I
    .end local v3    # "keyboardRect":Landroid/graphics/Rect;
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingX(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v1

    goto :goto_0

    .line 2970
    .restart local v1    # "glowPaddingX":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getGlowPaddingY(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    goto :goto_1
.end method

.method public invalidateKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v2, -0x1

    .line 1333
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 1334
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1335
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->requestLayout()V

    .line 1336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 1337
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 1338
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->computeProximityThreshold(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1340
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1342
    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 1343
    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 1344
    return-void
.end method

.method public invalidateKeyboardImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2957
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 2958
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 2959
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 2965
    :cond_0
    return-void
.end method

.method public isAltKeyPopupAllowed(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5255
    const/4 v0, 0x1

    return v0
.end method

.method public isDoublePinyinMode()Z
    .locals 1

    .prologue
    .line 5493
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawBufferManagerSet()Z
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmojiKeyboardShown()Z
    .locals 1

    .prologue
    .line 5388
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    return v0
.end method

.method protected isExploreByTouchOn()Z
    .locals 1

    .prologue
    .line 5278
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 6002
    const/4 v0, 0x0

    return v0
.end method

.method public isHandlingTrace()Z
    .locals 1

    .prologue
    .line 5247
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    return v0
.end method

.method protected isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 4
    .param p1, "pressedkey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v1, 0x0

    .line 3068
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v2, :cond_1

    .line 3079
    :cond_0
    :goto_0
    return v1

    .line 3071
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3074
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v0

    .line 3076
    .local v0, "isSupportingAutoSpace":Z
    const/16 v2, 0x8

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 3077
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isMultitapHandledInCore()Z
    .locals 1

    .prologue
    .line 2731
    const/4 v0, 0x1

    return v0
.end method

.method public isMultitapping()Z
    .locals 1

    .prologue
    .line 4698
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    return v0
.end method

.method public isPopupKeyboardShowing()Z
    .locals 1

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

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

.method public isPressDownPreviewEnabled()Z
    .locals 1

    .prologue
    .line 1443
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    return v0
.end method

.method protected isPressHoldFlickrMessage()Z
    .locals 1

    .prologue
    .line 5147
    const/4 v0, 0x0

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 2

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    .line 1405
    .local v0, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isShortPressState(I)Z
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2658
    :goto_0
    return v0

    .line 2654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2658
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected isSlideSelectEnabled()Z
    .locals 1

    .prologue
    .line 3260
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled:Z

    return v0
.end method

.method protected isSupportMultitouchGesture()Z
    .locals 1

    .prologue
    .line 5170
    const/4 v0, 0x0

    return v0
.end method

.method protected isSwypingSupportedAndEnabled()Z
    .locals 1

    .prologue
    .line 4802
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTraceInputPreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSymbolSelectPopupEnabledForCurrentLayer()Z
    .locals 1

    .prologue
    .line 3324
    const/4 v0, 0x1

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 4814
    const/4 v0, 0x0

    return v0
.end method

.method protected isTraceInputPreferenceEnabled()Z
    .locals 1

    .prologue
    .line 4818
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 4819
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isSwypingEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTracePointsSpanMoreThanOneKey(IIII)Z
    .locals 6
    .param p1, "oldX"    # I
    .param p2, "newX"    # I
    .param p3, "oldY"    # I
    .param p4, "newY"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 4823
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v0

    .line 4824
    .local v0, "keyIndex1":I
    invoke-virtual {p0, p2, p4}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v1

    .line 4826
    .local v1, "keyIndex2":I
    if-eq v0, v5, :cond_2

    if-eq v1, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v4, v4

    if-le v4, v2, :cond_2

    .line 4834
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 4841
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 4834
    goto :goto_0

    .line 4835
    :cond_2
    if-ne v0, v5, :cond_3

    if-eq v1, v5, :cond_3

    if-ne p1, p2, :cond_0

    if-ne p3, p4, :cond_0

    :cond_3
    move v2, v3

    .line 4841
    goto :goto_0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 5137
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    return v0
.end method

.method protected isWriteInputEnabled()Z
    .locals 1

    .prologue
    .line 5133
    const/4 v0, 0x0

    return v0
.end method

.method public isWriting()Z
    .locals 1

    .prologue
    .line 5142
    const/4 v0, 0x0

    return v0
.end method

.method public miniKeyboardOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5560
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_1

    .line 5561
    const/4 v0, 0x0

    .line 5576
    :cond_0
    :goto_0
    return v0

    .line 5564
    :cond_1
    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_0

    .line 5571
    const/16 v1, 0x43

    if-eq p1, v1, :cond_2

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_2

    const/16 v1, 0x70

    if-ne p1, v1, :cond_0

    .line 5573
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto :goto_0
.end method

.method public miniKeyboardOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 5581
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "miniKeyboardOnKeyUp(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 5582
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_1

    .line 5598
    :cond_0
    :goto_0
    return v0

    .line 5586
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3

    .line 5587
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "BACK or ESCAPE (dismiss popup)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 5588
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 5589
    const/4 v0, 0x1

    goto :goto_0

    .line 5592
    :cond_3
    const/16 v1, 0x15

    if-eq p1, v1, :cond_4

    const/16 v1, 0x16

    if-eq p1, v1, :cond_4

    const/16 v1, 0x13

    if-eq p1, v1, :cond_4

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    const/16 v1, 0x42

    if-eq p1, v1, :cond_4

    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 5595
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z
    .locals 1
    .param p1, "ptr"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "ptNew"    # Landroid/graphics/Point;
    .param p3, "time"    # J

    .prologue
    .line 3255
    invoke-virtual {p1, p2, p3, p4}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->add(Landroid/graphics/Point;J)V

    .line 3256
    const/4 v0, 0x1

    return v0
.end method

.method protected multitapClearInvalid()V
    .locals 1

    .prologue
    .line 4782
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidKey:I

    .line 4783
    return-void
.end method

.method protected multitapIsInvalid()Z
    .locals 2

    .prologue
    .line 4786
    const/4 v0, -0x1

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInvalidKey:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected multitapTimeOut()V
    .locals 1

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 4791
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 4793
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4794
    return-void
.end method

.method protected notifyHardwareKeyboardActionListener(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 5907
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 5908
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onHardwareCharKey(I[I)V

    .line 5910
    :cond_0
    return-void
.end method

.method public declared-synchronized notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 2808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2810
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 2811
    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    :cond_0
    monitor-exit p0

    return-void

    .line 2808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 2792
    monitor-enter p0

    if-nez p1, :cond_1

    .line 2804
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2796
    :cond_1
    :try_start_0
    instance-of v0, p0, Lcom/nuance/swype/input/AlphaInputView;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2797
    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2792
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2799
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    .line 2801
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 4664
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4665
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v0, :cond_0

    .line 4666
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    .line 4667
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/view/OverlayView;->attach(Landroid/view/View;)V

    .line 4668
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->initKeyPrevManager()V

    .line 4670
    :cond_0
    return-void
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    .line 5219
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onBeginDrag(): XXX"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 5220
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 5221
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 5223
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 5224
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 5225
    const/16 v0, 0x7f

    invoke-static {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 5226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    .line 5227
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 5228
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1482
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->dragLock(Z)V

    .line 1485
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4675
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4676
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->closing()V

    .line 4677
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 5233
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 1550
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1552
    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    if-eqz v6, :cond_8

    .line 1555
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1557
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v5

    .line 1558
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v3

    .line 1560
    .local v3, "height":I
    if-lez v5, :cond_4

    if-lez v3, :cond_4

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v6, :cond_4

    .line 1561
    shl-int/lit8 v6, v5, 0x10

    add-int v4, v6, v3

    .line 1562
    .local v4, "key":I
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/DrawBufferManager;->getObjectFromCache(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1564
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1566
    :cond_2
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1571
    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->lowEndDeviceBuild:Z

    if-eqz v6, :cond_5

    .line 1572
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1578
    :goto_0
    sget-object v6, Lcom/nuance/swype/input/KeyboardViewEx;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1580
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v4, v7}, Lcom/nuance/swype/input/DrawBufferManager;->addObjectToCache(ILjava/lang/Object;)V

    .line 1582
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v6, :cond_6

    .line 1632
    .end local v3    # "height":I
    .end local v4    # "key":I
    .end local v5    # "width":I
    :cond_4
    :goto_1
    return-void

    .line 1575
    .restart local v3    # "height":I
    .restart local v4    # "key":I
    .restart local v5    # "width":I
    :cond_5
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1585
    :cond_6
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1592
    .end local v3    # "height":I
    .end local v4    # "key":I
    .end local v5    # "width":I
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 1593
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 1596
    :cond_8
    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    if-eqz v6, :cond_a

    .line 1598
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->grayscalePaint:Landroid/graphics/Paint;

    if-nez v6, :cond_9

    .line 1599
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->grayscalePaint:Landroid/graphics/Paint;

    .line 1600
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1601
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    const/16 v6, 0x14

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1608
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1609
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->grayscalePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1611
    .end local v1    # "cm":Landroid/graphics/ColorMatrix;
    .end local v2    # "f":Landroid/graphics/ColorMatrixColorFilter;
    :cond_9
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1612
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->grayscalePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1617
    :cond_a
    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v6, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1620
    .local v0, "bufferCanvas":Landroid/graphics/Canvas;
    :goto_2
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->bufferDrawKeyboard(Landroid/graphics/Canvas;)V

    .line 1622
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->drawPaddingBackground(Landroid/graphics/Canvas;)V

    .line 1624
    iget-boolean v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1625
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1629
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSwypingSupportedAndEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1630
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->bufferDrawTrace(Landroid/graphics/Canvas;)V

    goto :goto_1

    .end local v0    # "bufferCanvas":Landroid/graphics/Canvas;
    :cond_c
    move-object v0, p1

    .line 1617
    goto :goto_2

    .line 1601
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 5237
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 5238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    .line 5239
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 5240
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 5404
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5487
    :goto_0
    return v2

    .line 5422
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-ne v6, v9, :cond_1

    move v2, v5

    .line 5424
    goto :goto_0

    .line 5427
    :cond_1
    const/4 v4, 0x0

    .line 5428
    .local v4, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 5486
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastEvent:I

    move v2, v4

    .line 5487
    goto :goto_0

    .line 5430
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventMove(Landroid/view/MotionEvent;)V

    .line 5431
    const/4 v4, 0x1

    .line 5432
    goto :goto_1

    .line 5434
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getHoverExitWidthOffset()I

    move-result v2

    .line 5435
    .local v2, "hover_exit_adjustment_width_offset":I
    :cond_2
    new-array v3, v9, [I

    .line 5436
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationOnScreen([I)V

    .line 5437
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5441
    .local v0, "display":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 5442
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->cleanupScrubGesture()V

    .line 5444
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 5447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 5450
    move-object v1, p1

    .line 5451
    .local v1, "ev":Landroid/view/MotionEvent;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    .line 5452
    new-instance v6, Lcom/nuance/swype/input/KeyboardViewEx$4;

    invoke-direct {v6, p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$4;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;Landroid/view/MotionEvent;)V

    iput-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    .line 5458
    iput-boolean v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    .line 5460
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5469
    .end local v1    # "ev":Landroid/view/MotionEvent;
    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 5470
    goto/16 :goto_1

    .line 5461
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v6, v2

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 5464
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->playSoundPlayedOnKeyboardExit()V

    .line 5465
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->removeAllPendingActions()V

    .line 5467
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v5

    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    goto :goto_2

    .line 5475
    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v2    # "hover_exit_adjustment_width_offset":I
    .end local v3    # "location":[I
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->showScrubGestureView()V

    .line 5478
    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventDown(Landroid/view/MotionEvent;Z)V

    .line 5479
    const/4 v4, 0x1

    .line 5480
    goto/16 :goto_1

    .line 5482
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventMove(Landroid/view/MotionEvent;)V

    .line 5483
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 5428
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 5285
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 5295
    :cond_0
    :goto_0
    return-void

    .line 5291
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    .line 5292
    .local v0, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v0, :cond_0

    .line 5293
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5604
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-ne v7, p0, :cond_1

    .line 5605
    :cond_0
    const/4 v7, 0x0

    .line 5726
    :goto_0
    return v7

    .line 5607
    :cond_1
    const/4 v2, -0x1

    .line 5608
    .local v2, "focusedKey":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 5609
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v3

    iget-boolean v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    if-eqz v7, :cond_5

    .line 5610
    move v2, v3

    .line 5614
    :cond_2
    const/16 v7, 0x15

    if-eq p1, v7, :cond_3

    const/16 v7, 0x16

    if-ne p1, v7, :cond_b

    .line 5615
    :cond_3
    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    .line 5616
    const/16 v7, 0x15

    if-ne p1, v7, :cond_6

    .line 5617
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .line 5622
    :goto_2
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5623
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5625
    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5646
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5726
    :cond_4
    :goto_4
    const/4 v7, 0x1

    goto :goto_0

    .line 5608
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5620
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 5628
    :cond_7
    move v6, v2

    .line 5629
    .local v6, "newkey":I
    const/16 v7, 0x15

    if-ne p1, v7, :cond_9

    .line 5630
    add-int/lit8 v6, v6, -0x1

    .line 5635
    :goto_5
    if-ltz v6, :cond_8

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    if-lt v6, v7, :cond_a

    .line 5636
    :cond_8
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5637
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5639
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a7

    aput v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    goto :goto_3

    .line 5633
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 5642
    :cond_a
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5643
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_3

    .line 5647
    .end local v6    # "newkey":I
    :cond_b
    const/16 v7, 0x14

    if-eq p1, v7, :cond_c

    const/16 v7, 0x13

    if-ne p1, v7, :cond_18

    .line 5649
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    iget-object v4, v7, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    .line 5650
    .local v4, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    move v5, v2

    .line 5651
    .local v5, "newKey":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_d

    .line 5652
    const/4 v5, 0x0

    .line 5654
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 5655
    const/16 v7, 0x13

    if-ne p1, v7, :cond_f

    .line 5656
    const/4 v5, 0x0

    .line 5661
    :goto_6
    const/4 v7, -0x1

    if-ne v2, v7, :cond_10

    .line 5662
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5663
    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5664
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5706
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_4

    .line 5659
    :cond_f
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    goto :goto_6

    .line 5666
    :cond_10
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5667
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_7

    .line 5669
    :cond_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_e

    .line 5670
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Row;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx$Row;->keyCount()I

    move-result v1

    .line 5671
    .local v1, "firstRowKeyCount":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Row;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx$Row;->keyCount()I

    move-result v0

    .line 5672
    .local v0, "bottomRowKeyCount":I
    const/16 v7, 0x13

    if-ne p1, v7, :cond_15

    .line 5673
    if-ge v5, v1, :cond_13

    .line 5675
    const/4 v5, 0x0

    .line 5697
    :cond_12
    :goto_8
    const/4 v7, -0x1

    if-ne v2, v7, :cond_17

    .line 5698
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 5699
    const/4 v8, 0x0

    new-array v8, v8, [I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5700
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto :goto_7

    .line 5676
    :cond_13
    add-int v7, v1, v0

    if-ge v5, v7, :cond_14

    .line 5678
    sub-int/2addr v5, v1

    .line 5679
    if-lt v5, v1, :cond_12

    .line 5680
    add-int/lit8 v5, v1, -0x1

    goto :goto_8

    .line 5683
    :cond_14
    sub-int/2addr v5, v0

    goto :goto_8

    .line 5686
    :cond_15
    if-ge v5, v1, :cond_16

    .line 5688
    add-int/2addr v5, v1

    .line 5693
    :goto_9
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    if-lt v5, v7, :cond_12

    .line 5694
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v7, v7

    add-int/lit8 v5, v7, -0x1

    goto :goto_8

    .line 5690
    :cond_16
    add-int/2addr v5, v0

    goto :goto_9

    .line 5702
    :cond_17
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5703
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    goto/16 :goto_7

    .line 5707
    .end local v0    # "bottomRowKeyCount":I
    .end local v1    # "firstRowKeyCount":I
    .end local v4    # "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    .end local v5    # "newKey":I
    :cond_18
    const/16 v7, 0x42

    if-eq p1, v7, :cond_19

    const/16 v7, 0x3e

    if-ne p1, v7, :cond_4

    .line 5708
    :cond_19
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1b

    .line 5709
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v7, :cond_1b

    .line 5711
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->reconstructWord()V

    .line 5712
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/InputView;->handleBackspace(I)Z

    .line 5713
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 5714
    :cond_1a
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v8

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    :goto_a
    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/InputView;->onHardKeyText(Ljava/lang/CharSequence;)V

    .line 5724
    :cond_1b
    :goto_b
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto/16 :goto_4

    .line 5714
    :cond_1c
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 5718
    :cond_1d
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v7, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v8, v7, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    :goto_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    invoke-interface {v8, v7, v10, v11}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_b

    :cond_1e
    iget-object v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_c
.end method

.method public onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3226
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3227
    .local v0, "result":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3228
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 3229
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "onLongPress():s XXX"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3231
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 3234
    :cond_1
    return v0
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-nez v1, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setMeasuredDimension(II)V

    .line 1503
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 1495
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 1497
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1499
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onScrollDown()V
    .locals 0

    .prologue
    .line 5174
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollDown()V

    .line 5175
    return-void
.end method

.method public onScrollLeft()V
    .locals 0

    .prologue
    .line 5178
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollLeft()V

    .line 5179
    return-void
.end method

.method public onScrollRight()V
    .locals 0

    .prologue
    .line 5182
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollRight()V

    .line 5183
    return-void
.end method

.method public onScrollUp()V
    .locals 0

    .prologue
    .line 5186
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollUp()V

    .line 5187
    return-void
.end method

.method public onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)V
    .locals 9
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "pointerId"    # I

    .prologue
    const/16 v6, 0x3ed

    const/16 v8, 0x3ea

    const/4 v5, 0x0

    .line 3152
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "onShortPress()"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3153
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3154
    .local v0, "hasAltKeyEvent":Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasSymbolSelectPopupResource(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    .line 3155
    .local v1, "hasSymbolSelectPopup":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v2

    .line 3156
    .local v2, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v2, :cond_0

    .line 3157
    invoke-virtual {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v3

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeycodeLongpress(I)V

    .line 3159
    :cond_0
    if-nez v0, :cond_3

    .line 3160
    if-eqz v1, :cond_2

    .line 3162
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    .line 3211
    :cond_1
    :goto_0
    return-void

    .line 3167
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3168
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;II)V

    goto :goto_0

    .line 3175
    :cond_3
    if-eqz v1, :cond_6

    .line 3176
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3178
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    goto :goto_0

    .line 3182
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3187
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3190
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    int-to-long v4, v4

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3191
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    goto :goto_0

    .line 3195
    :cond_5
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    goto :goto_0

    .line 3202
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-eqz v3, :cond_7

    .line 3204
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3205
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    int-to-long v4, v4

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3206
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    goto :goto_0

    .line 3208
    :cond_7
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1543
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 1546
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 5244
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3938
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 3939
    .local v0, "delegate":Landroid/view/TouchDelegate;
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4012
    :cond_0
    :goto_0
    return v4

    .line 3944
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyboardBeingDragged:Z

    if-nez v1, :cond_0

    .line 3948
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboardShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3949
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3950
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 3952
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$5;->$SwitchMap$com$nuance$swype$input$TwoFingersGestureDetector$GestureDetectionNotification:[I

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->getCurrentGesture()Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3971
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 3974
    :goto_1
    :pswitch_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "onTouchEvent...detected gesture: "

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v3}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->getCurrentGesture()Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureDetectionNotification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3975
    const/4 v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->prevPointerId:I

    goto :goto_0

    .line 3954
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->getFirstFingerCurrent()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->getSecondFingerCurrent()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->animateKeyboardDocking(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1

    .line 3958
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v1}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->getFirstFingerCurrent()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTwoFingersGestureDetector:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-virtual {v2}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->getSecondFingerCurrent()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->animateKeyboardSpreading(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1

    .line 3968
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollDown()V

    goto :goto_1

    .line 3980
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1

    .line 4011
    :goto_2
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastEvent:I

    goto :goto_0

    .line 3982
    :pswitch_5
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastEvent:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    if-eqz v1, :cond_3

    .line 3983
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandlerHoverExit:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHoverExitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3984
    iput-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastHoverExitPending:Z

    goto :goto_2

    .line 3986
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventDown(Landroid/view/MotionEvent;Z)V

    goto :goto_2

    .line 3991
    :pswitch_6
    invoke-direct {p0, p1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventDown(Landroid/view/MotionEvent;Z)V

    goto :goto_2

    .line 3995
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventMove(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 3999
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 4003
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 4007
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleTouchEventCancel(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 3952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 3980
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public popupMiniKeyboardOrLongPress()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3018
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3019
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    if-ltz v3, :cond_2

    .line 3020
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->multitapTimeOut()V

    .line 3028
    :cond_0
    :goto_0
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupLayout:I

    if-nez v3, :cond_3

    .line 3029
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "popupMiniKeyboardOrLongPress(): no layout"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3046
    :cond_1
    :goto_1
    return v2

    .line 3022
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3023
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    goto :goto_0

    .line 3033
    :cond_3
    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 3034
    .local v1, "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-nez v1, :cond_4

    .line 3035
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "popupMiniKeyboardOrLongPress(): invalid current key"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 3039
    :cond_4
    if-eqz v1, :cond_5

    .line 3040
    iget v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v4, 0xfdf

    if-eq v3, v4, :cond_6

    const/4 v0, 0x1

    .line 3041
    .local v0, "hasAltKeyEvent":Z
    :goto_2
    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v3, :cond_5

    if-eqz v0, :cond_1

    iget-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    if-nez v3, :cond_1

    .line 3046
    .end local v0    # "hasAltKeyEvent":Z
    :cond_5
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    goto :goto_1

    :cond_6
    move v0, v2

    .line 3040
    goto :goto_2
.end method

.method protected recalculateOffsets()V
    .locals 4

    .prologue
    .line 2884
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 2885
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 2887
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 2888
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 2889
    return-void
.end method

.method public redrawKeyboard()V
    .locals 0

    .prologue
    .line 5923
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 5924
    return-void
.end method

.method protected releaseAllOtherPointers(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .locals 3
    .param p1, "excludedPointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 3743
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 3744
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHshPointers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3745
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 3746
    .local v1, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-eq v1, p1, :cond_0

    .line 3747
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    goto :goto_0

    .line 3751
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    :cond_1
    return-void
.end method

.method public removeAllPendingActions()V
    .locals 2

    .prologue
    .line 4621
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4622
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4623
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4624
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4625
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4626
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4627
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4628
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4629
    return-void
.end method

.method protected resetDynamicDeleteKeyRepeatable(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 3
    .param p1, "pressedkey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v2, 0x0

    .line 3083
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-nez v0, :cond_1

    .line 3100
    :cond_0
    :goto_0
    return-void

    .line 3086
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3091
    :cond_2
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v0

    .line 3094
    if-eqz v0, :cond_3

    .line 3095
    iput-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    goto :goto_0

    .line 3097
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    goto :goto_0
.end method

.method public resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4703
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v0, :cond_0

    .line 4704
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 4707
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastSentIndex:I

    .line 4708
    iput v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTapCount:I

    .line 4709
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastTapTime:J

    .line 4710
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    .line 4711
    return-void
.end method

.method protected resetTrace()V
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 1638
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 1639
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    .line 1648
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->miFading:I

    .line 1649
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mfRadius:F

    .line 1650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    .line 1651
    return-void
.end method

.method public setCurrentKeyFromPoint(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 5918
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndexForPoint(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 5919
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    return v0
.end method

.method public setCurrentKeyInSlideSelectPopupManager(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5936
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 5938
    return-void
.end method

.method public setDoubleBuffered(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 5214
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->doubleBuffered:Z

    .line 5215
    return-void
.end method

.method public setDrawBufferManager(Lcom/nuance/swype/input/DrawBufferManager;)V
    .locals 0
    .param p1, "buffer"    # Lcom/nuance/swype/input/DrawBufferManager;

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->bufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    .line 1655
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 7
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1287
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    if-eqz v3, :cond_1

    .line 1288
    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-direct {p0, v4, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 1289
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 1291
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1292
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1293
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v3, :cond_0

    .line 1294
    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/KeyboardEx$Key;->onReleased(Z)V

    goto :goto_0

    .line 1298
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboard:Z

    if-nez v3, :cond_2

    .line 1300
    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 1301
    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v3, v4, :cond_4

    .line 1307
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1308
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_right:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->keyboard_padding_bottom:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->setPadding(IIII)V

    .line 1318
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    .line 1320
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->isSanitizeFont()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->sanitizingFont:Z

    .line 1321
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1324
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->setMicrophoneKeyIcon()V

    .line 1325
    return-void

    .line 1303
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1314
    :cond_4
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setPadding(IIII)V

    goto :goto_2
.end method

.method public declared-synchronized setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    .prologue
    .line 1265
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    monitor-exit p0

    return-void

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPopupOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1451
    iput p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    .line 1452
    iput p2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    .line 1453
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 1454
    return-void
.end method

.method protected setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 1448
    return-void
.end method

.method public setPressDownPreviewEnabled(Z)V
    .locals 1
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 1433
    iget v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewLayout:I

    if-eqz v0, :cond_0

    .end local p1    # "previewEnabled":Z
    :goto_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isPressDownPreviewEnabled:Z

    .line 1434
    return-void

    .line 1433
    .restart local p1    # "previewEnabled":Z
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1465
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mProximityCorrectOn:Z

    .line 1466
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 1366
    const/4 v0, 0x1

    .line 1369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showAltSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3283
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method protected showAltSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v1, 0x0

    .line 3288
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 3289
    .local v0, "res":I
    if-eqz v0, :cond_1

    .line 3290
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-nez v2, :cond_0

    .line 3291
    new-instance v2, Lcom/nuance/swype/input/SlideSelectPopupManager;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/SlideSelectPopupManager;-><init>(Lcom/nuance/swype/input/KeyboardViewEx;)V

    iput-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 3294
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3295
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    .line 3297
    :cond_1
    return v1
.end method

.method protected showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3301
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getAltPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 3302
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 3304
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z

    move-result v1

    .line 3306
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 3002
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v0, :cond_1

    .line 3003
    invoke-virtual {p0, p1, p2, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKeyNew(Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 3015
    :cond_0
    :goto_0
    return-void

    .line 3007
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3008
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "showAltLabelPopup():  trying to popup when parent has null window token"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 3012
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternatePreviewView:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPopup(Landroid/widget/PopupWindow;Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0
.end method

.method protected showEmojiInputPopupWindow(Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "emojiInputController"    # Lcom/nuance/swype/input/emoji/EmojiInputController;
    .param p2, "rec"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    .line 5346
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 5347
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5350
    invoke-virtual {p0, v3, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    .line 5351
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 5353
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->abortKey()V

    .line 5354
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5355
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5356
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5358
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->getEmojiInputView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5360
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5361
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getKeyboardWidth(Landroid/content/res/Resources;)I

    move-result v1

    .line 5362
    .local v1, "keyboardWidth":I
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5363
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5365
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    const/4 v4, 0x0

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5367
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5368
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 5370
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setVisibility(I)V

    .line 5371
    iput-boolean v7, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    .line 5373
    return v7
.end method

.method public showHardKeyPopupKeyboard(I)V
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v8, 0x0

    .line 5514
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "showHardKeyPopupKeyboard(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 5515
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5516
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyByKeyCode(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v4

    .line 5517
    .local v4, "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v4, :cond_4

    .line 5518
    iget v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    .line 5519
    iget v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    iget-object v6, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v6}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z

    .line 5522
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 5523
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 5524
    .local v1, "defaultKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v0, 0x0

    .line 5525
    .local v0, "defaultIndex":I
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 5526
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 5527
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5528
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 5529
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5530
    move v0, v2

    .line 5526
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5533
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 5536
    .end local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 5537
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v5, Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    sget v6, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 5539
    new-array v6, v8, [I

    invoke-virtual {v5, v6, v8}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 5541
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate()V

    .line 5545
    .end local v0    # "defaultIndex":I
    .end local v1    # "defaultKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v4    # "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    return-void
.end method

.method protected showPopup(Landroid/widget/PopupWindow;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 5
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 2935
    iget-boolean v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-nez v1, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2938
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2942
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isScreenMagnificationOn()Z

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyPreviewRectInWindow(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 2944
    .local v0, "rc":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2945
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 2948
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2949
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2950
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public showPreviewKey(II)V
    .locals 10
    .param p1, "currentKeyIndex"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/16 v9, 0x3ea

    const/4 v6, -0x1

    const/16 v8, 0x3e9

    const/4 v4, 0x0

    .line 2823
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2881
    :cond_0
    :goto_0
    return-void

    .line 2828
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    if-eq v5, p1, :cond_2

    const/4 v0, 0x1

    .line 2829
    .local v0, "isNewKey":Z
    :goto_1
    iput p1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviousKeyIndex:I

    .line 2831
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v5, :cond_3

    .line 2832
    if-eqz v0, :cond_0

    .line 2833
    invoke-direct {p0, p1, p2, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKeyNew(IIZ)V

    goto :goto_0

    .end local v0    # "isNewKey":Z
    :cond_2
    move v0, v4

    .line 2828
    goto :goto_1

    .line 2838
    .restart local v0    # "isNewKey":Z
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 2843
    .local v3, "previewPopup":Landroid/widget/PopupWindow;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 2844
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v1, :cond_7

    .line 2847
    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v2

    .line 2854
    .local v2, "previewEnabled":Z
    :goto_2
    if-eqz v2, :cond_0

    if-nez v0, :cond_4

    if-eq p1, v6, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2856
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2857
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2858
    if-ne p1, v6, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2859
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2860
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewHideDelay:I

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2865
    :cond_5
    if-eqz v1, :cond_0

    .line 2866
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    if-nez v5, :cond_8

    .line 2871
    :cond_6
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showKey(I)V

    goto :goto_0

    .line 2851
    .end local v2    # "previewEnabled":Z
    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "previewEnabled":Z
    goto :goto_2

    .line 2873
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2874
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v6, p0, Lcom/nuance/swype/input/KeyboardViewEx;->previewShowDelay:I

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected showPreviewKeyNew(Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "pointerId"    # I
    .param p3, "isAlt"    # Z

    .prologue
    .line 5881
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->canShowPreview(Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5882
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/nuance/swype/view/KeyPreviewManager;->show(ILcom/nuance/swype/input/KeyboardEx$Key;Z)V

    .line 5886
    :goto_0
    return-void

    .line 5884
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/view/KeyPreviewManager;->hide(I)V

    goto :goto_0
.end method

.method public showScrubGestureView()V
    .locals 1

    .prologue
    .line 5392
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    if-eqz v0, :cond_0

    .line 5393
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mScrubGestureView:Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->addUpperScreenScrubGestureFrame()V

    .line 5395
    :cond_0
    return-void
.end method

.method protected showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3403
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v1

    .line 3404
    .local v1, "res":I
    if-eqz v1, :cond_1

    .line 3405
    const-string v0, ""

    .line 3406
    .local v0, "popupChars":Ljava/lang/CharSequence;
    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-ne v1, v2, :cond_0

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 3407
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 3409
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopupHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;)Z

    move-result v2

    .line 3411
    .end local v0    # "popupChars":Ljava/lang/CharSequence;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 3272
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showSlideSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    const/16 v7, 0x3eb

    const/16 v5, 0x68

    const/16 v6, 0x3ed

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 4058
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v0

    .line 4059
    .local v0, "keyIndex":I
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    .line 4060
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKeyTime:J

    .line 4061
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 4062
    iput v4, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKey:I

    .line 4063
    iput v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4064
    iget-wide v2, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    iput-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDownTime:J

    .line 4066
    iget-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mDownTime:J

    iput-wide v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    .line 4067
    iget-wide v2, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    invoke-virtual {p0, v2, v3, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->checkMultiTap(JI)V

    .line 4068
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 4069
    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->repeatCount:I

    .line 4071
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v2, :cond_1

    .line 4072
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eq v0, v4, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v3, v1

    :cond_0
    invoke-interface {v2, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 4074
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v1, :cond_2

    .line 4075
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->resetDynamicDeleteKeyRepeatable(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4080
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    if-eqz v1, :cond_5

    .line 4081
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    iput v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 4083
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4084
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4109
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    .line 4111
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4112
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4117
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetTrace()V

    .line 4118
    return-void

    .line 4087
    :cond_5
    iget v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    if-eq v1, v4, :cond_3

    .line 4088
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v1, v1, v0

    .line 4090
    iget-boolean v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSlideSelectEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4091
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4093
    :cond_6
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4094
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v3

    invoke-virtual {v2, v5, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4098
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPressHoldFlickrMessage()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4099
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    iget v3, p0, Lcom/nuance/swype/input/KeyboardViewEx;->pressHoldFlickrTimeOut:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4101
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4102
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4113
    :cond_9
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4114
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method protected subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 4026
    if-nez p3, :cond_2

    .line 4027
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mAlternateCharPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4054
    :cond_0
    :goto_0
    return v0

    .line 4033
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePointerId:I

    if-ne v1, v2, :cond_0

    .line 4039
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPopupKeyboardShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4042
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    if-eqz v1, :cond_0

    .line 4044
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hidePreviewKeyNew(I)V

    goto :goto_0

    .line 4050
    :cond_3
    if-nez p3, :cond_4

    .line 4051
    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->press(Landroid/view/MotionEvent;)V

    .line 4054
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 34
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 4121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 4122
    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->get(I)Landroid/graphics/Point;

    move-result-object v9

    .line 4123
    .local v9, "first":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pathSize()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->get(I)Landroid/graphics/Point;

    move-result-object v7

    .line 4124
    .local v7, "cur":Landroid/graphics/Point;
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sub-int v26, v28, v29

    .line 4125
    .local v26, "xOffset":I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    sub-int v27, v28, v29

    .line 4126
    .local v27, "yOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getExtendedPoint()Landroid/graphics/Point;

    move-result-object v21

    .line 4127
    .local v21, "pt":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mapper:Lcom/nuance/swype/util/CoordUtils$CoordMapper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->map(Landroid/graphics/Point;)V

    .line 4128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->onMove(IIII)V

    .line 4129
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 4130
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v24

    .line 4131
    .local v24, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v24, :cond_0

    .line 4132
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    .line 4325
    .end local v7    # "cur":Landroid/graphics/Point;
    .end local v9    # "first":Landroid/graphics/Point;
    .end local v21    # "pt":Landroid/graphics/Point;
    .end local v24    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .end local v26    # "xOffset":I
    .end local v27    # "yOffset":I
    :cond_0
    :goto_0
    return-void

    .line 4138
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v16

    .line 4139
    .local v16, "keyIndex":I
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 4141
    .local v10, "eventTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isSwypingSupportedAndEnabled()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 4143
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    move/from16 v28, v0

    if-nez v28, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    move/from16 v28, v0

    if-nez v28, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 4144
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mInMultiTap:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 4145
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4152
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 4153
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 4154
    move-object/from16 v0, p2

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePointerId:I

    .line 4155
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->releaseAllOtherPointers(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    .line 4156
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressAllowed()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v28

    if-nez v28, :cond_4

    .line 4157
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 4158
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 4160
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3eb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 4161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3eb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4164
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x68

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 4165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x68

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4168
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ed

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 4169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ed

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4172
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ef

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 4173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ef

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4177
    :cond_8
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4178
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 4180
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 4181
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v24

    .line 4182
    .restart local v24    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v24, :cond_9

    .line 4183
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    .line 4250
    .end local v24    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_9
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->move(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 4186
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTraceWidth:I

    move/from16 v25, v0

    .line 4189
    .local v25, "traceWidth":I
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->size()I

    move-result v30

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    invoke-interface/range {v28 .. v30}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    .line 4193
    .local v18, "newPoints":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v28

    if-lez v28, :cond_b

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->get(I)Landroid/graphics/Point;

    move-result-object v17

    .line 4199
    .local v17, "lastPoint":Landroid/graphics/Point;
    :goto_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 4200
    .local v8, "dirtyRect":Landroid/graphics/Rect;
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    .line 4201
    .local v20, "point":Landroid/graphics/Point;
    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    sub-int v29, v29, v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    sub-int v30, v30, v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    add-int v31, v31, v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    add-int v32, v32, v25

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 4196
    .end local v8    # "dirtyRect":Landroid/graphics/Rect;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "lastPoint":Landroid/graphics/Point;
    .end local v20    # "point":Landroid/graphics/Point;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    .restart local v17    # "lastPoint":Landroid/graphics/Point;
    goto :goto_2

    .line 4208
    .restart local v8    # "dirtyRect":Landroid/graphics/Rect;
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getNumTracePoints(Ljava/util/Collection;)I

    move-result v19

    .line 4209
    .local v19, "numPoints":I
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 4210
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v29

    sub-int v28, v28, v29

    add-int/lit8 v12, v28, 0x1

    .line 4212
    .local v12, "growth":I
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    sub-int v13, v28, v19

    .local v13, "i":I
    const/4 v15, 0x0

    .line 4213
    .local v15, "j":I
    :goto_4
    if-lez v13, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_d

    if-ge v15, v12, :cond_d

    .line 4214
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "lastPoint":Landroid/graphics/Point;
    check-cast v17, Landroid/graphics/Point;

    .line 4215
    .restart local v17    # "lastPoint":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v28

    add-int/lit8 v29, v13, -0x1

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    .line 4217
    .restart local v20    # "point":Landroid/graphics/Point;
    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    sub-int v29, v29, v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    sub-int v30, v30, v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v31, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    add-int v31, v31, v25

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v32, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    add-int v32, v32, v25

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4213
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 4225
    .end local v12    # "growth":I
    .end local v13    # "i":I
    .end local v15    # "j":I
    .end local v20    # "point":Landroid/graphics/Point;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->outRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v28

    if-nez v28, :cond_e

    .line 4227
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 4230
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v28, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getTimes()Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 4232
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getStartLocation()Landroid/graphics/Point;

    move-result-object v22

    .line 4233
    .local v22, "pt1":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v23

    .line 4235
    .local v23, "pt2":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->isTracePointsSpanMoreThanOneKey(IIII)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 4237
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    .line 4238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->handlePreTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 4241
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidate(Landroid/graphics/Rect;)V

    .line 4243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v28

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/swype/input/KeyboardEx;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 4245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v28

    if-eqz v28, :cond_9

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    goto/16 :goto_1

    .line 4254
    .end local v8    # "dirtyRect":Landroid/graphics/Rect;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "lastPoint":Landroid/graphics/Point;
    .end local v18    # "newPoints":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Point;>;"
    .end local v19    # "numPoints":I
    .end local v22    # "pt1":Landroid/graphics/Point;
    .end local v23    # "pt2":Landroid/graphics/Point;
    .end local v25    # "traceWidth":I
    :cond_10
    const/16 v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 4255
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v30, v0

    sub-long v30, v10, v30

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_0

    .line 4261
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 4262
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v24

    .line 4263
    .restart local v24    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v24, :cond_12

    .line 4264
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V

    .line 4267
    .end local v24    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    :cond_12
    const/4 v6, 0x0

    .line 4269
    .local v6, "continueLongPress":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 4273
    const/16 v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    .line 4274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 4275
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4276
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mDownTime:J

    move-wide/from16 v28, v0

    sub-long v28, v10, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 4290
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    .line 4291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3eb

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4292
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 4296
    :cond_13
    if-nez v6, :cond_15

    .line 4298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x68

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ed

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ef

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 4306
    const/16 v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    .line 4307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x68

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v16

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mShortLongPressTimeout:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4310
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isPressHoldFlickrMessage()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 4311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->pressHoldFlickrTimeOut:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4314
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x3ed

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLongPressTimeout:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4319
    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->move(Landroid/view/MotionEvent;)V

    .line 4323
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    goto/16 :goto_0

    .line 4278
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 4279
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v30, v0

    sub-long v30, v10, v30

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 4280
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 4282
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKey:I

    .line 4284
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v28, v0

    add-long v28, v28, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKeyTime:J

    .line 4285
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4286
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_5
.end method

.method public subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 22
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 4329
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v11

    .line 4330
    .local v11, "keyIndex":I
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 4331
    .local v4, "eventTime":J
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v13

    .line 4333
    .local v13, "pt":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v17

    .line 4334
    .local v17, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v17, :cond_0

    .line 4336
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->calculateDistance(Ljava/util/List;)D

    .line 4338
    :cond_0
    const/4 v7, 0x0

    .line 4339
    .local v7, "isAltPreviewShown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->keyPrevManager:Lcom/nuance/swype/view/KeyPreviewManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 4340
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->isShortPressState(I)Z

    move-result v7

    .line 4342
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 4344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3e9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3eb

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x68

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3ed

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3ef

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 4352
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->showPreviewKey(II)V

    .line 4353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyIndices:[I

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 4354
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->release(Landroid/view/MotionEvent;)V

    .line 4356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3ee

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    .line 4358
    .local v8, "isShowing":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4361
    if-eqz v8, :cond_2

    .line 4362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/SlideSelectPopupManager;->onUp()V

    .line 4363
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 4364
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 4496
    .end local v8    # "isShowing":Z
    :goto_0
    return-void

    .line 4368
    .restart local v8    # "isShowing":Z
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 4369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/SlideSelectPopupManager;->onUp()V

    .line 4370
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->slideSelectPopupManager:Lcom/nuance/swype/input/SlideSelectPopupManager;

    .line 4373
    .end local v8    # "isShowing":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 4375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getTimes()Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 4377
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->handlePreTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 4379
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    .line 4382
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x400

    const-wide/16 v20, 0xa

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4384
    if-eqz v17, :cond_5

    .line 4385
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getTimes()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordTracePath(Ljava/util/List;Ljava/util/List;)V

    .line 4388
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 4389
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->hideKeyPreview(I)V

    .line 4390
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 4391
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->isTracedGesture:Z

    goto/16 :goto_0

    .line 4393
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v11, v0, :cond_f

    .line 4394
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v20, v0

    sub-long v20, v4, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 4414
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKeyTime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKey:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 4415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKey:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4419
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isMultitapping()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 4420
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissPreviewPopup()V

    .line 4423
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 4425
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v12

    .line 4426
    .local v12, "path":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_12

    .line 4427
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "pt":Landroid/graphics/Point;
    check-cast v13, Landroid/graphics/Point;

    .line 4428
    .restart local v13    # "pt":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentIndex:I

    .line 4437
    .end local v12    # "path":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyIndices:[I

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 4438
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->release(Landroid/view/MotionEvent;)V

    .line 4441
    const/4 v10, 0x0

    .line 4442
    .local v10, "keyCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 4443
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v10, v18, v19

    .line 4448
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mAbortKey:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 4449
    const/4 v14, 0x1

    .line 4450
    .local v14, "sendKey":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 4459
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_15

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    const/4 v15, 0x1

    .line 4460
    .local v15, "skipTest":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v16

    .line 4461
    .local v16, "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    check-cast v16, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;

    .end local v16    # "state":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->confirmValidInput()Z

    move-result v18

    if-nez v18, :cond_b

    if-nez v15, :cond_b

    .line 4464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v9

    .line 4465
    .local v9, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v9, :cond_16

    iget-object v0, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 4466
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/KeyboardEx$Key;->onReleased(Z)V

    .line 4473
    .end local v9    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "skipTest":Z
    :cond_b
    :goto_5
    if-eqz v7, :cond_17

    .line 4474
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4475
    .local v6, "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    .line 4476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v18, v0

    aget-object v9, v18, v6

    .line 4477
    .restart local v9    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    .line 4484
    .end local v6    # "index":I
    .end local v9    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v14    # "sendKey":Z
    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 4486
    const/16 v18, 0x4

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->SpeakContextAroundCursor(II)V

    .line 4489
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_e

    .line 4490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 4492
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 4493
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetTrace()V

    .line 4494
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 4495
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyRepeated:Z

    goto/16 :goto_0

    .line 4395
    .end local v10    # "keyCode":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 4396
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v20, v0

    sub-long v20, v4, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 4397
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 4398
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mIsTracing:Z

    .line 4399
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->isTracedGesture:Z

    goto/16 :goto_1

    .line 4402
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v18

    if-nez v18, :cond_11

    .line 4403
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v20, v0

    sub-long v20, v4, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_1

    .line 4406
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardViewEx;->resetMultiTap()V

    .line 4407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKey:I

    .line 4408
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    move-wide/from16 v18, v0

    add-long v18, v18, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mLastMoveTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mLastKeyTime:J

    .line 4409
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4410
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_1

    .line 4430
    .restart local v12    # "path":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_12
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    goto/16 :goto_2

    .line 4433
    .end local v12    # "path":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_13
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mCurrentKey:I

    .line 4434
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v13

    goto/16 :goto_2

    .line 4443
    .restart local v10    # "keyCode":I
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 4459
    .restart local v14    # "sendKey":Z
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 4469
    .restart local v9    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v15    # "skipTest":Z
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 4479
    .end local v9    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "skipTest":Z
    :cond_17
    if-eqz v14, :cond_c

    if-eqz v13, :cond_c

    .line 4480
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->detectAndSendKeyWrapper(IIJ)V

    goto/16 :goto_6
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 4587
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeDown()V

    .line 4589
    :cond_0
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 4575
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeLeft()V

    .line 4577
    :cond_0
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 4569
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeRight()V

    .line 4571
    :cond_0
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 4580
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 4581
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeUp()V

    .line 4583
    :cond_0
    return-void
.end method

.method public tracedGesture()Z
    .locals 1

    .prologue
    .line 5988
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isTracedGesture:Z

    return v0
.end method

.method protected updateEmojiKeyboardPosition()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 5377
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->isEmojiKeyboardShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5385
    :cond_0
    :goto_0
    return-void

    .line 5381
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5382
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 5383
    .local v0, "rec":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5089
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->hasShiftedSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_SHOW:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->SWAP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
