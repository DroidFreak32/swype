.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
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
        "Lcom/fsck/k9/mail/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mail/Message;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2029
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2030
    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v3, v3, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->val$uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {v2, v3, v4, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    .local v2, "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    const/4 v0, 0x0

    .line 2035
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$2000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FROM messages WHERE uid = ? AND folder_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2043
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 2045
    if-eqz v0, :cond_0

    .line 2053
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const/4 v2, 0x0

    .line 2056
    .end local v2    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :cond_1
    :goto_0
    return-object v2

    .line 2047
    .restart local v2    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :cond_2
    :try_start_3
    invoke-static {v2, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2051
    if-eqz v0, :cond_1

    .line 2053
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2058
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :catch_0
    move-exception v1

    .line 2060
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v3, v1}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 2051
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "message":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 2053
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
.end method

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
    .line 2023
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method
