.class public Lcom/nuance/connect/internal/HandlerRegistry;
.super Ljava/lang/Object;


# instance fields
.field final handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/ConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field log:Lcom/nuance/connect/util/Logger$Log;

.field final messageArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/ConnectHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    return-void
.end method

.method private mapMessages(Lcom/nuance/connect/internal/ConnectHandler;)V
    .registers 9

    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getMessageIDs()[I

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getMessageIDs()[I

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_6

    aget v3, v1, v0

    iget-object v4, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_25

    iget-object v4, p0, Lcom/nuance/connect/internal/HandlerRegistry;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "More than one handler is processing this message: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    iget-object v4, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public add(Lcom/nuance/connect/internal/ConnectHandler;)Lcom/nuance/connect/internal/HandlerRegistry;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/connect/internal/ConnectHandler;->getHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/HandlerRegistry;->mapMessages(Lcom/nuance/connect/internal/ConnectHandler;)V

    :cond_18
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/nuance/connect/internal/HandlerRegistry;
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-object p0
.end method

.method public getHandlerByName(Ljava/lang/String;)Lcom/nuance/connect/internal/ConnectHandler;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ConnectHandler;

    return-object v0
.end method

.method public getRegisteredHandlers()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHandler(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postUpgrade()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->handlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ConnectHandler;

    invoke-interface {v0}, Lcom/nuance/connect/internal/ConnectHandler;->onPostUpgrade()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public tryHandleMessage(Landroid/os/Handler;Landroid/os/Message;)Z
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_21

    iget-object v0, p0, Lcom/nuance/connect/internal/HandlerRegistry;->messageArray:Landroid/util/SparseArray;

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/ConnectHandler;

    if-eqz v0, :cond_21

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectHandler;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
