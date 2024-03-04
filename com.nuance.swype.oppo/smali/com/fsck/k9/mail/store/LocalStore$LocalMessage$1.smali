.class Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
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

.field final synthetic val$flag:Lcom/fsck/k9/mail/Flag;

.field final synthetic val$set:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    iput-boolean p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$set:Z

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
    .line 5636
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

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
    .line 5642
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$set:Z

    if-eqz v1, :cond_0

    .line 5644
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$3500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    .line 5647
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$set:Z

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$3600(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V

    .line 5650
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$flag:Lcom/fsck/k9/mail/Flag;

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->val$set:Z

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$3701(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5659
    const-string v1, "UPDATE messages SET flags = ?  WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5661
    const/4 v1, 0x0

    return-object v1

    .line 5652
    :catch_0
    move-exception v0

    .line 5654
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
