.class public final Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;
.super Ljava/lang/Object;
.source "MessageProvider.java"

# interfaces
.implements Lcom/fsck/k9/provider/MessageProvider$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThrottlingQueryHandler"
.end annotation


# instance fields
.field private mDelegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

.field private synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V
    .locals 0
    .param p2, "delegate"    # Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->mDelegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .line 820
    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->mDelegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    invoke-interface {v0}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 835
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->mDelegate:Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 838
    .local v6, "cursor":Landroid/database/Cursor;
    instance-of v0, v6, Landroid/database/CrossProcessCursor;

    if-nez v0, :cond_0

    .line 840
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported cursor, returning null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v8, 0x0

    .line 872
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 844
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v8, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;

    check-cast v6, Landroid/database/CrossProcessCursor;

    .end local v6    # "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {v8, v6, v0}, Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;-><init>(Landroid/database/CrossProcessCursor;Ljava/util/concurrent/Semaphore;)V

    .line 847
    .local v8, "wrapped":Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 850
    .local v7, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;>;"
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    iget-object v0, v0, Lcom/fsck/k9/provider/MessageProvider;->mScheduledPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;

    invoke-direct {v1, v7}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler$1;-><init>(Ljava/lang/ref/WeakReference;)V

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
