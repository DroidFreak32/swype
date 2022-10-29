.class public abstract Lio/fabric/sdk/android/services/cache/AbstractValueCache;
.super Ljava/lang/Object;
.source "AbstractValueCache.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueCache",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final childCache:Lio/fabric/sdk/android/services/cache/ValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/ValueCache",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract cacheValue$127ac70f(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final declared-synchronized get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/cache/ValueLoader",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lio/fabric/sdk/android/services/cache/AbstractValueCache;, "Lio/fabric/sdk/android/services/cache/AbstractValueCache<TT;>;"
    .local p2, "loader":Lio/fabric/sdk/android/services/cache/ValueLoader;, "Lio/fabric/sdk/android/services/cache/ValueLoader<TT;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->getCached$dc0f261()Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_24

    .line 22
    iget-object v1, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->childCache:Lio/fabric/sdk/android/services/cache/ValueCache;

    invoke-interface {v1, p1, p2}, Lio/fabric/sdk/android/services/cache/ValueCache;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 1050
    :goto_11
    if-nez v0, :cond_21

    .line 1051
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_19

    .line 19
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1

    .line 22
    .restart local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_1c
    :try_start_1c
    invoke-interface {p2, p1}, Lio/fabric/sdk/android/services/cache/ValueLoader;->load(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    .line 1053
    :cond_21
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;->cacheValue$127ac70f(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    .line 26
    :cond_24
    monitor-exit p0

    return-object v0
.end method

.method protected abstract getCached$dc0f261()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
