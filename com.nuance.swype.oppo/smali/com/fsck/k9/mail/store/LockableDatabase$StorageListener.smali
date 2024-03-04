.class Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;
.super Ljava/lang/Object;
.source "LockableDatabase.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/StorageManager$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LockableDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LockableDatabase;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mail/store/LockableDatabase;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/LockableDatabase;Lcom/fsck/k9/mail/store/LockableDatabase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/store/LockableDatabase;
    .param p2, "x1"    # Lcom/fsck/k9/mail/store/LockableDatabase$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;-><init>(Lcom/fsck/k9/mail/store/LockableDatabase;)V

    return-void
.end method


# virtual methods
.method public onMount(Ljava/lang/String;)V
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->access$000(Lcom/fsck/k9/mail/store/LockableDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LockableDatabase: Opening DB "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->access$100(Lcom/fsck/k9/mail/store/LockableDatabase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to mount event on StorageProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->access$300(Lcom/fsck/k9/mail/store/LockableDatabase;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->openOrCreateDataspace(Landroid/app/Application;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    const-string v1, "k9"

    const-string v2, "Unable to open DB on mount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUnmount(Ljava/lang/String;)V
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->access$000(Lcom/fsck/k9/mail/store/LockableDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LockableDatabase: Closing DB "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->access$100(Lcom/fsck/k9/mail/store/LockableDatabase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to unmount event on StorageProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->lockWrite()V
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->access$200(Lcom/fsck/k9/mail/store/LockableDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V
    :try_end_2
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    const-string v1, "k9"

    const-string v2, "Unable to writelock on unmount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v0    # "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LockableDatabase$StorageListener;->this$0:Lcom/fsck/k9/mail/store/LockableDatabase;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->unlockWrite()V

    throw v1
    :try_end_3
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_3 .. :try_end_3} :catch_0
.end method
