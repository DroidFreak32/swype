.class public Lcom/flurry/sdk/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/ld;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field private final g:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/jq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/flurry/sdk/jq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jq$1;-><init>(Lcom/flurry/sdk/jq;)V

    iput-object v0, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/ka;

    .line 57
    iput-wide v2, p0, Lcom/flurry/sdk/jq;->c:J

    .line 58
    iput-wide v2, p0, Lcom/flurry/sdk/jq;->d:J

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/jq;->e:J

    .line 60
    iput-wide v2, p0, Lcom/flurry/sdk/jq;->f:J

    .line 62
    iput-wide v2, p0, Lcom/flurry/sdk/jq;->h:J

    .line 73
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 75
    new-instance v0, Lcom/flurry/sdk/jq$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jq$2;-><init>(Lcom/flurry/sdk/jq;)V

    iput-object v0, p0, Lcom/flurry/sdk/jq;->k:Ljava/util/Map;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jq;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/jq;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/jq;)Lcom/flurry/sdk/ka;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/jq;->g:Lcom/flurry/sdk/ka;

    return-object v0
.end method

.method public static b()V
    .registers 0

    .prologue
    .line 130
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 7

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    .line 1117
    iget-wide v0, v0, Lcom/flurry/sdk/lf;->a:J

    .line 120
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 121
    iget-wide v2, p0, Lcom/flurry/sdk/jq;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/jq;->f:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 123
    :cond_18
    monitor-exit p0

    return-void

    .line 117
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .registers 5

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/jq;->d:J

    sub-long/2addr v0, v2

    .line 155
    iget-wide v2, p0, Lcom/flurry/sdk/jq;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    :goto_e
    iput-wide v0, p0, Lcom/flurry/sdk/jq;->h:J

    .line 157
    iget-wide v0, p0, Lcom/flurry/sdk/jq;->h:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    monitor-exit p0

    return-wide v0

    .line 155
    :cond_14
    :try_start_14
    iget-wide v0, p0, Lcom/flurry/sdk/jq;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/jq;->h:J
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_e

    .line 154
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jq;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jq;->j:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jq;->k:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
