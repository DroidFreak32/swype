.class Lbolts/CancellationTokenSource$1;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    # getter for: Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lbolts/CancellationTokenSource;->access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_7
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    const/4 v2, 0x0

    # setter for: Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0, v2}, Lbolts/CancellationTokenSource;->access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 115
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 116
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->cancel()V

    .line 117
    return-void

    .line 115
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method
