.class public Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;
.super Lcom/nuance/swype/input/emoji/AbstractCategory;
.source "SymbolCategoryRecents.java"


# instance fields
.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/RecentListManager;Ljava/lang/String;I)V
    .registers 4
    .param p1, "recentListManager"    # Lcom/nuance/swype/input/emoji/RecentListManager;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconResId"    # I

    .prologue
    .line 18
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/emoji/AbstractCategory;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 20
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "pending"    # Z

    .prologue
    .line 40
    if-eqz p2, :cond_8

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/RecentListManager;->addPending(Ljava/lang/Object;)V

    .line 45
    :goto_7
    return-void

    .line 43
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/RecentListManager;->add(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public commit()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/RecentListManager;->commit()Z

    move-result v0

    return v0
.end method

.method public getItemList()Ljava/util/List;
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
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v1, "symbols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/RecentListManager;->getAll()Ljava/util/List;

    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 31
    :cond_1f
    return-object v1
.end method

.method public hasItems()Z
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/RecentListManager;->hasItems()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
