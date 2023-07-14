.class public final Lcom/nuance/swype/util/Callback;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Runnable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private interval:J

.field private isPending:Z

.field private final isRepeating:Z

.field private nextTime:J

.field private final runnable:Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p3, "interval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;J)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    .local p2, "runnable":Ljava/lang/Runnable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/util/Callback;->nextTime:J

    .line 24
    iput-object p1, p0, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    .line 25
    iput-object p2, p0, Lcom/nuance/swype/util/Callback;->runnable:Ljava/lang/Runnable;

    .line 26
    iput-wide p3, p0, Lcom/nuance/swype/util/Callback;->interval:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isRepeating:Z

    .line 28
    return-void
.end method

.method public static create(Ljava/lang/Runnable;)Lcom/nuance/swype/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ">(TT;)",
            "Lcom/nuance/swype/util/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "runnable":Ljava/lang/Runnable;, "TT;"
    new-instance v0, Lcom/nuance/swype/util/Callback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/nuance/swype/util/Callback;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-object v0
.end method

.method public static create$afe0100(Ljava/lang/Runnable;J)Lcom/nuance/swype/util/Callback;
    .locals 3
    .param p1, "ms"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ">(TT;J)",
            "Lcom/nuance/swype/util/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "runnable":Ljava/lang/Runnable;, "TT;"
    new-instance v0, Lcom/nuance/swype/util/Callback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/nuance/swype/util/Callback;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-object v0
.end method

.method private restart()V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 58
    invoke-direct {p0}, Lcom/nuance/swype/util/Callback;->scheduleNext()V

    .line 59
    return-void
.end method

.method private scheduleNext()V
    .locals 4

    .prologue
    .line 91
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    iget-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/util/Callback;->nextTime:J

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/nuance/swype/util/Callback;->nextTime:J

    iget-wide v2, p0, Lcom/nuance/swype/util/Callback;->interval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/swype/util/Callback;->nextTime:J

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/nuance/swype/util/Callback;->nextTime:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method


# virtual methods
.method public final restart(I)V
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    int-to-long v0, p1

    .line 1048
    iput-wide v0, p0, Lcom/nuance/swype/util/Callback;->interval:J

    .line 63
    invoke-direct {p0}, Lcom/nuance/swype/util/Callback;->restart()V

    .line 64
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    iget-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-eqz v0, :cond_1

    .line 80
    iget-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isRepeating:Z

    iput-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/util/Callback;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/util/Callback;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isRepeating:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/nuance/swype/util/Callback;->scheduleNext()V

    .line 88
    :cond_1
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    iget-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/util/Callback;->restart()V

    .line 74
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
