.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
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

.field final synthetic val$mode:Lcom/fsck/k9/mail/Folder$OpenMode;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->val$mode:Lcom/fsck/k9/mail/Folder$OpenMode;

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
    .line 1105
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v15, 0x0

    .line 1112
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "SELECT id, name,unread_count, visible_limit, last_updated, status, push_state, last_pushed, flagged_count FROM folders "

    .line 1114
    .local v2, "baseQuery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "where folders.name = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1123
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1125
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1126
    .local v4, "folderId":I
    if-lez v4, :cond_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x5

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v14, 0x8

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static/range {v3 .. v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$300(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    .end local v4    # "folderId":I
    :cond_0
    :goto_1
    if-eqz v15, :cond_1

    .line 1146
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 1120
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "where folders.id = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_0

    .line 1133
    :cond_3
    const-string v3, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating folder "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with existing id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;->val$mode:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v3, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1138
    .end local v2    # "baseQuery":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1140
    .local v16, "e":Lcom/fsck/k9/mail/MessagingException;
    :try_start_2
    new-instance v3, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1144
    .end local v16    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_4

    .line 1146
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method
