.class Lcom/fsck/k9/mail/store/LocalStore$15;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
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
        "Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;

.field final synthetic val$attachmentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$15;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$15;->val$attachmentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1012
    const/4 v10, 0x0

    .line 1013
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1014
    .local v11, "size":I
    const/4 v9, 0x0

    .line 1017
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "attachments"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "size"

    aput-object v3, v2, v0

    const-string v3, "id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$15;->val$attachmentId:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1025
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    if-eqz v9, :cond_0

    .line 1040
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v8

    .line 1029
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1030
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1031
    new-instance v8, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;

    invoke-direct {v8}, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;-><init>()V

    .line 1032
    .local v8, "attachmentInfo":Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    iput-object v10, v8, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;->name:Ljava/lang/String;

    .line 1033
    iput v11, v8, Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    if-eqz v9, :cond_0

    .line 1040
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1038
    .end local v8    # "attachmentInfo":Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 1040
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
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
    .line 1008
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$15;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;

    move-result-object v0

    return-object v0
.end method
