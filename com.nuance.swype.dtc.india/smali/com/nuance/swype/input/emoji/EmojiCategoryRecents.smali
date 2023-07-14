.class public Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
.super Lcom/nuance/swype/input/emoji/EmojiCategory;
.source "EmojiCategoryRecents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/swype/input/emoji/EmojiCategory",
        "<",
        "Lcom/nuance/swype/input/emoji/Emoji;",
        ">;"
    }
.end annotation


# instance fields
.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/RecentListManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "recentListManager"    # Lcom/nuance/swype/input/emoji/RecentListManager;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconResId"    # I

    .prologue
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/emoji/EmojiCategory;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Lcom/nuance/swype/input/emoji/Emoji;Z)V
    .locals 1
    .param p1, "item"    # Lcom/nuance/swype/input/emoji/Emoji;
    .param p2, "pending"    # Z

    .prologue
    .line 44
    if-eqz p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/RecentListManager;->addPending(Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/RecentListManager;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized commit()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/RecentListManager;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEmojiList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/RecentListManager;->getAll()Ljava/util/List;

    move-result-object v2

    .line 23
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "o":Ljava/lang/Object;
    check-cast v1, Lcom/nuance/swype/input/emoji/Emoji;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method public getItemList()Ljava/util/List;
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
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/RecentListManager;->hasItems()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public isRecentCategory()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
