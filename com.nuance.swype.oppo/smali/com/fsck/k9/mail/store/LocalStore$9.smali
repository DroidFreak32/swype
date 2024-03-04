.class Lcom/fsck/k9/mail/store/LocalStore$9;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore;->getPendingCommands()Ljava/util/ArrayList;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$9;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

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
    .line 656
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$9;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 660
    const/4 v11, 0x0

    .line 663
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "pending_commands"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "command"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "arguments"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 670
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v10, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    new-instance v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v9}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    .line 674
    .local v9, "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9, v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->access$402(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;J)J

    .line 675
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    .line 676
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 677
    .local v8, "arguments":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    .line 678
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    iget-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-ge v12, v0, :cond_0

    .line 680
    iget-object v0, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v1, v9, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    .line 678
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 682
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 688
    .end local v8    # "arguments":Ljava/lang/String;
    .end local v9    # "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .end local v10    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;>;"
    .end local v12    # "i":I
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_1

    .line 690
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 688
    .restart local v10    # "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;>;"
    :cond_2
    if-eqz v11, :cond_3

    .line 690
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v10
.end method
