.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(J)V
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
.field final synthetic this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
    .locals 0

    .prologue
    .line 2997
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-wide p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->val$messageId:J

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
    .line 2997
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 3001
    const/4 v9, 0x0

    .line 3004
    .local v9, "attachmentsCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "attachments"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "id"

    aput-object v3, v2, v0

    const-string v3, "message_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->val$messageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3007
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 3009
    .local v8, "attachmentDirectory":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3011
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 3014
    .local v10, "attachmentId":J
    :try_start_1
    new-instance v12, Ljava/io/File;

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3015
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3017
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3024
    .end local v12    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3028
    .end local v10    # "attachmentId":J
    :cond_1
    if-eqz v9, :cond_2

    .line 3030
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3033
    :cond_2
    return-object v13

    .line 3028
    .end local v8    # "attachmentDirectory":Ljava/io/File;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 3030
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
