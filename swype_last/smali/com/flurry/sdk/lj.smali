.class public Lcom/flurry/sdk/lj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lj$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/lj$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lj;->a:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lj;->b:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/lj;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V
    .registers 5

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 81
    :cond_9
    if-eqz p2, :cond_7

    .line 85
    :try_start_b
    iget-object v0, p0, Lcom/flurry/sdk/lj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    if-nez v0, :cond_1a

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 90
    :cond_1a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/flurry/sdk/lj;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_7

    .line 77
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_47

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    :cond_7
    monitor-exit p0

    return-void

    .line 45
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/flurry/sdk/lj;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1060
    if-eq p2, v0, :cond_19

    if-eqz p2, :cond_4a

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_19
    const/4 v0, 0x1

    .line 47
    :goto_1a
    if-nez v0, :cond_7

    .line 49
    if-nez p2, :cond_4c

    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/lj;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :goto_23
    iget-object v0, p0, Lcom/flurry/sdk/lj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1066
    iget-object v0, p0, Lcom/flurry/sdk/lj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/lj$a;

    .line 1067
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/lj$a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_47

    goto :goto_37

    .line 41
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1060
    :cond_4a
    const/4 v0, 0x0

    goto :goto_1a

    .line 52
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/flurry/sdk/lj;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_47

    goto :goto_23
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 96
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_20

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 109
    :goto_9
    monitor-exit p0

    return v0

    .line 100
    :cond_b
    if-nez p2, :cond_f

    move v0, v1

    .line 101
    goto :goto_9

    .line 104
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/flurry/sdk/lj;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    if-nez v0, :cond_1b

    move v0, v1

    .line 106
    goto :goto_9

    .line 109
    :cond_1b
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_20

    move-result v0

    goto :goto_9

    .line 96
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
