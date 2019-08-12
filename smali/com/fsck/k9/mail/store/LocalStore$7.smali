.class Lcom/fsck/k9/mail/store/LocalStore$7;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->pruneCachedAttachments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Z)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$7;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->val$force:Z

    if-eqz v0, :cond_0

    .line 561
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 562
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "content_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 563
    const-string v0, "attachments"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 565
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 567
    .local v8, "arr$":[Ljava/io/File;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_7

    aget-object v11, v8, v12

    .line 569
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->val$force:Z

    if-nez v0, :cond_4

    .line 573
    const/4 v9, 0x0

    .line 576
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "attachments"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "store_data"

    aput-object v3, v2, v0

    const-string v3, "id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 584
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 588
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attachment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no store data, not deleting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_1
    if-eqz v9, :cond_2

    .line 602
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 567
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 600
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v9, :cond_4

    .line 602
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 606
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_4
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$7;->val$force:Z

    if-nez v0, :cond_5

    .line 610
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .restart local v10    # "cv":Landroid/content/ContentValues;
    const-string v0, "content_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 612
    const-string v0, "attachments"

    const-string v1, "id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 622
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_5
    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 624
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    .line 600
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_6

    .line 602
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 628
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "file":Ljava/io/File;
    :cond_7
    const/4 v0, 0x0

    return-object v0

    .restart local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_2
.end method
