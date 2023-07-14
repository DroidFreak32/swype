.class public Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;
.super Ljava/lang/Object;
.source "MoveToFirstStrategySymbolDecorator.java"

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
.field strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;)V
    .locals 0
    .param p1, "orderingStrategy"    # Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    .line 20
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->readFromStore()V

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->add(Ljava/lang/String;)V

    .line 26
    return-void
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
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getSize()I

    move-result v0

    return v0
.end method

.method public readFromStore()V
    .locals 5

    .prologue
    .line 47
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getCache()Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 48
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getChineseSymbolRecentList()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "jsonString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 54
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getCache()Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 61
    :cond_0
    return-void
.end method

.method public saveToStore()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 37
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getCache()Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "emoji":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 40
    .end local v1    # "emoji":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "jsonString":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;->strategy:Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/AppPreferences;->setChineseSymbolRecentList(Ljava/lang/String;)V

    .line 43
    return-void
.end method
