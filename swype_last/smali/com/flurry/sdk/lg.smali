.class final Lcom/flurry/sdk/lg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lg$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/flurry/sdk/lg$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    if-eqz v0, :cond_d

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    .line 49
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lg$a;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 50
    monitor-exit p0

    return-void

    .line 44
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 34
    monitor-enter p0

    .line 1053
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    if-eqz v0, :cond_25

    .line 1054
    const/4 v0, 0x1

    .line 34
    :goto_6
    if-eqz v0, :cond_b

    .line 35
    invoke-virtual {p0}, Lcom/flurry/sdk/lg;->a()V

    .line 38
    :cond_b
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "FlurrySessionTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    .line 39
    new-instance v0, Lcom/flurry/sdk/lg$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lg$a;-><init>(Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lg$a;

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lg$a;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_27

    .line 41
    monitor-exit p0

    return-void

    .line 1057
    :cond_25
    const/4 v0, 0x0

    goto :goto_6

    .line 34
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method
