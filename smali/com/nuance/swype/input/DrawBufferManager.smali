.class public Lcom/nuance/swype/input/DrawBufferManager;
.super Ljava/lang/Object;
.source "DrawBufferManager.java"


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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "DrawBufferManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/nuance/swype/input/DrawBufferManager$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/DrawBufferManager$1;-><init>(Lcom/nuance/swype/input/DrawBufferManager;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxCount"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/nuance/swype/input/DrawBufferManager$2;

    invoke-direct {v0, p0, p2}, Lcom/nuance/swype/input/DrawBufferManager$2;-><init>(Lcom/nuance/swype/input/DrawBufferManager;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    .line 59
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/DrawBufferManager;
    .locals 1
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
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 70
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "addObjectToCache...key: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "...value: "

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/DrawBufferManager;->getObjectFromCache(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public evictAll()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "evictAll..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 97
    :cond_0
    return-void
.end method

.method public getObjectFromCache(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "getObjectFromCache...key: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeObjectFromCache(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/nuance/swype/input/DrawBufferManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "removeObjectFromCache...key: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    if-gtz p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/DrawBufferManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
