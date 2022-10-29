.class public Lcom/flurry/sdk/il;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field static d:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Lcom/flurry/sdk/il;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/String;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:J

.field private j:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/flurry/sdk/il;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/flurry/sdk/il$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/il$1;-><init>(Lcom/flurry/sdk/il;)V

    iput-object v0, p0, Lcom/flurry/sdk/il;->j:Lcom/flurry/sdk/ka;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/il;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    sget v0, Lcom/flurry/sdk/il;->b:I

    if-nez v0, :cond_31

    .line 72
    const v0, 0x927c0

    sput v0, Lcom/flurry/sdk/il;->b:I

    .line 75
    :cond_31
    sget v0, Lcom/flurry/sdk/il;->a:I

    if-nez v0, :cond_39

    .line 76
    const/16 v0, 0xf

    sput v0, Lcom/flurry/sdk/il;->a:I

    .line 1491
    :cond_39
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1491
    const-string/jumbo v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1492
    const-string/jumbo v1, "timeToSendNextPulseReport"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    .line 81
    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    if-nez v0, :cond_58

    .line 82
    invoke-static {}, Lcom/flurry/sdk/il;->m()V

    .line 85
    :cond_58
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/il;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 86
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/il;
    .registers 2

    .prologue
    .line 89
    const-class v1, Lcom/flurry/sdk/il;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    if-nez v0, :cond_e

    .line 90
    new-instance v0, Lcom/flurry/sdk/il;

    invoke-direct {v0}, Lcom/flurry/sdk/il;-><init>()V

    sput-object v0, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;

    .line 93
    :cond_e
    sget-object v0, Lcom/flurry/sdk/il;->f:Lcom/flurry/sdk/il;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/il;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    .prologue
    .line 106
    sput p0, Lcom/flurry/sdk/il;->a:I

    .line 107
    return-void
.end method

.method public static b(I)V
    .registers 1

    .prologue
    .line 110
    sput p0, Lcom/flurry/sdk/il;->b:I

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/il;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/flurry/sdk/il;->k()V

    return-void
.end method

.method public static c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    return-object v0
.end method

.method private declared-synchronized c(I)V
    .registers 6

    .prologue
    .line 188
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Removing report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from PulseCallbackManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_29

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/flurry/sdk/ij;)V
    .registers 6

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/flurry/sdk/ij;->d:Z

    .line 346
    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->a()V

    .line 349
    sget-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 25088
    iget-object v0, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    invoke-virtual {v0}, Lcom/flurry/sdk/ii;->c()V

    .line 354
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26072
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 26124
    iget-object v3, v3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 27084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " report to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28076
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 28116
    iget-object v3, v3, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " finalized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V

    .line 360
    invoke-direct {p0}, Lcom/flurry/sdk/il;->g()V

    .line 361
    return-void
.end method

.method public static e()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    if-nez v0, :cond_7

    .line 334
    invoke-static {}, Lcom/flurry/sdk/il;->m()V

    .line 337
    :cond_7
    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 339
    return-object v0
.end method

.method static synthetic f()V
    .registers 0

    .prologue
    .line 31
    invoke-static {}, Lcom/flurry/sdk/il;->m()V

    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 365
    invoke-static {}, Lcom/flurry/sdk/il;->h()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/flurry/sdk/il;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 366
    :cond_c
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string/jumbo v2, "Threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/flurry/sdk/il;->j()V

    .line 370
    :cond_18
    return-void
.end method

.method private static h()Z
    .registers 2

    .prologue
    .line 387
    sget-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    sget v1, Lcom/flurry/sdk/il;->a:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private i()Z
    .registers 5

    .prologue
    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/il;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private j()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    invoke-static {}, Lcom/flurry/sdk/il;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 404
    invoke-virtual {v0}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ii;

    .line 405
    iget-object v1, v1, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 406
    :cond_31
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 407
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ij;

    .line 410
    iget-boolean v8, v1, Lcom/flurry/sdk/ij;->j:Z

    if-eqz v8, :cond_45

    .line 411
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    .line 416
    :cond_45
    iget-object v8, v1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    sget-object v9, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    invoke-virtual {v8, v9}, Lcom/flurry/sdk/ik;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 424
    iput-boolean v4, v1, Lcom/flurry/sdk/ij;->j:Z

    move v2, v4

    goto :goto_31

    .line 428
    :cond_53
    if-eqz v2, :cond_a

    .line 429
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/im;)V

    goto :goto_a

    .line 434
    :cond_5d
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/in;->b()V

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/il;->b:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    .line 438
    invoke-direct {p0}, Lcom/flurry/sdk/il;->k()V

    .line 28454
    invoke-static {}, Lcom/flurry/sdk/il;->c()Ljava/util/List;

    move-result-object v5

    move v4, v3

    .line 28457
    :goto_76
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d0

    .line 28458
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/flurry/sdk/im;

    .line 28461
    invoke-virtual {v1}, Lcom/flurry/sdk/im;->b()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 29076
    iget v0, v1, Lcom/flurry/sdk/im;->b:I

    .line 28462
    invoke-direct {p0, v0}, Lcom/flurry/sdk/il;->c(I)V

    .line 28457
    :cond_8e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_76

    .line 28466
    :cond_92
    invoke-virtual {v1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v6

    move v2, v3

    .line 28469
    :goto_97
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8e

    .line 28470
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ii;

    .line 29127
    iget-boolean v7, v0, Lcom/flurry/sdk/ii;->l:Z

    .line 28472
    if-eqz v7, :cond_b6

    .line 30097
    iget-object v7, v1, Lcom/flurry/sdk/im;->d:Ljava/util/Map;

    .line 30102
    iget-wide v8, v0, Lcom/flurry/sdk/ii;->b:J

    .line 28473
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28469
    :cond_b2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_97

    .line 28478
    :cond_b6
    iget-object v0, v0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 28479
    :cond_bc
    :goto_bc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 28480
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ij;

    .line 28482
    iget-boolean v0, v0, Lcom/flurry/sdk/ij;->j:Z

    if-eqz v0, :cond_bc

    .line 28483
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_bc

    .line 444
    :cond_d0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 446
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V

    .line 447
    return-void
.end method

.method private k()V
    .registers 5

    .prologue
    .line 496
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 31097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 496
    const-string/jumbo v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "timeToSendNextPulseReport"

    iget-wide v2, p0, Lcom/flurry/sdk/il;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 501
    return-void
.end method

.method private declared-synchronized l()I
    .registers 2

    .prologue
    .line 504
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/il;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static m()V
    .registers 5

    .prologue
    .line 508
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 32097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 508
    const-string/jumbo v2, ".yflurryanongoingpulsecallbackreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".yflurryanongoingpulsecallbackreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/il$6;

    invoke-direct {v4}, Lcom/flurry/sdk/il$6;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    sput-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/jy;

    .line 514
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/ij;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    .line 205
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_3
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6072
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 6124
    iget-object v3, v3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 7084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " report sent successfully to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8076
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 8116
    iget-object v3, v3, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/flurry/sdk/ik;->a:Lcom/flurry/sdk/ik;

    iput-object v0, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 210
    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 212
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V

    .line 215
    invoke-static {}, Lcom/flurry/sdk/kf;->c()I

    move-result v0

    if-gt v0, v4, :cond_4e

    invoke-static {}, Lcom/flurry/sdk/kf;->d()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 216
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$4;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/il$4;-><init>(Lcom/flurry/sdk/il;Lcom/flurry/sdk/ij;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    .line 224
    :cond_4e
    monitor-exit p0

    return-void

    .line 205
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/im;)V
    .registers 6

    .prologue
    .line 115
    monitor-enter p0

    if-nez p1, :cond_e

    .line 116
    const/4 v0, 0x3

    :try_start_4
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string/jumbo v2, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_82

    .line 145
    :cond_c
    monitor-exit p0

    return-void

    .line 120
    :cond_e
    const/4 v0, 0x3

    :try_start_f
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Adding and sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3084
    iget-object v3, p1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " report to PulseCallbackManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c

    .line 125
    iget-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_55

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/il;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    .line 128
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/il$2;-><init>(Lcom/flurry/sdk/il;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 136
    :cond_55
    invoke-direct {p0}, Lcom/flurry/sdk/il;->l()I

    move-result v0

    .line 3113
    iput v0, p1, Lcom/flurry/sdk/im;->b:I

    .line 138
    sget-object v1, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 142
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 4094
    iget-object v2, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kp;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ih;->b(Lcom/flurry/sdk/kp;)V
    :try_end_81
    .catchall {:try_start_f .. :try_end_81} :catchall_82

    goto :goto_6c

    .line 115
    :catchall_82
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    monitor-enter p0

    :try_start_3
    iget v2, p1, Lcom/flurry/sdk/ij;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/flurry/sdk/ij;->h:I

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/ij;->i:J

    .line 9056
    iget-object v2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    iget v3, p1, Lcom/flurry/sdk/ij;->h:I

    .line 9098
    iget v2, v2, Lcom/flurry/sdk/ii;->d:I

    if-le v3, v2, :cond_5a

    move v2, v0

    .line 232
    :goto_18
    if-nez v2, :cond_20

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 233
    :cond_20
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Maximum number of redirects attempted. Aborting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10072
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 10124
    iget-object v4, v4, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 11084
    iget-object v4, v4, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " report to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 12076
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 12116
    iget-object v4, v4, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    iput-object v0, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 239
    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 241
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_89

    move v0, v1

    .line 257
    :goto_58
    monitor-exit p0

    return v0

    :cond_5a
    move v2, v1

    .line 9098
    goto :goto_18

    .line 247
    :cond_5c
    const/4 v1, 0x3

    :try_start_5d
    iget-object v2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13076
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 13116
    iget-object v4, v4, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " redirecting to url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14084
    iget-object v1, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 15067
    iput-object p2, v1, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V
    :try_end_88
    .catchall {:try_start_5d .. :try_end_88} :catchall_89

    goto :goto_58

    .line 229
    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ij;)V
    .registers 6

    .prologue
    .line 262
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15072
    iget-object v3, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 15124
    iget-object v3, v3, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 16084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/flurry/sdk/ik;->b:Lcom/flurry/sdk/ik;

    iput-object v0, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/ij;->i:J

    .line 267
    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 270
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_31

    .line 271
    monitor-exit p0

    return-void

    .line 262
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/im;)V
    .registers 7

    .prologue
    .line 150
    monitor-enter p0

    if-nez p1, :cond_e

    .line 151
    const/4 v0, 0x3

    :try_start_4
    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string/jumbo v2, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_76

    .line 184
    :goto_c
    monitor-exit p0

    return-void

    .line 155
    :cond_e
    :try_start_e
    iget-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/il;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/il;->i:J

    .line 158
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/il$3;-><init>(Lcom/flurry/sdk/il;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 167
    :cond_2c
    invoke-direct {p0}, Lcom/flurry/sdk/il;->l()I

    move-result v0

    .line 4113
    iput v0, p1, Lcom/flurry/sdk/im;->b:I

    .line 169
    sget-object v1, Lcom/flurry/sdk/il;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ii;

    .line 173
    iget-object v0, v0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    sget-object v2, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4373
    invoke-static {}, Lcom/flurry/sdk/il;->h()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 4374
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string/jumbo v4, "Max Callback Attempts threshold reached. Sending callback logging reports"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4375
    invoke-direct {p0}, Lcom/flurry/sdk/il;->j()V
    :try_end_75
    .catchall {:try_start_e .. :try_end_75} :catchall_76

    goto :goto_55

    .line 150
    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4380
    :cond_79
    :try_start_79
    invoke-direct {p0}, Lcom/flurry/sdk/il;->i()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 4381
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    const-string/jumbo v2, "Time threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4382
    invoke-direct {p0}, Lcom/flurry/sdk/il;->j()V

    .line 182
    :cond_8b
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5084
    iget-object v3, p1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " report to PulseCallbackManager. Number of stored completed callbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_79 .. :try_end_b4} :catchall_76

    goto/16 :goto_c
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    monitor-enter p0

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/ik;->c:Lcom/flurry/sdk/ik;

    iput-object v2, p1, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/ij;->i:J

    .line 279
    if-nez p2, :cond_12

    const-string/jumbo p2, ""

    :cond_12
    iput-object p2, p1, Lcom/flurry/sdk/ij;->g:Ljava/lang/String;

    .line 17052
    iget-object v2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 18026
    iget v3, v2, Lcom/flurry/sdk/kp;->p:I

    .line 17094
    iget v2, v2, Lcom/flurry/sdk/ii;->c:I

    if-lt v3, v2, :cond_4f

    move v2, v1

    .line 283
    :goto_1d
    if-eqz v2, :cond_51

    .line 284
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18072
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 18124
    iget-object v4, v4, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 19084
    iget-object v4, v4, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " report to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 20076
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 20116
    iget-object v4, v4, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_80

    .line 314
    :goto_4d
    monitor-exit p0

    return v0

    :cond_4f
    move v2, v0

    .line 17094
    goto :goto_1d

    .line 21080
    :cond_51
    :try_start_51
    iget-object v2, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 22038
    iget-object v2, v2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 292
    invoke-static {v2}, Lcom/flurry/sdk/ly;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 293
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22080
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 23038
    iget-object v4, v4, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/flurry/sdk/il;->c(Lcom/flurry/sdk/ij;)V
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_80

    goto :goto_4d

    .line 277
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    .line 302
    :cond_83
    const/4 v0, 0x3

    :try_start_84
    iget-object v2, p0, Lcom/flurry/sdk/il;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Retrying callback to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23072
    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 23124
    iget-object v4, v4, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 24084
    iget-object v4, v4, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 24111
    iget-wide v4, v4, Lcom/flurry/sdk/ii;->g:J

    .line 303
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->a()V

    .line 309
    sget-object v0, Lcom/flurry/sdk/il;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 310
    invoke-virtual {p0}, Lcom/flurry/sdk/il;->d()V

    .line 311
    invoke-direct {p0}, Lcom/flurry/sdk/il;->g()V
    :try_end_c6
    .catchall {:try_start_84 .. :try_end_c6} :catchall_80

    move v0, v1

    goto :goto_4d
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 318
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/il$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/il$5;-><init>(Lcom/flurry/sdk/il;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method
