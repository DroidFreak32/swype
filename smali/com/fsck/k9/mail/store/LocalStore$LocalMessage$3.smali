.class Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->destroy()V
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
.field final synthetic this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 0

    .prologue
    .line 5734
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

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
    .line 5734
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5741
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$3600(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V

    .line 5742
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$3900(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$3200(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    .line 5743
    const-string v1, "DELETE FROM messages WHERE id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5749
    const/4 v1, 0x0

    return-object v1

    .line 5745
    :catch_0
    move-exception v0

    .line 5747
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
