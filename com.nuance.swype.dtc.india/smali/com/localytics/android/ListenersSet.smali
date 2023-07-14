.class Lcom/localytics/android/ListenersSet;
.super Ljava/lang/Object;
.source "ListenersSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/ListenersSet$1;,
        Lcom/localytics/android/ListenersSet$ListenersProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDevListenerStrong:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDevListenerWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mListenersSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mProxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/localytics/android/ListenersSet;, "Lcom/localytics/android/ListenersSet<TT;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerWeak:Ljava/lang/ref/WeakReference;

    .line 22
    iput-object v3, p0, Lcom/localytics/android/ListenersSet;->mDevListenerStrong:Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/localytics/android/ListenersSet$ListenersProxy;

    invoke-direct {v2, p0, v3}, Lcom/localytics/android/ListenersSet$ListenersProxy;-><init>(Lcom/localytics/android/ListenersSet;Lcom/localytics/android/ListenersSet$1;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/ListenersSet;->mProxy:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/ListenersSet;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/ListenersSet;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method declared-synchronized add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/localytics/android/ListenersSet;, "Lcom/localytics/android/ListenersSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDevListener()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/localytics/android/ListenersSet;, "Lcom/localytics/android/ListenersSet<TT;>;"
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerStrong:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerStrong:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getProxy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/localytics/android/ListenersSet;, "Lcom/localytics/android/ListenersSet<TT;>;"
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mProxy:Ljava/lang/Object;

    return-object v0
.end method

.method declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/localytics/android/ListenersSet;, "Lcom/localytics/android/ListenersSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDevListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/localytics/android/ListenersSet;, "Lcom/localytics/android/ListenersSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/localytics/android/ListenersSet;->getDevListener()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerWeak:Ljava/lang/ref/WeakReference;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerStrong:Ljava/lang/Object;

    .line 62
    :goto_0
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/localytics/android/ListenersSet;->mListenersSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/localytics/android/ListenersSet;->mDevListenerStrong:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/localytics/android/ListenersSet;->mDevListenerWeak:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
