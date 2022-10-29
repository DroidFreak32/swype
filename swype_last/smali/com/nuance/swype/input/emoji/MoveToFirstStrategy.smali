.class public Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;
.super Ljava/lang/Object;
.source "MoveToFirstStrategy.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSize"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mMaxSize:I

    .line 23
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mMaxSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mAppContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 4
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_d
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mMaxSize:I

    if-le v0, v1, :cond_1e

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 40
    :cond_1e
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public getAll()Ljava/util/List;
    .registers 5
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
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "emoji":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 49
    .end local v0    # "emoji":Ljava/lang/String;
    :cond_1b
    return-object v1
.end method

.method public getCache()Ljava/util/ArrayDeque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public readFromStore()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public saveToStore()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method
