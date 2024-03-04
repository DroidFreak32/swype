.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;Z)V
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

.field final synthetic val$copy:Z

.field final synthetic val$messages:[Lcom/fsck/k9/mail/Message;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;[Lcom/fsck/k9/mail/Message;Z)V
    .locals 0

    .prologue
    .line 2287
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->val$messages:[Lcom/fsck/k9/mail/Message;

    iput-boolean p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->val$copy:Z

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
    .line 2287
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 30
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2293
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->val$messages:[Lcom/fsck/k9/mail/Message;

    .local v4, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_14

    aget-object v13, v4, v11

    .line 2295
    .local v13, "message":Lcom/fsck/k9/mail/Message;
    instance-of v0, v13, Lcom/fsck/k9/mail/internet/MimeMessage;

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 2297
    new-instance v25, Ljava/lang/Error;

    const-string v26, "LocalStore can only store Messages that extend MimeMessage"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2417
    .end local v4    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v8

    .line 2419
    .local v8, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v25, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    move-object/from16 v0, v25

    invoke-direct {v0, v8}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v25

    .line 2300
    .end local v8    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v4    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    :try_start_1
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v22

    .line 2301
    .local v22, "uid":Ljava/lang/String;
    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->val$copy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 2303
    :cond_1
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "K9LOCAL:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->val$copy:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 2306
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 2329
    :cond_2
    :goto_1
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2330
    .local v24, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    .local v6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    move-object/from16 v0, v24

    invoke-static {v13, v0, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2333
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 2334
    .local v19, "sbHtml":Ljava/lang/StringBuffer;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 2335
    .local v20, "sbText":Ljava/lang/StringBuffer;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11    # "i$":I
    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/fsck/k9/mail/Part;
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2339
    .local v23, "viewable":Lcom/fsck/k9/mail/Part;
    :try_start_2
    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v21

    .line 2344
    .local v21, "text":Ljava/lang/String;
    invoke-interface/range {v23 .. v23}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v25

    const-string v26, "text/html"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2346
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2353
    .end local v21    # "text":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 2355
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v25, Lcom/fsck/k9/mail/MessagingException;

    const-string v26, "Unable to get text for message part"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    .line 2311
    .end local v6    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v19    # "sbHtml":Ljava/lang/StringBuffer;
    .end local v20    # "sbText":Ljava/lang/StringBuffer;
    .end local v23    # "viewable":Lcom/fsck/k9/mail/Part;
    .end local v24    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .restart local v11    # "i$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v15

    .line 2312
    .local v15, "oldMessage":Lcom/fsck/k9/mail/Message;
    if-eqz v15, :cond_4

    sget-object v25, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 2316
    :cond_4
    if-eqz v15, :cond_5

    sget-object v25, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getFlaggedMessageCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V

    .line 2323
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2300(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    .line 2324
    const-string v25, "DELETE FROM messages WHERE folder_id = ? AND uid = ?"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2350
    .end local v11    # "i$":I
    .end local v15    # "oldMessage":Lcom/fsck/k9/mail/Message;
    .restart local v6    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v19    # "sbHtml":Ljava/lang/StringBuffer;
    .restart local v20    # "sbText":Ljava/lang/StringBuffer;
    .restart local v21    # "text":Ljava/lang/String;
    .restart local v23    # "viewable":Lcom/fsck/k9/mail/Part;
    .restart local v24    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    :cond_6
    :try_start_4
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 2359
    .end local v21    # "text":Ljava/lang/String;
    .end local v23    # "viewable":Lcom/fsck/k9/mail/Part;
    :cond_7
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2360
    .restart local v21    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->markupContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2361
    .local v9, "html":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2363
    .local v18, "preview":Ljava/lang/String;
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_9

    .line 2365
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v18

    .line 2370
    :cond_9
    :try_start_6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2371
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v25, "uid"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    const-string v25, "subject"

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const-string v25, "sender_list"

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const-string v25, "date"

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v26

    if-nez v26, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    :goto_3
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2376
    const-string v25, "flags"

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v26

    const/16 v27, 0x2c

    invoke-static/range {v26 .. v27}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    const-string v26, "deleted"

    sget-object v25, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v25

    if-eqz v25, :cond_c

    const/16 v25, 0x1

    :goto_4
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2378
    const-string v25, "folder_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2379
    const-string v25, "to_list"

    sget-object v26, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    const-string v25, "cc_list"

    sget-object v26, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v25, "bcc_list"

    sget-object v26, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string v25, "html_content"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_d

    .end local v9    # "html":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    const-string v25, "text_content"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_e

    .end local v21    # "text":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    const-string v25, "preview"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_f

    .end local v18    # "preview":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    const-string v25, "reply_to_list"

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const-string v25, "attachment_count"

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2387
    const-string v25, "internal_date"

    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v26

    if-nez v26, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    :goto_8
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2390
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v14

    .line 2391
    .local v14, "messageId":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 2393
    const-string v25, "message_id"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    :cond_a
    const-string v25, "messages"

    const-string v26, "uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 2397
    .local v16, "messageUid":J
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Part;

    .line 2399
    .local v5, "attachment":Lcom/fsck/k9/mail/Part;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->val$copy:Z

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v5, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2400(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/Part;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    .line 2411
    .end local v5    # "attachment":Lcom/fsck/k9/mail/Part;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v14    # "messageId":Ljava/lang/String;
    .end local v16    # "messageUid":J
    :catch_2
    move-exception v8

    .line 2413
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v25, Lcom/fsck/k9/mail/MessagingException;

    const-string v26, "Error appending message"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_7
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2374
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v9    # "html":Ljava/lang/String;
    .restart local v18    # "preview":Ljava/lang/String;
    .restart local v21    # "text":Ljava/lang/String;
    :cond_b
    :try_start_8
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    goto/16 :goto_3

    .line 2377
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 2382
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 2383
    .end local v9    # "html":Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 2384
    .end local v21    # "text":Ljava/lang/String;
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 2387
    .end local v18    # "preview":Ljava/lang/String;
    :cond_10
    invoke-virtual {v13}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    goto :goto_8

    .line 2401
    .restart local v14    # "messageId":Ljava/lang/String;
    .restart local v16    # "messageUid":J
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    move-object v0, v13

    check-cast v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    move-object/from16 v25, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 2402
    sget-object v25, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v25

    if-nez v25, :cond_12

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 2406
    :cond_12
    sget-object v25, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getFlaggedMessageCount()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2293
    :cond_13
    add-int/lit8 v10, v11, 0x1

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_0

    .line 2421
    .end local v6    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v13    # "message":Lcom/fsck/k9/mail/Message;
    .end local v14    # "messageId":Ljava/lang/String;
    .end local v16    # "messageUid":J
    .end local v19    # "sbHtml":Ljava/lang/StringBuffer;
    .end local v20    # "sbText":Ljava/lang/StringBuffer;
    .end local v22    # "uid":Ljava/lang/String;
    .end local v24    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    :cond_14
    const/16 v25, 0x0

    return-object v25
.end method
