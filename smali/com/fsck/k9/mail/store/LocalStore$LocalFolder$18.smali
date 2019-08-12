.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->storeSmallMessage(Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)Lcom/fsck/k9/mail/Message;
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

.field final synthetic val$message:Lcom/fsck/k9/mail/Message;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->val$message:Lcom/fsck/k9/mail/Message;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mail/Message;
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2237
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->val$message:Lcom/fsck/k9/mail/Message;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 2238
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->val$message:Lcom/fsck/k9/mail/Message;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 2239
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v1

    .line 2240
    .local v1, "result":Lcom/fsck/k9/mail/Message;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2242
    sget-object v3, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2243
    return-object v1

    .line 2245
    .end local v1    # "result":Lcom/fsck/k9/mail/Message;
    .end local v2    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v3, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v3, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v3
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
    .line 2231
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method
