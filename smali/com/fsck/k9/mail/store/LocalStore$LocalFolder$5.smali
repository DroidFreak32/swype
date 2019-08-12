.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessageCount()I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 1292
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    const/4 v0, 0x0

    .line 1301
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v2, "SELECT COUNT(*) FROM messages WHERE messages.folder_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1306
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1307
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1308
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1312
    if-eqz v0, :cond_0

    .line 1314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    .line 1294
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 1296
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1312
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 1314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2
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
    .line 1286
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
