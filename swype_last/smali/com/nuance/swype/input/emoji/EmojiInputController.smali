.class public Lcom/nuance/swype/input/emoji/EmojiInputController;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;,
        Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;
    }
.end annotation


# static fields
.field private static final ENABLE_ANIM_DEFAULT:Z = true

.field private static final MSG_PRESS_HOLD:I = 0x3e9

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private final actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

.field private adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

.field private catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

.field private categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/ImageButton;

.field private emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

.field private handlerCallback:Landroid/os/Handler$Callback;

.field private inflater:Landroid/view/LayoutInflater;

.field private keyboardButton:Landroid/widget/ImageButton;

.field private layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

.field private longPressHoldTimeout:I

.field private pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

.field private pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

.field private final pressHoldHandler:Landroid/os/Handler;

.field private resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/util/Callback",
            "<+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private showOnStart:Z

.field private spaceButton:Landroid/widget/ImageButton;

.field private tabHost:Landroid/widget/TabHost;

.field private textScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string/jumbo v0, "EmojiInputController"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 65
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->textScale:F

    .line 495
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$5;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    .line 536
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$6;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->handlerCallback:Landroid/os/Handler$Callback;

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->showOnStart:Z

    .line 650
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$7;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    .line 651
    invoke-static {v0}, Lcom/nuance/swype/util/Callback;->create(Ljava/lang/Runnable;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiCategoryList;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/emoji/EmojiInputController;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->longPressHoldTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/swype/input/emoji/EmojiInputController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->showOnStart:Z

    return p1
.end method

.method private createAdapter(Lcom/nuance/swype/input/emoji/EmojiGridParams;)V
    .registers 11
    .param p1, "grid"    # Lcom/nuance/swype/input/emoji/EmojiGridParams;

    .prologue
    const/4 v7, 0x0

    .line 262
    new-instance v5, Lcom/nuance/swype/input/emoji/EmojiInputController$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$1;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    .line 310
    .local v5, "pageViewListener":Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v8

    .line 311
    .local v8, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v8, :cond_53

    invoke-virtual {v8}, Lcom/nuance/swype/input/view/InputContainerView;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    move-result-object v2

    .line 312
    .local v2, "overlayView":Lcom/nuance/swype/view/OverlayView;
    :goto_1a
    new-instance v4, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-direct {v4, v0, p1, v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiGridParams;Lcom/nuance/swype/input/emoji/EmojiCategoryList;)V

    .line 313
    .local v4, "catGroup":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->iterator()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    .line 314
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    new-instance v6, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;

    invoke-direct {v6, p0, v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$ActiveFingerTracker;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;Lcom/nuance/swype/input/emoji/EmojiInputController$1;)V

    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;Landroid/view/LayoutInflater;Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/EmojiViewPager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    .line 316
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setOffscreenPageLimit(I)V

    .line 318
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiInputController$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$2;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 348
    return-void

    .end local v2    # "overlayView":Lcom/nuance/swype/view/OverlayView;
    .end local v4    # "catGroup":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    :cond_53
    move-object v2, v7

    .line 311
    goto :goto_1a
.end method

.method private createGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 360
    iget-object v8, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/nuance/swype/input/R$layout;->emoji_page:I

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 361
    .local v5, "protoPage":Lcom/nuance/swype/input/emoji/EmojiPageView;
    invoke-static {v5}, Lcom/nuance/swype/util/ViewUtil;->getHorPadding(Landroid/view/View;)I

    move-result v2

    .line 362
    .local v2, "horPadding":I
    invoke-static {v5}, Lcom/nuance/swype/util/ViewUtil;->getVerPadding(Landroid/view/View;)I

    move-result v6

    .line 364
    .local v6, "verPadding":I
    iget-object v8, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-static {v8}, Lcom/nuance/swype/util/ViewUtil;->getHorPadding(Landroid/view/View;)I

    move-result v3

    .line 365
    .local v3, "pagerHorPadding":I
    iget-object v8, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-static {v8}, Lcom/nuance/swype/util/ViewUtil;->getVerPadding(Landroid/view/View;)I

    move-result v4

    .line 366
    .local v4, "pagerVerPadding":I
    iget-object v8, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v8}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v1, v8, v2

    .line 367
    .local v1, "contentWidth":I
    iget-object v8, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v8}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v4

    sub-int v0, v8, v6

    .line 368
    .local v0, "contentHeight":I
    if-lez v0, :cond_35

    if-gtz v1, :cond_44

    .line 369
    :cond_35
    sget-object v8, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "createGrid(): measured content area is empty"

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 373
    :goto_43
    return-object v7

    :cond_44
    new-instance v7, Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget-object v8, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    iget v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->textScale:F

    invoke-direct {v7, v8, v1, v0, v9}, Lcom/nuance/swype/input/emoji/EmojiGridParams;-><init>(Landroid/content/Context;IIF)V

    goto :goto_43
.end method

.method private createView()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    if-eqz v2, :cond_5

    .line 154
    :goto_4
    return-void

    .line 136
    :cond_5
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "createView(): inflating emoji input view..."

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 139
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    .line 140
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 141
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->emoji_input_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/emoji/EmojiInputView;

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    .line 142
    sget v2, Lcom/nuance/swype/input/R$attr;->emojiBackground:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    invoke-static {v2, v1}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 145
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v3, Lcom/nuance/swype/input/R$id;->emoji_input_view_pager:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/emoji/EmojiViewPager;

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    .line 146
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 147
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v3, Lcom/nuance/swype/input/R$id;->emoji_page_indicator_view:I

    .line 148
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    .line 149
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setPagerSizeChangeListener(Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;)V

    .line 151
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initActionKeys()V

    .line 152
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initCategoryTabs()V

    goto :goto_4
.end method

.method private hideView(Z)Z
    .registers 9
    .param p1, "enableAnim"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    if-eqz v3, :cond_10

    .line 617
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getRecentCat()Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->commit()Z

    .line 620
    :cond_10
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    if-nez v3, :cond_15

    .line 640
    :goto_14
    return v1

    .line 624
    :cond_15
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 626
    sget-object v3, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "hideView(): can\'t hide detached view"

    aput-object v4, v2, v1

    invoke-interface {v3, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 627
    iput-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    goto :goto_14

    .line 630
    :cond_2c
    sget-object v3, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "hideView(): hiding ui..."

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 631
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 632
    invoke-virtual {v3, v6, p1}, Lcom/nuance/swype/input/IME;->setCoverView(Landroid/view/View;Z)V

    .line 633
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onViewActiveStateChanged(Z)V

    .line 634
    iput-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    .line 635
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 636
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_6d

    .line 637
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    .line 638
    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v4

    .line 637
    invoke-interface {v1, v3, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    :cond_6d
    move v1, v2

    .line 640
    goto :goto_14
.end method

.method private initActionKeys()V
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_keyboard_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->keyboardButton:Landroid/widget/ImageButton;

    .line 463
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->keyboardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiInputController$4;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$4;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->keyboardButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$drawable;->emoji_key_action:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setButtonBackground(Landroid/view/View;I)V

    .line 471
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->keyboardButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconKeyboard:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setButtonIcon(Landroid/widget/ImageButton;I)V

    .line 474
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_space_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->spaceButton:Landroid/widget/ImageButton;

    .line 475
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->spaceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->spaceButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$drawable;->emoji_key_space:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setButtonBackground(Landroid/view/View;I)V

    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_delete_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->deleteButton:Landroid/widget/ImageButton;

    .line 480
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->deleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->deleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$drawable;->emoji_key_action:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setButtonBackground(Landroid/view/View;I)V

    .line 482
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->deleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconDelete:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setButtonIcon(Landroid/widget/ImageButton;I)V

    .line 483
    return-void
.end method

.method private initCategoryTabs()V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v10, Lcom/nuance/swype/input/R$id;->emoji_input_view_categories:I

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TabHost;

    iput-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    .line 423
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v9, v10}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 424
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->setup()V

    .line 426
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v9}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v9

    .line 427
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 428
    .local v0, "category":Lcom/nuance/swype/input/emoji/EmojiCategory;
    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 429
    .local v6, "tabSpec":Landroid/widget/TabHost$TabSpec;
    sget v10, Lcom/nuance/swype/input/R$id;->emoji_input_view_empty_view:I

    invoke-virtual {v6, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 430
    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/nuance/swype/input/R$layout;->emoji_category_item:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 431
    .local v8, "view":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getIconRes()I

    move-result v11

    invoke-static {v10, v11}, Lcom/nuance/swype/view/TintDrawableCompat;->createTintDrawable(Landroid/content/Context;I)Lcom/nuance/swype/view/TintDrawable;

    move-result-object v3

    .line 432
    .local v3, "drawable":Lcom/nuance/swype/view/TintDrawable;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$color;->color_emoji_category_icon:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 434
    .local v1, "color":Landroid/content/res/ColorStateList;
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v10}, Lcom/nuance/swype/view/TintDrawable;->setTintParams(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 435
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-virtual {v6, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 437
    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v10, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_2a

    .line 439
    .end local v0    # "category":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v1    # "color":Landroid/content/res/ColorStateList;
    .end local v3    # "drawable":Lcom/nuance/swype/view/TintDrawable;
    .end local v6    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .end local v8    # "view":Landroid/widget/ImageView;
    :cond_79
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v9, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 441
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    const v10, 0x1020013

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabWidget;

    .line 442
    .local v7, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    .line 443
    .local v2, "count":I
    new-instance v5, Lcom/nuance/swype/input/emoji/EmojiInputController$3;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$3;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    .line 454
    .local v5, "listener":Landroid/view/View$OnTouchListener;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_93
    if-ge v4, v2, :cond_a7

    .line 455
    invoke-virtual {v7, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 456
    invoke-virtual {v7, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 458
    :cond_a7
    return-void
.end method

.method private onViewActiveStateChanged(Z)V
    .registers 4
    .param p1, "isShowing"    # Z

    .prologue
    .line 723
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 724
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 725
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_2d

    .line 727
    if-nez p1, :cond_2e

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->requestAutospaceOverrideTo(Z)V

    .line 728
    if-nez p1, :cond_30

    .line 730
    instance-of v1, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_21

    .line 731
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 733
    :cond_21
    instance-of v1, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_2d

    .line 734
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 735
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 747
    :cond_2d
    :goto_2d
    return-void

    .line 727
    :cond_2e
    const/4 v1, 0x0

    goto :goto_13

    .line 738
    :cond_30
    instance-of v1, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_39

    .line 739
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 741
    :cond_39
    instance-of v1, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_2d

    .line 742
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_2d
.end method

.method private setButtonBackground(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 487
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 488
    return-void
.end method

.method private setButtonIcon(Landroid/widget/ImageButton;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/ImageButton;
    .param p2, "attrId"    # I

    .prologue
    .line 491
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    return-void
.end method

.method private setTab(Lcom/nuance/swype/input/emoji/EmojiCategory;)Z
    .registers 4
    .param p1, "category"    # Lcom/nuance/swype/input/emoji/EmojiCategory;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "tabId":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 203
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x1

    .line 206
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private showView(ZZ)Z
    .registers 8
    .param p1, "enableAnim"    # Z
    .param p2, "resetState"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 595
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    if-eqz v2, :cond_1e

    .line 596
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 611
    :goto_e
    return v0

    .line 600
    :cond_f
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "showView(): current emoji input view is detached (re-creating)"

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 601
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    .line 603
    :cond_1e
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "showView(): showing ui..."

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 604
    if-eqz p2, :cond_3b

    .line 605
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getDefaultCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->resetState(Ljava/lang/String;)V

    .line 607
    :cond_3b
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->createView()V

    .line 608
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    invoke-virtual {v0, v2, p1}, Lcom/nuance/swype/input/IME;->setCoverView(Landroid/view/View;Z)V

    .line 610
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onViewActiveStateChanged(Z)V

    move v0, v1

    .line 611
    goto :goto_e
.end method


# virtual methods
.method public addEmojiInRecentCat(Lcom/nuance/swype/input/emoji/Emoji;)Z
    .registers 5
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    .line 850
    :cond_7
    :goto_7
    return v1

    .line 840
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getRecentCat()Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    move-result-object v0

    .line 842
    .local v0, "recentCat":Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
    if-eqz v0, :cond_7

    .line 845
    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->add(Lcom/nuance/swype/input/emoji/Emoji;Z)V

    .line 846
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    if-eqz v1, :cond_1c

    .line 847
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->refreshDynamicPages()V

    .line 850
    :cond_1c
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public addPopupSkinToneInRecentCat(Lcom/nuance/swype/input/emoji/Emoji;)Z
    .registers 8
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->addEmojiInRecentCat(Lcom/nuance/swype/input/emoji/Emoji;)Z

    move-result v0

    .line 830
    .local v0, "isAdded":Z
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 831
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/swype/input/IME;->onText(Ljava/lang/CharSequence;J)V

    .line 833
    return v0
.end method

.method public dismissSkinTonePopup()V
    .registers 3

    .prologue
    .line 855
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    if-eqz v1, :cond_f

    .line 856
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getActivePageView()Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v0

    .line 858
    .local v0, "emojiPageView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    if-eqz v0, :cond_f

    .line 859
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->dismissEmojiPopup()V

    .line 861
    .end local v0    # "emojiPageView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    :cond_f
    return-void
.end method

.method protected handleKey(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 561
    return-void
.end method

.method protected handleLongPressOnKey(I)V
    .registers 2
    .param p1, "actionKey"    # I

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->handleKey(I)V

    .line 565
    return-void
.end method

.method public hide()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 590
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hide(): isActive: "

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 591
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hideView(Z)Z

    .line 592
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmoji(Ljava/lang/CharSequence;)Z
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 797
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    if-nez v3, :cond_7

    move v3, v4

    .line 824
    :goto_6
    return v3

    .line 801
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    move-result-object v2

    .line 802
    .local v2, "group":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    if-nez v2, :cond_11

    move v3, v4

    .line 803
    goto :goto_6

    .line 806
    :cond_11
    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getAllCategories()Ljava/util/List;

    move-result-object v0

    .line 807
    .local v0, "emojiList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/EmojiCategory;>;"
    if-nez v0, :cond_19

    move v3, v4

    .line 808
    goto :goto_6

    .line 811
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 812
    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getEmojiList()Ljava/util/List;

    move-result-object v1

    .line 813
    .local v1, "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 817
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/Emoji;

    .line 818
    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 819
    const/4 v3, 0x1

    goto :goto_6

    .end local v1    # "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    :cond_55
    move v3, v4

    .line 824
    goto :goto_6
.end method

.method public onConfigChanged(Z)V
    .registers 7
    .param p1, "isOrientationChange"    # Z

    .prologue
    .line 678
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConfigChanged(): is or: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; active: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 680
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->showOnStart:Z

    .line 681
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 2
    .param p1, "finishing"    # Z

    .prologue
    .line 664
    return-void
.end method

.method protected onGlobalPageChanged()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 382
    sget-object v6, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "onGlobalPageChanged(): called >>>>>>>>>>>: "

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 383
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v4

    .line 386
    .local v4, "oldCat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->getCurrentItem()I

    move-result v2

    .line 387
    .local v2, "globalPage":I
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6, v2}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->moveToGlobalPage(I)V

    .line 389
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    .line 390
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getLocalPage()I

    move-result v3

    .line 393
    .local v3, "localPage":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setTab(Lcom/nuance/swype/input/emoji/EmojiCategory;)Z

    .line 395
    sget-object v6, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "onGlobalPageChanged(): cur: "

    aput-object v8, v7, v10

    aput-object v0, v7, v9

    const/4 v8, 0x2

    const-string/jumbo v9, "; old: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "; page: "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 397
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    move-result-object v1

    .line 398
    .local v1, "catGroup":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/emoji/EmojiCategory;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    .line 400
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getRecentCat()Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    move-result-object v5

    .line 403
    .local v5, "recentCat":Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->commit()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 405
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v6, v5, v10, v10}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->onCategoryChanged(Lcom/nuance/swype/input/emoji/EmojiCategory;II)V

    .line 408
    :cond_70
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6, v1, v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;)V

    .line 417
    .end local v5    # "recentCat":Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
    :cond_77
    :goto_77
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getLocalPageCount()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/nuance/swype/input/emoji/EmojiInputController;->updatePageIndicator(II)V

    .line 418
    return-void

    .line 411
    :cond_81
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getCategoryItem()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->getPageForItem(I)I

    move-result v6

    .line 412
    if-eq v6, v3, :cond_77

    .line 413
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6, v1, v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;)V

    goto :goto_77
.end method

.method public onPagerSizeChanged()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 170
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "onPagerSizeChanged()"

    aput-object v9, v8, v10

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 171
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->createGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v4

    .line 172
    .local v4, "grid":Lcom/nuance/swype/input/emoji/EmojiGridParams;
    if-eqz v4, :cond_6c

    .line 173
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/emoji/EmojiInputController;->createAdapter(Lcom/nuance/swype/input/emoji/EmojiGridParams;)V

    .line 179
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->loadState()V

    .line 180
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "catName":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getCategoryItem()I

    move-result v5

    .line 183
    .local v5, "item":I
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v7, v2}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    .line 184
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategory;->hasItems()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 185
    :cond_36
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getDefaultCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    .line 186
    const/4 v5, 0x0

    .line 189
    :cond_3d
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getEmojiList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 191
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    move-result-object v1

    .line 192
    .local v1, "catGroup":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->getPageForItem(I)I

    move-result v6

    .line 193
    .local v6, "localPage":I
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGlobalPage(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v7

    add-int v3, v7, v6

    .line 195
    .local v3, "globalPage":I
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v7, v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->moveToGlobalPage(I)V

    .line 196
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v7, v3, v10}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setCurrentItem(IZ)V

    .line 197
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onGlobalPageChanged()V

    .line 198
    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v1    # "catGroup":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    .end local v2    # "catName":Ljava/lang/String;
    .end local v3    # "globalPage":I
    .end local v5    # "item":I
    .end local v6    # "localPage":I
    :cond_6c
    return-void
.end method

.method public onStartInputView(Z)V
    .registers 7
    .param p1, "restarting"    # Z

    .prologue
    const/4 v4, 0x0

    .line 684
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStartInputView(): show on start: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->showOnStart:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; restarting: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 685
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 684
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 686
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->showOnStart:Z

    if-eqz v0, :cond_31

    .line 688
    invoke-direct {p0, v4, v4}, Lcom/nuance/swype/input/emoji/EmojiInputController;->showView(ZZ)Z

    .line 691
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->start()V

    .line 696
    :cond_30
    :goto_30
    return-void

    .line 692
    :cond_31
    if-nez p1, :cond_30

    .line 694
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hideView(Z)Z

    goto :goto_30
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 11
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 701
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    if-eqz v3, :cond_54

    .line 702
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    .line 703
    .local v0, "cur":Lcom/nuance/swype/input/emoji/EmojiCategory;
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v2

    .line 704
    .local v2, "old":Lcom/nuance/swype/input/emoji/EmojiCategory;
    sget-object v3, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onTabChanged():  called  :: old: "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string/jumbo v5, "; cur: "

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 705
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/emoji/EmojiCategory;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 707
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGlobalPage(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v1

    .line 708
    .local v1, "globalPage":I
    sget-object v3, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "onTabChanged(): called  :: setting global page: "

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 709
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual {v3, v1, v6}, Lcom/nuance/swype/input/emoji/EmojiViewPager;->setCurrentItem(IZ)V

    .line 710
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->onGlobalPageChanged()V

    .line 713
    .end local v0    # "cur":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v1    # "globalPage":I
    .end local v2    # "old":Lcom/nuance/swype/input/emoji/EmojiCategory;
    :cond_54
    return-void
.end method

.method protected playKeyFeedback(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    .line 567
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 568
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 569
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    .line 570
    return-void
.end method

.method protected sendPressHoldMessage(II)V
    .registers 7
    .param p1, "delay"    # I
    .param p2, "actionKey"    # I

    .prologue
    .line 531
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 533
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 534
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    .line 119
    new-instance v4, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->layerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    .line 121
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->short_press_timeout_ms:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->longPressHoldTimeout:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->emoji_recent_list_max:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 123
    .local v1, "maxSize":I
    new-instance v3, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;

    invoke-direct {v3, p1, v1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v3, "strategy":Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;
    new-instance v0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;-><init>(Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;)V

    .line 126
    .local v0, "decorator":Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmojiDecorator;
    new-instance v2, Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/emoji/RecentListManager;-><init>(Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;)V

    .line 127
    .local v2, "recentListManager":Lcom/nuance/swype/input/emoji/RecentListManager;
    new-instance v4, Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-direct {v4, p1, v2}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/RecentListManager;)V

    iput-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    .line 128
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 576
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 577
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_24

    .line 578
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 582
    :cond_24
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "show(): isActive: "

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "; text scale: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->textScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 583
    invoke-direct {p0, v5, v5}, Lcom/nuance/swype/input/emoji/EmojiInputController;->showView(ZZ)Z

    .line 584
    return-void
.end method

.method public updatePageIndicator(II)V
    .registers 10
    .param p1, "pageNumber"    # I
    .param p2, "pageCount"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 157
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "updatePageIndicator(): "

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "/"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 158
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setNumberOfPages(I)V

    .line 159
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setActivePage(I)V

    .line 161
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    if-le p2, v6, :cond_34

    :goto_30
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setVisibility(I)V

    .line 162
    return-void

    :cond_34
    move v0, v1

    .line 161
    goto :goto_30
.end method
