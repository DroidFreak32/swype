.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
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

.field final synthetic val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field final synthetic val$msgs:[Lcom/fsck/k9/mail/Message;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;[Lcom/fsck/k9/mail/Message;)V
    .locals 0

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$msgs:[Lcom/fsck/k9/mail/Message;

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
    .line 2161
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v11, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$msgs:[Lcom/fsck/k9/mail/Message;

    .local v2, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v7, v2, v4

    .line 2170
    .local v7, "message":Lcom/fsck/k9/mail/Message;
    move-object v0, v7

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object v5, v0

    .line 2172
    .local v5, "lMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2174
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 2178
    :cond_0
    sget-object v10, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2180
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getFlaggedMessageCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getFlaggedMessageCount()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V

    .line 2184
    :cond_1
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v8

    .line 2186
    .local v8, "oldUID":Ljava/lang/String;
    sget-boolean v10, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 2187
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Updating folder_id to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for message with UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currently in folder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2190
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "K9LOCAL:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 2192
    const-string v10, "UPDATE messages SET folder_id = ?, uid = ? WHERE id = ?"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->val$lDestFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2199
    new-instance v9, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v10, v10, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-direct {v9, v10, v8, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;-><init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 2200
    .local v9, "placeHolder":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    sget-object v10, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2201
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/fsck/k9/mail/Message;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2205
    .end local v2    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v4    # "i$":I
    .end local v5    # "lMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .end local v6    # "len$":I
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    .end local v8    # "oldUID":Ljava/lang/String;
    .end local v9    # "placeHolder":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :catch_0
    move-exception v3

    .line 2207
    .local v3, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v10, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    invoke-direct {v10, v3}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 2209
    .end local v3    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v2    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method
