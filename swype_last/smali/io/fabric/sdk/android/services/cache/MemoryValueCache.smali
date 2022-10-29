.class public final Lio/fabric/sdk/android/services/cache/MemoryValueCache;
.super Lio/fabric/sdk/android/services/cache/AbstractValueCache;
.source "MemoryValueCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/cache/AbstractValueCache",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    .local p0, "this":Lio/fabric/sdk/android/services/cache/MemoryValueCache;, "Lio/fabric/sdk/android/services/cache/MemoryValueCache<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;-><init>(B)V

    .line 11
    return-void
.end method

.method private constructor <init>(B)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lio/fabric/sdk/android/services/cache/MemoryValueCache;, "Lio/fabric/sdk/android/services/cache/MemoryValueCache<TT;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/cache/AbstractValueCache;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected final cacheValue$127ac70f(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lio/fabric/sdk/android/services/cache/MemoryValueCache;, "Lio/fabric/sdk/android/services/cache/MemoryValueCache<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/cache/MemoryValueCache;->value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method protected final getCached$dc0f261()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lio/fabric/sdk/android/services/cache/MemoryValueCache;, "Lio/fabric/sdk/android/services/cache/MemoryValueCache<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/cache/MemoryValueCache;->value:Ljava/lang/Object;

    return-object v0
.end method
