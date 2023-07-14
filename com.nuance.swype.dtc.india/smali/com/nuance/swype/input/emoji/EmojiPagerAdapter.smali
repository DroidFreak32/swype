.class Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private catGroup:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

.field private currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

.field fingerListener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

.field private inflater:Landroid/view/LayoutInflater;

.field private iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

.field private listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

.field private overlayView:Lcom/nuance/swype/view/OverlayView;

.field private pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

.field private views:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiPageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "EmojiPagerAdapter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 22
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;Landroid/view/LayoutInflater;Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/EmojiViewPager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlayView"    # Lcom/nuance/swype/view/OverlayView;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "catGroup"    # Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    .param p5, "listener"    # Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;
    .param p6, "fingerListener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .param p7, "pager"    # Lcom/nuance/swype/input/emoji/EmojiViewPager;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->views:Ljava/util/HashSet;

    .line 46
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 47
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p4, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->catGroup:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    .line 49
    invoke-virtual {p4}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->iterator()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    .line 50
    iput-object p5, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    .line 51
    iput-object p6, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->fingerListener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    .line 52
    iput-object p7, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    .line 54
    return-void
.end method

.method private createPageView(I)Lcom/nuance/swype/input/emoji/EmojiPageView;
    .locals 10
    .param p1, "pageNumber"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "createPageView()"

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " called :: pageNumber=="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->emoji_page:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 145
    .local v0, "pageView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->moveToGlobalPage(I)V

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v2

    .line 147
    .local v2, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getEmojiList()Ljava/util/List;

    move-result-object v5

    .line 148
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "createPageView()"

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " called : items.size=="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 149
    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getLocalPage()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;-><init>(Lcom/nuance/swype/input/emoji/EmojiCategory;I)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->overlayView:Lcom/nuance/swype/view/OverlayView;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->catGroup:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->fingerListener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getLocalPage()I

    move-result v6

    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/input/emoji/EmojiPageView;->init(Lcom/nuance/swype/view/OverlayView;Lcom/nuance/swype/input/emoji/EmojiCategory;Lcom/nuance/swype/input/emoji/EmojiGridParams;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Ljava/util/List;ILcom/nuance/swype/input/emoji/EmojiViewPager;)V

    .line 151
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setListener(Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;)V

    .line 155
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 194
    move-object v0, p3

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 195
    .local v0, "page":Lcom/nuance/swype/input/emoji/EmojiPageView;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->views:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method public getActivePageView()Lcom/nuance/swype/input/emoji/EmojiPageView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->catGroup:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGlobalPageCount()I

    move-result v0

    return v0
.end method

.method public getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->catGroup:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v2, p1, Lcom/nuance/swype/input/emoji/EmojiPageView;

    if-eqz v2, :cond_0

    .line 81
    check-cast p1, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 82
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;

    .line 84
    .local v1, "info":Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    move-result-object v2

    iget-object v3, v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGlobalPage(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v2

    iget v3, v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->page:I

    add-int v0, v2, v3

    .line 85
    .local v0, "globalPage":I
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "getItemPostiion(): called  :: cat: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "; loc: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->page:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "; page: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 88
    .end local v0    # "globalPage":I
    .end local v1    # "info":Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 184
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "instantiateItem() :: callled "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->createPageView(I)Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v0

    .line 186
    .local v0, "page":Lcom/nuance/swype/input/emoji/EmojiPageView;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->views:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCategoryChanged(Lcom/nuance/swype/input/emoji/EmojiCategory;II)V
    .locals 6
    .param p1, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    if-eq p2, p3, :cond_1

    .line 93
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onCategoryChanged(): recent page count: "

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "->"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->catGroup:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->updateGlobalPageCount()V

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "onCategoryChanged(): warning: modifying current category (iter invalid)"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->iter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->moveToGlobalPage(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->notifyDataSetChanged()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->refreshDynamicPages()V

    goto :goto_0
.end method

.method public refreshDynamicPages()V
    .locals 6

    .prologue
    .line 112
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->views:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 113
    .local v1, "view":Lcom/nuance/swype/input/emoji/EmojiPageView;
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;

    .line 115
    .local v0, "info":Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;
    iget-object v3, v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategory;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getEmojiList()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    iget v5, v0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;->page:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setItems(Ljava/util/List;Lcom/nuance/swype/input/emoji/EmojiCategory;I)V

    goto :goto_0

    .line 120
    .end local v0    # "info":Lcom/nuance/swype/input/emoji/EmojiPagerAdapter$PageInfo;
    .end local v1    # "view":Lcom/nuance/swype/input/emoji/EmojiPageView;
    :cond_1
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move-object v0, p3

    .line 168
    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 169
    .local v0, "primaryView":Lcom/nuance/swype/input/emoji/EmojiPageView;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    if-eq v1, v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setTouchable(Z)V

    .line 176
    :cond_0
    check-cast p3, Lcom/nuance/swype/input/emoji/EmojiPageView;

    .end local p3    # "object":Ljava/lang/Object;
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 177
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->currentPage:Lcom/nuance/swype/input/emoji/EmojiPageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setTouchable(Z)V

    .line 180
    :cond_1
    return-void
.end method
