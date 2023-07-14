.class public Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;
.super Ljava/lang/Object;
.source "MoveToFirstStrategyEmoji.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy",
        "<",
        "Lcom/nuance/swype/input/emoji/Emoji;",
        "Lcom/nuance/swype/input/emoji/Emoji;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mCache:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSize"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p2, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mMaxSize:I

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mMaxSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mAppContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Lcom/nuance/swype/input/emoji/Emoji;)V
    .locals 4
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 30
    .local v0, "mEmoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 37
    .end local v0    # "mEmoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->add(Lcom/nuance/swype/input/emoji/Emoji;)V

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 4
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
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 44
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v0    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_0
    return-object v1
.end method

.method public getCache()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategyEmoji;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public readFromStore()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public saveToStore()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
