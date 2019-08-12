.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V
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

.field final synthetic val$flaggedMessageCount:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->val$flaggedMessageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1381
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->val$flaggedMessageCount:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1202(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)I

    .line 1388
    const-string v1, "UPDATE folders SET flagged_count = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$1200(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    const/4 v1, 0x0

    return-object v1

    .line 1383
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 1375
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
