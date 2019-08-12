.class Lcom/fsck/k9/mail/store/LocalStore$11;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
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

.field final synthetic val$command:Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$11;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$11;->val$command:Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

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
    .line 727
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$11;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

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
    .line 731
    const-string v0, "pending_commands"

    const-string v1, "id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$11;->val$command:Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->access$400(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x0

    return-object v0
.end method
