.class public Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizationAid"
.end annotation


# instance fields
.field public final readLock:Ljava/util/concurrent/locks/Lock;

.field public unmounting:Z

.field public final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->unmounting:Z

    .line 513
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 514
    .local v0, "readWriteLock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 515
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 516
    return-void
.end method
