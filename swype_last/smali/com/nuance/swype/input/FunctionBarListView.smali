.class public Lcom/nuance/swype/input/FunctionBarListView;
.super Landroid/view/View;
.source "FunctionBarListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/FunctionBarListView$RollAverage;,
        Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;
    }
.end annotation


# static fields
.field protected static final ADDONDICTIONARIES:Ljava/lang/String; = "addondictionaries"

.field public static final ADDONDICTIONARIES_ITEM:I = 0x70

.field protected static final CHINESESETTINGS:Ljava/lang/String; = "chinesesettings"

.field public static final CHINESESETTINGS_ITEM:I = 0x71

.field public static final COMPONENT_MARKER:C = '\u9fff'

.field protected static final CYCLINGKEYBOARD:Ljava/lang/String; = "cyclingkeyboard"

.field public static final DISMISSKEYBOARD_ITEM:I = 0x73

.field protected static final EDITKEYBOARD:Ljava/lang/String; = "editkeyboard"

.field public static final EDITKEYBOARD_ITEM:I = 0x6e

.field public static final EMOJI_ITEM:I = 0x76

.field protected static final FUNCTIONBAREMOJI:Ljava/lang/String; = "function_bar_emoji"

.field protected static final FUNCTIONBARSETTING:Ljava/lang/String; = "functionbarsetting"

.field protected static final HANDWRITINGMODE:Ljava/lang/String; = "handwritingmode"

.field protected static final HIDE_KEYBOARD:Ljava/lang/String; = "hide_keyboard"

.field protected static final INPUTMODE:Ljava/lang/String; = "inputmode"

.field public static final INPUTMODE_ITEM:I = 0x68

.field protected static final LANGUAGE_OPTION:Ljava/lang/String; = "language_option"

.field public static final LANGUAGE_OPTION_ITME:I = 0x67

.field protected static final MAX_SUGGESTIONS:I

.field public static final MODE_CHANGE_ITEM:I = 0x66

.field protected static final MSG_REMOVE_PREVIEW:I = 0x1

.field protected static final MSG_REMOVE_THROUGH_PREVIEW:I = 0x2

.field protected static final NUMBERKEYBOARD:Ljava/lang/String; = "numberkeyboard"

.field public static final NUMBERKEYBOARD_ITEM:I = 0x6d

.field protected static final ONKEYBOARD:Ljava/lang/String; = "onkeyboard"

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field public static final QUICKTOGGLE_ITEM_HW_OFF:I = 0x75

.field public static final QUICKTOGGLE_ITEM_HW_ON:I = 0x72

.field protected static final SCROLL_PIXELS:I = 0xc

.field protected static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SETTING_ITEM:I = 0x65

.field public static final SWITCHIME_ITEM:I = 0x74

.field protected static final TAG:Ljava/lang/String; = "WordListView"

.field protected static final THEMES:Ljava/lang/String; = "themes"

.field public static final THEMES_ITEM:I = 0x6f


# instance fields
.field private final handlerCallback:Landroid/os/Handler$Callback;

.field protected mA:F

.field private mAbortKey:Z

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected mColorComponent:I

.field protected mColorNormal:I

.field protected mColorOther:I

.field protected mColorPressed:I

.field protected mColorRecommended:I

.field private mContext:Landroid/content/Context;

.field protected mCurrentWordIndex:I

.field protected mDescent:I

.field private mDismissKeyboardItemWidth:I

.field protected mDragSelected:Z

.field protected mEnableHighlight:Z

.field private mFunctionBitmaps:Lcom/nuance/android/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/android/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field protected mItalic:Landroid/graphics/Typeface;

.field private mLeftPadding:I

.field protected mMinCandidateWidth:I

.field protected mMinPadWidth:I

.field private mMinikeyboardOffsetX:I

.field protected mMouseDown:Z

.field protected mOnFunctionBarListener:Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPopupPreviewX:I

.field protected mPopupPreviewY:I

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field protected mPreviewText:Landroid/widget/TextView;

.field protected mScrolled:Z

.field protected mSelectedIndex:I

.field protected mSelectedString:Ljava/lang/CharSequence;

.field protected mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field protected mShowingNextCandidatesPrediction:Z

.field mSwipeSpeed:Lcom/nuance/swype/input/FunctionBarListView$RollAverage;

.field protected mTargetScrollX:I

.field protected mTextSize:I

.field public mTotalWidth:I

.field protected mTouchIndex:I

.field protected mTouchX:I

.field protected mV:F

.field protected previewTextColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0xa

    .line 59
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/nuance/swype/input/FunctionBarListView;->MAX_SUGGESTIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionItems:Ljava/util/List;

    .line 89
    iput v6, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 90
    iput v6, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 92
    iput-boolean v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMouseDown:Z

    .line 93
    iput-boolean v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDragSelected:Z

    .line 94
    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchIndex:I

    .line 132
    new-instance v3, Lcom/nuance/swype/input/FunctionBarListView$1;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lcom/nuance/swype/input/FunctionBarListView$1;-><init>(Lcom/nuance/swype/input/FunctionBarListView;I)V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    .line 145
    new-instance v3, Lcom/nuance/swype/input/FunctionBarListView$2;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/FunctionBarListView$2;-><init>(Lcom/nuance/swype/input/FunctionBarListView;)V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 165
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v3}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v3, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;-><init>(F)V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSwipeSpeed:Lcom/nuance/swype/input/FunctionBarListView$RollAverage;

    .line 225
    iput-object p1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 228
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 229
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 230
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 231
    sget v3, Lcom/nuance/swype/input/R$layout;->candidate_preview:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    .line 232
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 233
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 234
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 235
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/FunctionBarListView;->readStyles(Landroid/content/Context;)V

    .line 239
    sget v3, Lcom/nuance/swype/input/R$attr;->popupKeyTextColor:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->previewTextColor:I

    .line 241
    sget v3, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 243
    iput-boolean v7, p0, Lcom/nuance/swype/input/FunctionBarListView;->mEnableHighlight:Z

    .line 245
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mColorNormal:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDescent:I

    .line 251
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mItalic:Landroid/graphics/Typeface;

    .line 253
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/nuance/swype/input/FunctionBarListView$3;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/FunctionBarListView$3;-><init>(Lcom/nuance/swype/input/FunctionBarListView;)V

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 271
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 272
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/FunctionBarListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 273
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/FunctionBarListView;->setWillNotDraw(Z)V

    .line 274
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/FunctionBarListView;->setHorizontalScrollBarEnabled(Z)V

    .line 275
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/FunctionBarListView;->setVerticalScrollBarEnabled(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 279
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iput v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMinPadWidth:I

    .line 280
    const/high16 v3, 0x42200000    # 40.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMinCandidateWidth:I

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/FunctionBarListView;)Lcom/nuance/android/util/LruCache;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/FunctionBarListView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    return-object v0
.end method

.method private bound(FFF)F
    .registers 5
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 208
    cmpg-float v0, p1, p2

    if-gez v0, :cond_5

    .line 213
    .end local p2    # "min":F
    :goto_4
    return p2

    .line 210
    .restart local p2    # "min":F
    :cond_5
    cmpl-float v0, p1, p3

    if-lez v0, :cond_b

    move p2, p3

    .line 211
    goto :goto_4

    :cond_b
    move p2, p1

    .line 213
    goto :goto_4
.end method

.method private getFunctionBarWidth()I
    .registers 6

    .prologue
    .line 761
    const/4 v2, 0x0

    .line 762
    .local v2, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v3}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 763
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 764
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 766
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_22
    return v2
.end method

.method private getPopupContent(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 841
    packed-switch p1, :pswitch_data_7c

    .line 869
    :pswitch_3
    const-string/jumbo v0, ""

    :goto_6
    return-object v0

    .line 843
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->swype:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 845
    :pswitch_10
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 847
    :pswitch_19
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->input_method:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 849
    :pswitch_22
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->function_bar_quick_toggle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 851
    :pswitch_2b
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->function_bar_quick_toggle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 853
    :pswitch_34
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_keyboard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 855
    :pswitch_3d
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->switch_ime:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 857
    :pswitch_46
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->number_keyboard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 859
    :pswitch_4f
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->edit_keyboard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 861
    :pswitch_58
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 863
    :pswitch_61
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->addon_dictionaries:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 865
    :pswitch_6a
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->settings_swype_chinese:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 867
    :pswitch_73
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mContext:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->function_bar_emoji:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 841
    :pswitch_data_7c
    .packed-switch 0x65
        :pswitch_7
        :pswitch_3
        :pswitch_10
        :pswitch_19
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_46
        :pswitch_4f
        :pswitch_58
        :pswitch_61
        :pswitch_6a
        :pswitch_2b
        :pswitch_34
        :pswitch_3d
        :pswitch_22
        :pswitch_73
    .end packed-switch
.end method

.method private hidePreview()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 700
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mCurrentWordIndex:I

    .line 701
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 702
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    .line 704
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3c

    .line 703
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 706
    :cond_1e
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x10000

    .line 730
    sget v4, Lcom/nuance/swype/input/R$style;->WordListView:I

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 733
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 735
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v3, :cond_5b

    .line 736
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 738
    .local v1, "attr":I
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    if-ne v1, v4, :cond_22

    .line 739
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mColorNormal:I

    .line 735
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 740
    :cond_22
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    if-ne v1, v4, :cond_2d

    .line 741
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mColorRecommended:I

    goto :goto_1f

    .line 742
    :cond_2d
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateOther:I

    if-ne v1, v4, :cond_38

    .line 743
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mColorOther:I

    goto :goto_1f

    .line 744
    :cond_38
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateComponent:I

    if-ne v1, v4, :cond_43

    .line 745
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mColorComponent:I

    goto :goto_1f

    .line 746
    :cond_43
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_textSizeCJK:I

    if-ne v1, v4, :cond_50

    .line 747
    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTextSize:I

    goto :goto_1f

    .line 748
    :cond_50
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidatePressed:I

    if-ne v1, v4, :cond_1f

    .line 749
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mColorPressed:I

    goto :goto_1f

    .line 752
    .end local v1    # "attr":I
    :cond_5b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 753
    return-void
.end method

.method private scrollToTarget()V
    .registers 15

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 533
    iget v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_40

    .line 534
    iget v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 535
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v2

    .line 537
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v2, v3

    .line 535
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    .line 538
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    if-lt v2, v3, :cond_39

    .line 539
    iget v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    .line 550
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->requestLayout()V

    .line 551
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 552
    return-void

    .line 542
    .end local v0    # "dist":D
    :cond_40
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 543
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v2

    .line 545
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    sub-int/2addr v2, v3

    .line 543
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    .line 546
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    if-gt v2, v3, :cond_39

    .line 547
    iget v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    goto :goto_39
.end method

.method private slide()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    int-to-float v2, v3

    .line 495
    .local v2, "oldX":F
    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 500
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 502
    .local v1, "oldV":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    mul-float/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/FunctionBarListView;->pull(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    .line 503
    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 505
    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3a

    .line 506
    iput v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 510
    :cond_3a
    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4d

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-ltz v3, :cond_4d

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-le v3, v0, :cond_62

    :cond_4d
    cmpg-float v3, v2, v5

    if-gez v3, :cond_57

    .line 511
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-gez v3, :cond_62

    :cond_57
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_73

    .line 512
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-gt v3, v0, :cond_73

    .line 513
    :cond_62
    iput v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 514
    iput v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 515
    cmpg-float v3, v2, v5

    if-gez v3, :cond_80

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-ltz v3, :cond_80

    .line 516
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    .line 522
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    .line 523
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->requestLayout()V

    .line 524
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 525
    return-void

    .line 517
    :cond_80
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_73

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    if-gt v3, v0, :cond_73

    .line 518
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    goto :goto_73
.end method


# virtual methods
.method public addToolBarItem(I)V
    .registers 6
    .param p1, "item"    # I

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "bitmapID":I
    packed-switch p1, :pswitch_data_62

    .line 809
    :goto_4
    :pswitch_4
    if-eqz v0, :cond_3c

    .line 810
    iget-object v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 811
    .local v1, "bp":Landroid/graphics/Bitmap;
    if-nez v1, :cond_29

    .line 812
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 813
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_29
    iget-object v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    sget v2, Lcom/nuance/swype/input/R$drawable;->functionbar_dismiss:I

    if-ne v0, v2, :cond_3c

    .line 818
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDismissKeyboardItemWidth:I

    .line 822
    .end local v1    # "bp":Landroid/graphics/Bitmap;
    :cond_3c
    return-void

    .line 773
    :pswitch_3d
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_swypesettings:I

    .line 774
    goto :goto_4

    .line 776
    :pswitch_40
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_languages:I

    .line 777
    goto :goto_4

    .line 779
    :pswitch_43
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_inputmodes:I

    .line 780
    goto :goto_4

    .line 782
    :pswitch_46
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_handwriting:I

    .line 783
    goto :goto_4

    .line 785
    :pswitch_49
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_handwritingoff:I

    .line 786
    goto :goto_4

    .line 788
    :pswitch_4c
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_dismiss:I

    .line 789
    goto :goto_4

    .line 791
    :pswitch_4f
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_number:I

    .line 792
    goto :goto_4

    .line 794
    :pswitch_52
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_edit:I

    .line 795
    goto :goto_4

    .line 797
    :pswitch_55
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_themes:I

    .line 798
    goto :goto_4

    .line 800
    :pswitch_58
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_addondictionaries:I

    .line 801
    goto :goto_4

    .line 803
    :pswitch_5b
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_chinesesettings:I

    .line 804
    goto :goto_4

    .line 806
    :pswitch_5e
    sget v0, Lcom/nuance/swype/input/R$drawable;->functionbar_emoji:I

    goto :goto_4

    .line 771
    nop

    :pswitch_data_62
    .packed-switch 0x65
        :pswitch_3d
        :pswitch_4
        :pswitch_40
        :pswitch_43
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
        :pswitch_49
        :pswitch_4c
        :pswitch_4
        :pswitch_46
        :pswitch_5e
    .end packed-switch
.end method

.method protected calcAccel()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 428
    iget v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_42

    move v2, v4

    .line 429
    .local v2, "vUnitVect":F
    :goto_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v5

    int-to-float v3, v5

    .line 430
    .local v3, "x":F
    iget v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 431
    .local v0, "maxScroll":I
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_22

    int-to-float v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_62

    .line 432
    :cond_22
    cmpg-float v5, v3, v4

    if-gez v5, :cond_4d

    move v1, v3

    .line 434
    .local v1, "oobDist":F
    :goto_27
    mul-float v5, v2, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_51

    .line 435
    const v4, -0x445c28f6    # -0.005f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 436
    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {p0, v4, v5, v6}, Lcom/nuance/swype/input/FunctionBarListView;->bound(FFF)F

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 454
    .end local v1    # "oobDist":F
    :goto_41
    return-void

    .line 428
    .end local v0    # "maxScroll":I
    .end local v2    # "vUnitVect":F
    .end local v3    # "x":F
    :cond_42
    iget v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    iget v6, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v2, v5, v6

    goto :goto_9

    .line 432
    .restart local v0    # "maxScroll":I
    .restart local v2    # "vUnitVect":F
    .restart local v3    # "x":F
    :cond_4d
    int-to-float v5, v0

    sub-float v1, v3, v5

    goto :goto_27

    .line 439
    .restart local v1    # "oobDist":F
    :cond_51
    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 440
    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 441
    cmpg-float v4, v1, v4

    if-gez v4, :cond_5f

    .line 442
    iput v7, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    .line 446
    :goto_5b
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    goto :goto_41

    .line 444
    :cond_5f
    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    goto :goto_5b

    .line 449
    .end local v1    # "oobDist":F
    :cond_62
    iget v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6f

    .line 450
    const v4, -0x40e66666    # -0.6f

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    goto :goto_41

    .line 452
    :cond_6f
    iput v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    goto :goto_41
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 568
    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 570
    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectedIndex:I

    .line 571
    iput v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    .line 572
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 573
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 574
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 576
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToX(I)V

    .line 577
    iput v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    .line 578
    iput v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 579
    iput v2, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 580
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    return v0
.end method

.method public getFunctionItem(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFunctionBarDisabledOrZeroItem()Z
    .registers 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    .line 884
    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isFunctionBarShowing()Z
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 716
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 717
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 718
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    :cond_1e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionBarWidth()I

    move-result v10

    .line 310
    .local v10, "measuredWidth":I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-nez v18, :cond_3a

    .line 312
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/FunctionBarListView;->mBgPadding:Landroid/graphics/Rect;

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_3a

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 319
    :cond_3a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    .line 320
    .local v14, "touchX":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mDismissKeyboardItemWidth:I

    move/from16 v19, v0

    sub-int v15, v18, v19

    .line 321
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v18

    if-nez v18, :cond_5f

    .line 418
    :cond_5e
    :goto_5e
    return-void

    .line 325
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getHeight()I

    move-result v8

    .line 328
    .local v8, "height":I
    const/16 v16, 0x0

    .line 329
    .local v16, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v7

    .line 330
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/FunctionBarListView;->mBgPadding:Landroid/graphics/Rect;

    .line 331
    .local v4, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    .line 332
    .local v11, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v12

    .line 333
    .local v12, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/input/FunctionBarListView;->mScrolled:Z

    .line 334
    .local v13, "scrolled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v18, v8, v18

    div-int/lit8 v17, v18, 0x2

    .line 335
    .local v17, "y":I
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d6

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionBarWidth()I

    move-result v18

    sub-int v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    mul-int/lit8 v19, v19, 0x2

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/FunctionBarListView;->mLeftPadding:I

    .line 339
    :cond_d6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d7
    if-ge v9, v7, :cond_2ef

    .line 341
    if-nez v9, :cond_fb

    if-eqz p1, :cond_fb

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_fb

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 343
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 346
    :cond_fb
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mColorOther:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mLeftPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mMinPadWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v5, v18, v19

    .line 351
    .local v5, "bitmapWidth":I
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_149

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mDismissKeyboardItemWidth:I

    move/from16 v18, v0

    mul-int/lit8 v5, v18, 0x2

    .line 355
    :cond_149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mMinPadWidth:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v6, v5, v18

    .line 356
    .local v6, "cellWidth":I
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_17b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17b

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mDismissKeyboardItemWidth:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    add-int v16, v16, v18

    .line 359
    :cond_17b
    add-int v18, v14, v12

    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_23a

    add-int v18, v14, v12

    add-int v19, v16, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_23a

    if-nez v13, :cond_23a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_23a

    .line 362
    if-eqz p1, :cond_236

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 364
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mColorPressed:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_22b

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mMinikeyboardOffsetX:I

    move/from16 v18, v0

    add-int v19, v16, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->getPopupContent(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 375
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->showPreview(ILjava/lang/String;I)V

    .line 379
    :cond_22b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 381
    :cond_236
    move-object/from16 v0, p0

    iput v9, v0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchIndex:I

    .line 384
    :cond_23a
    if-eqz p1, :cond_2a6

    .line 385
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_2b3

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mLeftPadding:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 390
    :goto_275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mColorOther:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    if-lt v9, v0, :cond_28e

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_2a6

    .line 393
    :cond_28e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    add-int v18, v16, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 398
    :cond_2a6
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 399
    add-int v16, v16, v5

    .line 339
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d7

    .line 388
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mDismissKeyboardItemWidth:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_275

    .line 401
    .end local v5    # "bitmapWidth":I
    .end local v6    # "cellWidth":I
    :cond_2ef
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_308

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->scrollToTarget()V

    .line 412
    :cond_308
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mMouseDown:Z

    move/from16 v18, v0

    if-nez v18, :cond_5e

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->calcAccel()V

    .line 414
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_32b

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_5e

    .line 415
    :cond_32b
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/FunctionBarListView;->slide()V

    goto/16 :goto_5e
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 757
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 758
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 633
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 634
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 635
    .local v2, "y":I
    iput v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMinikeyboardOffsetX:I

    .line 637
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 678
    :cond_24
    :goto_24
    return v5

    .line 640
    :cond_25
    packed-switch v0, :pswitch_data_88

    goto :goto_24

    .line 642
    :pswitch_29
    iput-boolean v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMouseDown:Z

    .line 643
    iput-boolean v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDragSelected:Z

    .line 644
    iput-boolean v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mAbortKey:Z

    .line 646
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSwipeSpeed:Lcom/nuance/swype/input/FunctionBarListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->flush()V

    .line 647
    iput v6, p0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 648
    iput v6, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 649
    iput-boolean v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mScrolled:Z

    .line 650
    iput v7, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchIndex:I

    .line 651
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    goto :goto_24

    .line 654
    :pswitch_40
    if-gtz v2, :cond_24

    iget-boolean v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDragSelected:Z

    if-nez v3, :cond_24

    .line 656
    iput-boolean v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDragSelected:Z

    goto :goto_24

    .line 660
    :pswitch_49
    iput-boolean v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMouseDown:Z

    .line 661
    iput-boolean v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mDragSelected:Z

    .line 662
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSwipeSpeed:Lcom/nuance/swype/input/FunctionBarListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 663
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSwipeSpeed:Lcom/nuance/swype/input/FunctionBarListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/FunctionBarListView;->setVelocity(F)V

    .line 665
    :cond_5e
    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchIndex:I

    if-eq v3, v7, :cond_80

    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    .line 666
    invoke-virtual {v3}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v3

    if-lez v3, :cond_80

    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    .line 667
    invoke-virtual {v4}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v4

    if-ge v3, v4, :cond_80

    .line 668
    iget-boolean v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mAbortKey:Z

    if-nez v3, :cond_80

    .line 669
    iget v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchIndex:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/FunctionBarListView;->touchWord(I)V

    .line 670
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->trySelect()V

    .line 673
    :cond_80
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->removeHighlight()V

    .line 674
    invoke-direct {p0}, Lcom/nuance/swype/input/FunctionBarListView;->hidePreview()V

    goto :goto_24

    .line 640
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_29
        :pswitch_49
        :pswitch_40
    .end packed-switch
.end method

.method protected pull(F)F
    .registers 16
    .param p1, "dist"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 458
    .local v6, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getWidth()I

    move-result v5

    .line 459
    .local v5, "width":I
    const/4 v7, 0x0

    iget v8, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTotalWidth:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 462
    .local v1, "maxScroll":I
    int-to-float v7, v5

    const/high16 v8, 0x40800000    # 4.0f

    div-float v0, v7, v8

    .line 464
    .local v0, "maxPullDist":F
    cmpg-float v7, v6, v12

    if-gez v7, :cond_4f

    .line 465
    move v2, v6

    .line 472
    .local v2, "oobDist":F
    :goto_1e
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 474
    .local v3, "pinnedOobDist":F
    mul-float v7, v3, v3

    mul-float v8, v0, v0

    div-float/2addr v7, v8

    sub-float v7, v13, v7

    float-to-double v8, v7

    const-wide v10, 0x3fe999999999999aL    # 0.8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 476
    mul-float v4, v7, p1

    .line 479
    .local v4, "ret":F
    mul-float v7, p1, v2

    cmpg-float v7, v7, v12

    if-gez v7, :cond_4e

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v13

    if-gez v7, :cond_4e

    .line 481
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v4, p1, v7

    .line 484
    :cond_4e
    return v4

    .line 466
    .end local v2    # "oobDist":F
    .end local v3    # "pinnedOobDist":F
    .end local v4    # "ret":F
    :cond_4f
    int-to-float v7, v1

    cmpl-float v7, v6, v7

    if-lez v7, :cond_58

    .line 467
    int-to-float v7, v1

    sub-float v2, v6, v7

    .restart local v2    # "oobDist":F
    goto :goto_1e

    .line 469
    .end local v2    # "oobDist":F
    :cond_58
    const/4 v2, 0x0

    .restart local v2    # "oobDist":F
    goto :goto_1e
.end method

.method public recycleBitmap()V
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_9

    .line 830
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionBitmaps:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 832
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mFunctionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 833
    return-void
.end method

.method protected removeHighlight()V
    .registers 2

    .prologue
    .line 710
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    .line 711
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 712
    return-void
.end method

.method protected scrollToX(I)V
    .registers 3
    .param p1, "newScrollX"    # I

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/FunctionBarListView;->scrollTo(II)V

    .line 727
    return-void
.end method

.method public selectActiveWord()V
    .registers 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->trySelect()V

    .line 584
    return-void
.end method

.method public setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mOnFunctionBarListener:Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;

    .line 290
    return-void
.end method

.method protected setVelocity(F)V
    .registers 5
    .param p1, "v"    # F

    .prologue
    .line 421
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, -0x3e100000    # -30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->bound(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 422
    return-void
.end method

.method public showFunctionBar()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/FunctionBarListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 838
    return-void
.end method

.method protected showPreview(ILjava/lang/String;I)V
    .registers 12
    .param p1, "popupX"    # I
    .param p2, "previewText"    # Ljava/lang/String;
    .param p3, "bitmapWidth"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 587
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 618
    :cond_8
    :goto_8
    return-void

    .line 592
    :cond_9
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 596
    :cond_1d
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->previewTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    .line 599
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 600
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 598
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 601
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPaint:Landroid/graphics/Paint;

    .line 602
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 601
    invoke-virtual {v3, p2, v7, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mMinPadWidth:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 603
    iget-object v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    .line 604
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 605
    .local v2, "popupWidth":I
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v1, v3, 0xa

    .line 606
    .local v1, "popupHeight":I
    iput p1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPopupPreviewX:I

    .line 607
    neg-int v3, v1

    iput v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPopupPreviewY:I

    .line 608
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 610
    .local v0, "offsetInWindow":[I
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/FunctionBarListView;->getLocationInWindow([I)V

    .line 612
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 614
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 615
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 616
    iget-object v3, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPopupPreviewX:I

    iget v5, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPopupPreviewY:I

    aget v6, v0, v6

    add-int/2addr v5, v6

    invoke-virtual {v3, p0, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_8
.end method

.method public takeSuggestionAt(F)V
    .registers 6
    .param p1, "x"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 689
    float-to-int v0, p1

    iput v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    .line 691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/FunctionBarListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 692
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->trySelect()V

    .line 693
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 694
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mHandler:Landroid/os/Handler;

    .line 696
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 695
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 697
    return-void
.end method

.method public touchWord(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectedIndex:I

    .line 301
    return-void
.end method

.method protected trySelect()V
    .registers 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 622
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 624
    :cond_11
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mOnFunctionBarListener:Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;

    iget v1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectedIndex:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->getFunctionItem(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;->selectFunctionBarFunction(I)V

    .line 625
    iget v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/FunctionBarListView;->touchWord(I)V

    .line 626
    return-void
.end method

.method protected updateScrollPosition(I)V
    .registers 3
    .param p1, "targetX"    # I

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 558
    iput p1, p0, Lcom/nuance/swype/input/FunctionBarListView;->mTargetScrollX:I

    .line 560
    invoke-virtual {p0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/FunctionBarListView;->mScrolled:Z

    .line 565
    :cond_e
    return-void
.end method
