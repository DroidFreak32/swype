.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveHeaders(JLcom/fsck/k9/mail/internet/MimeMessage;)V
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

.field final synthetic val$id:J

.field final synthetic val$message:Lcom/fsck/k9/mail/internet/MimeMessage;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 0

    .prologue
    .line 2559
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-wide p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$id:J

    iput-object p4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$message:Lcom/fsck/k9/mail/internet/MimeMessage;

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
    .line 2559
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2700(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Lcom/fsck/k9/Account;

    move-result-object v12

    invoke-virtual {v12}, Lcom/fsck/k9/Account;->saveAllHeaders()Z

    move-result v10

    .line 2564
    .local v10, "saveAllHeaders":Z
    const/4 v5, 0x0

    .line 2566
    .local v5, "gotAdditionalHeaders":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$id:J

    invoke-static {v12, v14, v15}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    .line 2567
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$message:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeaderNames()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2569
    .local v9, "name":Ljava/lang/String;
    if-nez v10, :cond_1

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$2900()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2571
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$message:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v12, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2572
    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v11, v3, v7

    .line 2574
    .local v11, "value":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2575
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v12, "message_id"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2576
    const-string v12, "name"

    invoke-virtual {v4, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    const-string v12, "value"

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const-string v12, "headers"

    const-string v13, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2572
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2583
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 2587
    .end local v9    # "name":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_4

    .line 2591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2592
    .local v2, "appendedFlags":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Flag;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$message:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2593
    sget-object v12, Lcom/fsck/k9/mail/Flag;->X_GOT_ALL_HEADERS:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2595
    const-string v12, "UPDATE messages SET flags = ?  WHERE id = ?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x2c

    invoke-static/range {v15 .. v16}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;->val$id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2599
    .end local v2    # "appendedFlags":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Flag;>;"
    :cond_4
    const/4 v12, 0x0

    return-object v12
.end method
