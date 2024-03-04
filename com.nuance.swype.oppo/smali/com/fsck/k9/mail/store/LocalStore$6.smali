.class Lcom/fsck/k9/mail/store/LocalStore$6;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;
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
        "Ljava/util/List",
        "<+",
        "Lcom/fsck/k9/mail/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;

.field final synthetic val$folders:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$6;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$6;->val$folders:Ljava/util/List;

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
    .line 490
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$6;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 498
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "SELECT id, name, unread_count, visible_limit, last_updated, status, push_state, last_pushed, flagged_count FROM folders ORDER BY name ASC"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 499
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$6;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V

    .line 502
    .local v1, "folder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v12, 0x8

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static/range {v1 .. v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$300(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;JI)V

    .line 504
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$6;->val$folders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 508
    .end local v1    # "folder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :catch_0
    move-exception v13

    .line 510
    .local v13, "e":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    new-instance v2, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v2, v13}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    .end local v13    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 506
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$6;->val$folders:Ljava/util/List;
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    if-eqz v0, :cond_2

    .line 516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method
