.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback",
        "<[",
        "Lcom/fsck/k9/mail/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field final synthetic val$includeDeleted:Z

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/controller/MessageRetrievalListener;Z)V
    .locals 0

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    iput-boolean p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->val$includeDeleted:Z

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
    .line 2083
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)[Lcom/fsck/k9/mail/Message;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2089
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2090
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->val$listener:Lcom/fsck/k9/controller/MessageRetrievalListener;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "SELECT "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$2000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "FROM messages WHERE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->val$includeDeleted:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " folder_id = ? ORDER BY date DESC"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Lcom/fsck/k9/mail/store/LocalStore;->access$2100(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "deleted = 0 AND "
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2103
    :catch_0
    move-exception v0

    .line 2105
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
