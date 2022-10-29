.class public Lcom/nuance/swype/input/DrawBufferManager;
.super Ljava/lang/Object;
.source "DrawBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_COUNT:I = 0x1

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final bufferCache:Lcom/nuance/android/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/android/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string/jumbo v0, "DrawBufferManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager;, "Lcom/nuance/swype/input/DrawBufferManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/nuance/swype/input/DrawBufferManager$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/DrawBufferManager$1;-><init>(Lcom/nuance/swype/input/DrawBufferManager;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxMega"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager;, "Lcom/nuance/swype/input/DrawBufferManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/nuance/swype/input/DrawBufferManager$2;

    mul-int/lit16 v1, p1, 0x400

    mul-int/lit16 v1, v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/DrawBufferManager$2;-><init>(Lcom/nuance/swype/input/DrawBufferManager;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    .line 73
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/DrawBufferManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getDrawBufferManager()Lcom/nuance/swype/input/DrawBufferManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addObjectToCache(ILjava/lang/Object;)V
    .registers 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager;, "Lcom/nuance/swype/input/DrawBufferManager<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "addObjectToCache...key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...value: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 84
    if-lez p1, :cond_22

    if-nez p2, :cond_23

    .line 92
    :cond_22
    :goto_22
    return-void

    .line 89
    :cond_23
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/DrawBufferManager;->getObjectFromCache(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method public evictAll()V
    .registers 5

    .prologue
    .line 106
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager;, "Lcom/nuance/swype/input/DrawBufferManager<TT;>;"
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "evictAll..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_17

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 110
    :cond_17
    return-void
.end method

.method public getObjectFromCache(I)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager;, "Lcom/nuance/swype/input/DrawBufferManager<TT;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-nez v0, :cond_6

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public removeObjectFromCache(I)V
    .registers 6
    .param p1, "key"    # I

    .prologue
    .line 95
    .local p0, "this":Lcom/nuance/swype/input/DrawBufferManager;, "Lcom/nuance/swype/input/DrawBufferManager<TT;>;"
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "removeObjectFromCache...key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 96
    if-gtz p1, :cond_18

    .line 104
    :cond_17
    :goto_17
    return-void

    .line 101
    :cond_18
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method
