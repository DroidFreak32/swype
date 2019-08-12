.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->delete(Z)V
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


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V
    .locals 0

    .prologue
    .line 2940
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

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
    .line 2940
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2947
    :try_start_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v6, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2948
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 2949
    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2951
    .local v4, "message":Lcom/fsck/k9/mail/Message;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2300(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2954
    .end local v0    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v1

    .line 2956
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v5, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v5, v1}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 2958
    .end local v1    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    const-string v5, "DELETE FROM folders WHERE id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2960
    return-object v10
.end method
