.class public Lcom/nuance/swype/input/emoji/RecentListManager;
.super Ljava/lang/Object;
.source "RecentListManager.java"


# instance fields
.field mPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;)V
    .locals 1
    .param p1, "recentList"    # Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mPendingList:Ljava/util/List;

    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/RecentListManager;->readFromStore()V

    .line 14
    return-void
.end method

.method private readFromStore()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->readFromStore()V

    .line 35
    return-void
.end method

.method private saveToStore()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->saveToStore()V

    .line 39
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mPendingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public addAllFromPending()V
    .locals 3

    .prologue
    .line 22
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mPendingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "emoji":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v2, v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    .end local v0    # "emoji":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/RecentListManager;->saveToStore()V

    .line 26
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mPendingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 27
    return-void
.end method

.method public createPage()Lcom/nuance/swype/input/emoji/EmojiPage;
    .locals 4

    .prologue
    .line 42
    new-instance v2, Lcom/nuance/swype/input/emoji/EmojiPage;

    invoke-direct {v2}, Lcom/nuance/swype/input/emoji/EmojiPage;-><init>()V

    .line 43
    .local v2, "page":Lcom/nuance/swype/input/emoji/EmojiPage;
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/RecentListManager;->getAll()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "emoji":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/emoji/EmojiPage;->addKey(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "emoji":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->mRecentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
