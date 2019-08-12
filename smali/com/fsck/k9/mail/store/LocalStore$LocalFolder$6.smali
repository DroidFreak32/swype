.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V
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

.field final synthetic val$unreadMessageCount:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)V
    .locals 0

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->val$unreadMessageCount:I

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
    .line 1345
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->val$unreadMessageCount:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1102(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)I

    .line 1358
    const-string v1, "UPDATE folders SET unread_count = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1100(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    const/4 v1, 0x0

    return-object v1

    .line 1353
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
