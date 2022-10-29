.class public Lcom/nuance/swype/input/emoji/RecentListManager;
.super Ljava/lang/Object;
.source "RecentListManager.java"


# instance fields
.field private final pendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;)V
    .registers 3
    .param p1, "recentList"    # Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->pendingList:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    .line 14
    return-void
.end method

.method private readFromStore()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->readFromStore()V

    .line 40
    return-void
.end method

.method private saveToStore()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->saveToStore()V

    .line 44
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .param p1, "emoji"    # Ljava/lang/Object;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->add(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public addPending(Ljava/lang/Object;)V
    .registers 3
    .param p1, "emoji"    # Ljava/lang/Object;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->pendingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public commit()Z
    .registers 5

    .prologue
    .line 25
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->pendingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v0, 0x1

    .line 26
    .local v0, "changed":Z
    :goto_9
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->pendingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "emoji":Ljava/lang/Object;
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v3, v1}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->add(Ljava/lang/Object;)V

    goto :goto_f

    .line 25
    .end local v0    # "changed":Z
    .end local v1    # "emoji":Ljava/lang/Object;
    :cond_1f
    const/4 v0, 0x0

    goto :goto_9

    .line 29
    .restart local v0    # "changed":Z
    :cond_21
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/RecentListManager;->saveToStore()V

    .line 30
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->pendingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 31
    return v0
.end method

.method public getAll()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasItems()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/RecentListManager;->recentList:Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;

    invoke-interface {v0}, Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;->getSize()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
