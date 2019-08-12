.class public Lcom/nuance/swype/input/emoji/EmojiPageController;
.super Ljava/lang/Object;
.source "EmojiPageController.java"


# instance fields
.field appContext:Landroid/content/Context;

.field currentCategory:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

.field layoutInflater:Landroid/view/LayoutInflater;

.field pageCreator:Lcom/nuance/swype/input/emoji/EmojiPageCreator;

.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/nuance/swype/input/emoji/RecentListManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "manager"    # Lcom/nuance/swype/input/emoji/RecentListManager;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->appContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiPageController;)Lcom/nuance/swype/input/emoji/RecentListManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiPageController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    return-object v0
.end method

.method private createNewPage()Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/nuance/swype/input/R$layout;->emoji_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 36
    return-object v0
.end method


# virtual methods
.method public getPage(I)Landroid/view/View;
    .locals 3
    .param p1, "pageNumber"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiPageController;->createNewPage()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 72
    .local v1, "pageView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->pageCreator:Lcom/nuance/swype/input/emoji/EmojiPageCreator;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->getPage(I)Lcom/nuance/swype/input/emoji/EmojiPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiPage;->getKeyList()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setKeyList(Ljava/util/List;)V

    .line 75
    new-instance v2, Lcom/nuance/swype/input/emoji/EmojiPageController$1;

    invoke-direct {v2, p0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageController$1;-><init>(Lcom/nuance/swype/input/emoji/EmojiPageController;Lcom/nuance/swype/input/emoji/EmojiPageView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-object v1
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->pageCreator:Lcom/nuance/swype/input/emoji/EmojiPageCreator;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->getPageCount()I

    move-result v0

    return v0
.end method

.method public setCategory(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)V
    .locals 3
    .param p1, "category"    # Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->currentCategory:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->currentCategory:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getArrayRefId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getArrayRefId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 56
    :cond_2
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;Lcom/nuance/swype/input/emoji/RecentListManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->pageCreator:Lcom/nuance/swype/input/emoji/EmojiPageCreator;

    .line 57
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageController;->currentCategory:Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    goto :goto_0
.end method
