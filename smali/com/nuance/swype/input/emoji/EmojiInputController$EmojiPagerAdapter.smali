.class Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmojiPagerAdapter"
.end annotation


# instance fields
.field pageController:Lcom/nuance/swype/input/emoji/EmojiPageController;

.field pages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiPageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/nuance/swype/input/emoji/RecentListManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "recentListManager"    # Lcom/nuance/swype/input/emoji/RecentListManager;

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 205
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiPageController;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/EmojiPageController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/nuance/swype/input/emoji/RecentListManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pageController:Lcom/nuance/swype/input/emoji/EmojiPageController;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pages:Landroid/util/SparseArray;

    .line 207
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 243
    .local v0, "page":Lcom/nuance/swype/input/emoji/EmojiPageView;
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 246
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->release()V

    .line 247
    :cond_0
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 250
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pageController:Lcom/nuance/swype/input/emoji/EmojiPageController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageController;->getPageCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pageController:Lcom/nuance/swype/input/emoji/EmojiPageController;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageController;->getPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 233
    .local v0, "page":Lcom/nuance/swype/input/emoji/EmojiPageView;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    :cond_0
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 220
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategory(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiPagerAdapter;->pageController:Lcom/nuance/swype/input/emoji/EmojiPageController;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageController;->setCategory(Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;)V

    .line 211
    return-void
.end method
