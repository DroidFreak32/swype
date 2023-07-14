.class Lcom/localytics/android/ListenersSet$ListenersProxy;
.super Ljava/lang/Object;
.source "ListenersSet.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ListenersSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenersProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/ListenersSet;


# direct methods
.method private constructor <init>(Lcom/localytics/android/ListenersSet;)V
    .locals 0

    .prologue
    .line 74
    .local p0, "this":Lcom/localytics/android/ListenersSet$ListenersProxy;, "Lcom/localytics/android/ListenersSet<TT;>.ListenersProxy;"
    iput-object p1, p0, Lcom/localytics/android/ListenersSet$ListenersProxy;->this$0:Lcom/localytics/android/ListenersSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/ListenersSet;Lcom/localytics/android/ListenersSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/localytics/android/ListenersSet;
    .param p2, "x1"    # Lcom/localytics/android/ListenersSet$1;

    .prologue
    .line 74
    .local p0, "this":Lcom/localytics/android/ListenersSet$ListenersProxy;, "Lcom/localytics/android/ListenersSet<TT;>.ListenersProxy;"
    invoke-direct {p0, p1}, Lcom/localytics/android/ListenersSet$ListenersProxy;-><init>(Lcom/localytics/android/ListenersSet;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/localytics/android/ListenersSet$ListenersProxy;, "Lcom/localytics/android/ListenersSet<TT;>.ListenersProxy;"
    iget-object v5, p0, Lcom/localytics/android/ListenersSet$ListenersProxy;->this$0:Lcom/localytics/android/ListenersSet;

    monitor-enter v5

    .line 82
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/localytics/android/ListenersSet$ListenersProxy;->this$0:Lcom/localytics/android/ListenersSet;

    invoke-static {v4}, Lcom/localytics/android/ListenersSet;->access$100(Lcom/localytics/android/ListenersSet;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v3, "strongListeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "listener":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "%s method on listener threw exception"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljava/lang/Object;, "TT;"
    .end local v3    # "strongListeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 96
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "strongListeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method
