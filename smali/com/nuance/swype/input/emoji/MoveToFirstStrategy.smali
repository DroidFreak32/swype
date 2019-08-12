.class public Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;
.super Ljava/lang/Object;
.source "MoveToFirstStrategy.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCache:Ljava/util/ArrayDeque;
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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSize"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mMaxSize:I

    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mMaxSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mAppContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "emoji"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mMaxSize:I

    if-le v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 4
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
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "emoji":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "emoji":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public readFromStore()V
    .locals 5

    .prologue
    .line 66
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 67
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getEmojiRecentList()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "jsonString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 73
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 80
    :cond_0
    return-void
.end method

.method public saveToStore()V
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mCache:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "emoji":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 58
    .end local v1    # "emoji":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "jsonString":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/AppPreferences;->setEmojiRecentList(Ljava/lang/String;)V

    .line 62
    return-void
.end method
