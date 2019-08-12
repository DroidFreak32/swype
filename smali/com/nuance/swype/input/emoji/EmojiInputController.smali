.class public Lcom/nuance/swype/input/emoji/EmojiInputController;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;,
        Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;,
        Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;,
        Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;
    }
.end annotation


# static fields
.field protected static final MSG_PRESS_HOLD:I = 0x3e9

.field private static active:Z


# instance fields
.field private final actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

.field private appContext:Landroid/content/Context;

.field private deleteButton:Landroid/widget/ImageButton;

.field private emojiCategoryParser:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

.field private emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

.field private emojiPager:Landroid/support/v4/view/ViewPager;

.field private handlerCallback:Landroid/os/Handler$Callback;

.field private inflater:Landroid/view/LayoutInflater;

.field private keyboardButton:Landroid/widget/ImageButton;

.field private longPressHoldTimeout:I

.field private mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

.field private pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

.field private final pressHoldHandler:Landroid/os/Handler;

.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

.field private spaceButton:Landroid/widget/ImageButton;

.field private tabHost:Landroid/widget/TabHost;

.field private viewPagerAdapter:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$3;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    .line 455
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$4;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->handlerCallback:Landroid/os/Handler$Callback;

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiInputController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setActivePageInPageIndicator(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/emoji/EmojiInputController;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 64
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->longPressHoldTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDefaultCategory()Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/RecentListManager;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 147
    .local v0, "defaultCategoryIndex":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiCategoryParser:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->getAllCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .line 148
    return-object v1

    .line 146
    .end local v0    # "defaultCategoryIndex":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLastUsedCategory()Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "categoryName":Ljava/lang/String;
    const-string v1, "recent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/RecentListManager;->hasItems()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiCategoryParser:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    move-result-object v1

    goto :goto_0
.end method

.method private hidePageIndicator()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setVisibility(I)V

    .line 564
    return-void
.end method

.method private initializeActionKeys()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_keyboard_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->keyboardButton:Landroid/widget/ImageButton;

    .line 391
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->keyboardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiInputController$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$2;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_space_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->spaceButton:Landroid/widget/ImageButton;

    .line 401
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->spaceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_delete_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->deleteButton:Landroid/widget/ImageButton;

    .line 406
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->deleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 407
    return-void
.end method

.method private initializeCategoryTab()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 254
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v6, Lcom/nuance/swype/input/R$id;->emoji_input_view_categories:I

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    iput-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    .line 255
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 257
    new-instance v5, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiCategoryParser:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

    .line 258
    new-array v0, v8, [I

    const/4 v5, 0x0

    const v6, 0x10100a2

    aput v6, v0, v5

    .line 259
    .local v0, "activeState":[I
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiCategoryParser:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->getAllCategories()Ljava/util/List;

    move-result-object v5

    .line 260
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .line 261
    .local v1, "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 262
    .local v3, "tabSpec":Landroid/widget/TabHost$TabSpec;
    sget v5, Lcom/nuance/swype/input/R$id;->emoji_input_view_empty_view:I

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 263
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/nuance/swype/input/R$layout;->emoji_category_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 264
    .local v4, "view":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {v4, v0, v8}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 266
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 267
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 269
    .end local v1    # "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    .end local v3    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .end local v4    # "view":Landroid/widget/ImageView;
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 270
    return-void
.end method

.method private initializePageIndicator()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_page_indicator_view:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    .line 104
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hidePageIndicator()V

    .line 105
    return-void
.end method

.method private initializeRecentListManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->emoji_recent_list_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 126
    .local v0, "maxSize":I
    new-instance v1, Lcom/nuance/swype/input/emoji/RecentListManager;

    new-instance v2, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-direct {v2, p1, v0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/emoji/RecentListManager;-><init>(Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;)V

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 127
    return-void
.end method

.method private initializeViewPager()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->getLastUsedCategory()Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    move-result-object v0

    .line 131
    .local v0, "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->getDefaultCategory()Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    move-result-object v0

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setTab(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->getViewPager(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiPager:Landroid/support/v4/view/ViewPager;

    .line 136
    return-void
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 573
    sget-boolean v0, Lcom/nuance/swype/input/emoji/EmojiInputController;->active:Z

    return v0
.end method

.method private refreshPageIndicator(II)V
    .locals 2
    .param p1, "numberOfPages"    # I
    .param p2, "activePageNumber"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setNumberOfPages(I)V

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setActivePage(I)V

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method private restoreEmojiLastUsedPageNumber(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getPageNumber()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->viewPagerAdapter:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getPageNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 143
    :cond_0
    return-void
.end method

.method private setActivePageInPageIndicator(I)V
    .locals 1
    .param p1, "activePageNumber"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pageIndicatorView:Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageIndicatorView;->setActivePage(I)V

    .line 122
    return-void
.end method

.method private setExtraRegion(I)V
    .locals 2
    .param p1, "active"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 109
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->setEmojiExtraRegion(I)V

    .line 112
    :cond_0
    return-void
.end method

.method private setTab(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)V
    .locals 2
    .param p1, "category"    # Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "tabId":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    .line 91
    sget v0, Lcom/nuance/swype/input/R$layout;->emoji_input_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInputView;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    .line 92
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    .line 94
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->longPressHoldTimeout:I

    .line 95
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initializeRecentListManager(Landroid/content/Context;)V

    .line 96
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initializeActionKeys()V

    .line 97
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initializeCategoryTab()V

    .line 98
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initializePageIndicator()V

    .line 99
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->initializeViewPager()V

    .line 100
    return-void
.end method

.method public getEmojiInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    return-object v0
.end method

.method public getViewPager(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)Landroid/support/v4/view/ViewPager;
    .locals 6
    .param p1, "category"    # Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .prologue
    const/4 v5, 0x0

    .line 169
    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->inflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/nuance/swype/input/emoji/RecentListManager;)V

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->viewPagerAdapter:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;

    .line 170
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->viewPagerAdapter:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->setCategory(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)V

    .line 172
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    sget v2, Lcom/nuance/swype/input/R$id;->emoji_input_view_pager:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/EmojiInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 173
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->viewPagerAdapter:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 174
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 175
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setPersistentDrawingCache(I)V

    .line 176
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->restoreEmojiLastUsedPageNumber(Landroid/support/v4/view/ViewPager;)V

    .line 177
    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiInputController$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$1;-><init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    return-object v0
.end method

.method protected handleKey(I)V
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 480
    return-void
.end method

.method protected handleLongPressOnKey(I)V
    .locals 2
    .param p1, "actionKey"    # I

    .prologue
    .line 483
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->handleKey(I)V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setActive(Z)V

    .line 512
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState()V

    .line 513
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setExtraRegion(I)V

    .line 515
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 517
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->saveRecentList()V

    .line 521
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->switchStateToRecentCategory()V

    .line 522
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->saveRecentList()V

    .line 538
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiCategoryParser:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    move-result-object v0

    .line 540
    .local v0, "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->getViewPager(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiPager:Landroid/support/v4/view/ViewPager;

    .line 543
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->viewPagerAdapter:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiInputController;->refreshPageIndicator(II)V

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->restoreEmojiLastUsedPageNumber(Landroid/support/v4/view/ViewPager;)V

    .line 558
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->setCategory(Ljava/lang/String;)V

    .line 560
    :cond_0
    return-void

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hidePageIndicator()V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 555
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->setPageNumber(I)V

    goto :goto_1
.end method

.method protected playKeySound(I)V
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 493
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 494
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    .line 497
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->emojiInputView:Lcom/nuance/swype/input/emoji/EmojiInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputView;->removeAllViews()V

    .line 570
    :cond_0
    return-void
.end method

.method public saveRecentList()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/RecentListManager;->addAllFromPending()V

    .line 533
    return-void
.end method

.method protected sendPressHoldMessage(II)V
    .locals 4
    .param p1, "delay"    # I
    .param p2, "actionKey"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 452
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 453
    return-void
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 577
    sput-boolean p1, Lcom/nuance/swype/input/emoji/EmojiInputController;->active:Z

    .line 578
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 579
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/InputView;->requestAutospaceOverrideTo(Z)V

    .line 582
    :cond_0
    return-void

    .line 580
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchStateToRecentCategory()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/RecentListManager;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    const-string v1, "recent"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->setCategory(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController;->mEmojiLayerState:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->setPageNumber(I)V

    .line 529
    :cond_0
    return-void
.end method
