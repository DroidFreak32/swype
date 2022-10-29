.class public Lcom/flurry/sdk/kt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field private static final d:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/kt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    .line 26
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kt;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kt;->b:Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/flurry/sdk/kt;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->b(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private declared-synchronized a()V
    .registers 7

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 4273
    new-instance v1, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 5097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 4273
    iget-object v3, p0, Lcom/flurry/sdk/kt;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, ".YFlurrySenderIndex.info."

    const/4 v4, 0x1

    new-instance v5, Lcom/flurry/sdk/kt$4;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/kt$4;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 4280
    invoke-virtual {v1}, Lcom/flurry/sdk/jy;->b()Z

    .line 143
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 144
    iget-object v1, p0, Lcom/flurry/sdk/kt;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/kt;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 146
    :cond_3a
    monitor-exit p0

    return-void

    .line 139
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 339
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 341
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Saving Index File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 14097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 342
    invoke-static {p1}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/flurry/sdk/jy;

    .line 345
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 15097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 345
    invoke-static {p1}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v3, Lcom/flurry/sdk/kt$7;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/kt$7;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v1, v0, p3, v2, v3}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    new-instance v4, Lcom/flurry/sdk/ku;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/ku;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6a

    goto :goto_55

    .line 339
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_6d
    :try_start_6d
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    .line 360
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;[B)V
    .registers 8

    .prologue
    .line 308
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 310
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Saving Block File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 10097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 310
    invoke-static {p1}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 11097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 313
    invoke-static {p1}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".yflurrydatasenderblock."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/kt$6;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/kt$6;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 322
    new-instance v1, Lcom/flurry/sdk/ks;

    invoke-direct {v1, p2}, Lcom/flurry/sdk/ks;-><init>([B)V

    .line 323
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 324
    monitor-exit p0

    return-void

    .line 308
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Lcom/flurry/sdk/kt;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 57
    invoke-direct {p0, p1}, Lcom/flurry/sdk/kt;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->c(Ljava/lang/String;)V

    goto :goto_25

    .line 67
    :cond_35
    invoke-static {p1}, Lcom/flurry/sdk/kt;->h(Ljava/lang/String;)V

    .line 91
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 71
    :cond_52
    new-instance v0, Lcom/flurry/sdk/jy;

    .line 72
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 1097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 72
    iget-object v3, p0, Lcom/flurry/sdk/kt;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/kt$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/kt$1;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 80
    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    if-nez v0, :cond_7e

    .line 82
    sget-object v0, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v1, "New main file also not found. returning.."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_7d
    return-void

    .line 86
    :cond_7e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ku;

    .line 2070
    iget-object v0, v0, Lcom/flurry/sdk/ku;->a:Ljava/lang/String;

    .line 87
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82
.end method

.method private c(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v8, 0x5

    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/kt;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 104
    if-nez v1, :cond_10

    .line 105
    sget-object v0, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v1, "No old file to replace"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_f
    :goto_f
    return-void

    .line 109
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/flurry/sdk/kt;->k(Ljava/lang/String;)[B

    move-result-object v3

    .line 111
    if-nez v3, :cond_30

    .line 112
    const/4 v0, 0x6

    sget-object v3, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v4, "File does not exist"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 117
    :cond_30
    invoke-direct {p0, v0, v3}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;[B)V

    .line 2421
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 2423
    sget-object v3, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Deleting  block File for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " file name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v5

    .line 3097
    iget-object v5, v5, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 2423
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ".flurrydatasenderblock."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2424
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 4097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 2424
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".flurrydatasenderblock."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 2425
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2426
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 2427
    sget-object v4, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Found file for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ". Deleted - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 124
    :cond_b6
    if-eqz v1, :cond_f

    .line 127
    const-string/jumbo v0, ".YFlurrySenderIndex.info."

    invoke-direct {p0, p1, v1, v0}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 130
    invoke-static {p1}, Lcom/flurry/sdk/kt;->h(Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".YFlurrySenderIndex.info."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 197
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 6097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 197
    invoke-static {p1}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".yflurrydatasenderblock."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/kt$2;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/kt$2;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 204
    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->b()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized f(Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 240
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 242
    new-instance v1, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 7097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 242
    invoke-static {p1}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, ".YFlurrySenderIndex.info."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/kt$3;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/kt$3;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_6d

    .line 252
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "discardOutdatedBlocksForDataKey: notSentBlocks = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->e(Ljava/lang/String;)Z

    .line 256
    const/4 v3, 0x4

    sget-object v4, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "discardOutdatedBlocksForDataKey: removed block = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6a

    goto :goto_44

    .line 240
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 261
    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v1}, Lcom/flurry/sdk/jy;->b()Z

    move-result v0

    .line 266
    invoke-direct {p0}, Lcom/flurry/sdk/kt;->a()V
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_6a

    .line 268
    monitor-exit p0

    return v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 286
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reading Index File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 8097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 286
    invoke-static {p1}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Lcom/flurry/sdk/jy;

    .line 289
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 9097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 289
    invoke-static {p1}, Lcom/flurry/sdk/kt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".YFlurrySenderIndex.info."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/kt$5;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/kt$5;-><init>(Lcom/flurry/sdk/kt;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 297
    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ku;

    .line 10070
    iget-object v0, v0, Lcom/flurry/sdk/ku;->a:Ljava/lang/String;

    .line 301
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_70

    goto :goto_5e

    .line 284
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    .line 304
    :cond_73
    monitor-exit p0

    return-object v1
.end method

.method private static h(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 327
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 329
    sget-object v0, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Deleting Index File for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 12097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".FlurrySenderIndex.info."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 13097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ".FlurrySenderIndex.info."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 334
    sget-object v1, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Found file for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Deleted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_82
    return-void
.end method

.method private declared-synchronized i(Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 16097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ".FlurrySenderIndex.info."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 365
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isOldIndexFilePresent: for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3f

    move-result v0

    monitor-exit p0

    return v0

    .line 364
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 370
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 372
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Reading Index File for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " file name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    .line 17097
    iget-object v4, v4, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ".FlurrySenderIndex.info."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 18097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".FlurrySenderIndex.info."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 378
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Reading Index File for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Found file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_2 .. :try_end_7d} :catchall_e9

    .line 382
    :try_start_7d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 383
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_87} :catch_d7
    .catchall {:try_start_7d .. :try_end_87} :catchall_ec

    .line 385
    :try_start_87
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_ff
    .catchall {:try_start_87 .. :try_end_8a} :catchall_fd

    move-result v3

    .line 386
    if-nez v3, :cond_92

    .line 411
    :try_start_8d
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_e9

    .line 417
    :goto_90
    monitor-exit p0

    return-object v1

    .line 390
    :cond_92
    :try_start_92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_97} :catch_ff
    .catchall {:try_start_92 .. :try_end_97} :catchall_fd

    .line 393
    const/4 v1, 0x0

    :goto_98
    if-ge v1, v3, :cond_cf

    .line 395
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 396
    const/4 v5, 0x4

    sget-object v6, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "read iter "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dataLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    new-array v4, v4, [B

    .line 398
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 400
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 401
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 404
    :cond_cf
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_d2} :catch_104
    .catchall {:try_start_9a .. :try_end_d2} :catchall_fd

    .line 411
    :try_start_d2
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_e9

    :goto_d5
    move-object v1, v0

    .line 417
    goto :goto_90

    .line 408
    :catch_d7
    move-exception v0

    move-object v2, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 409
    :goto_dc
    const/4 v3, 0x6

    :try_start_dd
    sget-object v4, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_fd

    .line 411
    :try_start_e5
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e9

    goto :goto_d5

    .line 370
    :catchall_e9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 411
    :catchall_ec
    move-exception v0

    move-object v2, v1

    :goto_ee
    :try_start_ee
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    .line 414
    :cond_f2
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v3, "Agent cache file doesn\'t exist."

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_ee .. :try_end_fb} :catchall_e9

    move-object v0, v1

    goto :goto_d5

    .line 411
    :catchall_fd
    move-exception v0

    goto :goto_ee

    .line 408
    :catch_ff
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_dc

    :catch_104
    move-exception v1

    goto :goto_dc
.end method

.method private static k(Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 432
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 436
    sget-object v1, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reading block File for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " file name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 19097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".flurrydatasenderblock."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 20097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ".flurrydatasenderblock."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 440
    sget-object v2, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Reading Index File for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Found file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 445
    :try_start_7b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 446
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_85} :catch_9b
    .catchall {:try_start_7b .. :try_end_85} :catchall_aa

    .line 448
    :try_start_85
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_bd
    .catchall {:try_start_85 .. :try_end_88} :catchall_bb

    move-result v1

    .line 449
    if-nez v1, :cond_8f

    .line 463
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 469
    :goto_8e
    return-object v0

    .line 453
    :cond_8f
    :try_start_8f
    new-array v0, v1, [B

    .line 454
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 456
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_97} :catch_bd
    .catchall {:try_start_8f .. :try_end_97} :catchall_bb

    .line 463
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_8e

    .line 460
    :catch_9b
    move-exception v1

    move-object v2, v0

    .line 461
    :goto_9d
    const/4 v3, 0x6

    :try_start_9e
    sget-object v4, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_bb

    .line 463
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_8e

    :catchall_aa
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_ad
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    .line 466
    :cond_b1
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v3, "Agent cache file doesn\'t exist."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 463
    :catchall_bb
    move-exception v0

    goto :goto_ad

    .line 460
    :catch_bd
    move-exception v1

    goto :goto_9d
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 236
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/ks;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 150
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addBlockInfo"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5102
    iget-object v3, p1, Lcom/flurry/sdk/ks;->a:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 156
    if-nez v0, :cond_67

    .line 157
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/kt;->d:Ljava/lang/String;

    const-string/jumbo v2, "New Data Key"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 159
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 162
    :goto_35
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v3, Lcom/flurry/sdk/kt;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v0, v3, :cond_52

    .line 168
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-direct {p0, v0}, Lcom/flurry/sdk/kt;->e(Ljava/lang/String;)Z

    .line 172
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    :cond_52
    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v0, ".YFlurrySenderIndex.info."

    invoke-direct {p0, p2, v2, v0}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 190
    if-eqz v1, :cond_62

    .line 191
    invoke-direct {p0}, Lcom/flurry/sdk/kt;->a()V
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_64

    .line 193
    :cond_62
    monitor-exit p0

    return-void

    .line 150
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_67
    move-object v2, v0

    goto :goto_35
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 209
    iget-object v0, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 211
    const/4 v1, 0x0

    .line 212
    if-eqz v0, :cond_12

    .line 213
    invoke-direct {p0, p1}, Lcom/flurry/sdk/kt;->e(Ljava/lang/String;)Z

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 217
    :cond_12
    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 218
    iget-object v2, p0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v2, ".YFlurrySenderIndex.info."

    invoke-direct {p0, p2, v0, v2}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 224
    :goto_25
    return v1

    .line 221
    :cond_26
    invoke-direct {p0, p2}, Lcom/flurry/sdk/kt;->f(Ljava/lang/String;)Z

    goto :goto_25
.end method
