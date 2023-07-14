.class public Lcom/nuance/swype/input/emoji/EmojiCacheManager;
.super Ljava/lang/Object;
.source "EmojiCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final bufferCache:Lcom/nuance/android/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/android/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "EmojiCacheManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->cacheSize:I

    .line 25
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "EmojiCacheManager...object created>>>>>>: "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 26
    new-instance v0, Lcom/nuance/android/util/LruCache;

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->cacheSize:I

    invoke-direct {v0, v1}, Lcom/nuance/android/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    .line 27
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/EmojiCacheManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiCacheManager()Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addObjectToCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "addObjectToCache...key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...value: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public evictAll()V
    .locals 4

    .prologue
    .line 64
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<TK;TV;>;"
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "evictAll..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 68
    :cond_0
    return-void
.end method

.method public getObjectFromCache(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeObjectFromCache(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "removeObjectFromCache...key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 54
    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/nuance/android/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<TK;TV;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->bufferCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
