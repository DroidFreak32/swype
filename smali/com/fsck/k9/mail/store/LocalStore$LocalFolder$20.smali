.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->updateMessage(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
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

.field final synthetic val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 0

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

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
    .line 2447
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2453
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2454
    .local v15, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2456
    .local v5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$2600(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v15, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2460
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 2461
    .local v11, "sbHtml":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 2462
    .local v12, "sbText":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v9, v6, :cond_1

    .line 2464
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fsck/k9/mail/Part;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2467
    .local v14, "viewable":Lcom/fsck/k9/mail/Part;
    :try_start_1
    invoke-static {v14}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v13

    .line 2472
    .local v13, "text":Ljava/lang/String;
    invoke-interface {v14}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v16

    const-string v17, "text/html"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2474
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2462
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2478
    :cond_0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2481
    .end local v13    # "text":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2483
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/fsck/k9/mail/MessagingException;

    const-string v17, "Unable to get text for message part"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2541
    .end local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .end local v6    # "count":I
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "i":I
    .end local v11    # "sbHtml":Ljava/lang/StringBuffer;
    .end local v12    # "sbText":Ljava/lang/StringBuffer;
    .end local v14    # "viewable":Lcom/fsck/k9/mail/Part;
    .end local v15    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    :catch_1
    move-exception v7

    .line 2540
    .local v7, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v16, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v16

    .line 2487
    .end local v7    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v11    # "sbHtml":Ljava/lang/StringBuffer;
    .restart local v12    # "sbText":Ljava/lang/StringBuffer;
    .restart local v15    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    :cond_1
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2488
    .restart local v13    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->markupContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2489
    .local v8, "html":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2491
    .local v10, "preview":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_3

    .line 2493
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v16, v0

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 2497
    :cond_3
    :try_start_4
    const-string v18, "UPDATE messages SET uid = ?, subject = ?, sender_list = ?, date = ?, flags = ?, folder_id = ?, to_list = ?, cc_list = ?, bcc_list = ?, html_content = ?, text_content = ?, preview = ?, reply_to_list = ?, attachment_count = ? WHERE id = ?"

    const/16 v16, 0xf

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v16

    if-nez v16, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v19, v20

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v17

    const/16 v20, 0x2c

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    sget-object v20, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    sget-object v20, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    sget-object v20, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0x9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_5

    .end local v8    # "html":Ljava/lang/String;
    :goto_3
    aput-object v8, v19, v16

    const/16 v16, 0xa

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    .end local v13    # "text":Ljava/lang/String;
    :goto_4
    aput-object v13, v19, v16

    const/16 v16, 0xb

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_7

    .end local v10    # "preview":Ljava/lang/String;
    :goto_5
    aput-object v10, v19, v16

    const/16 v16, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0xd

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v19, v16

    const/16 v16, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v19, v16

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2526
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_6
    if-ge v9, v6, :cond_8

    .line 2528
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Part;

    .line 2529
    .local v4, "attachment":Lcom/fsck/k9/mail/Part;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v18

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v4, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2400(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/Part;Z)V

    .line 2526
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2497
    .end local v4    # "attachment":Lcom/fsck/k9/mail/Part;
    .restart local v8    # "html":Ljava/lang/String;
    .restart local v10    # "preview":Ljava/lang/String;
    .restart local v13    # "text":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    goto/16 :goto_2

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_3

    .end local v8    # "html":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    .end local v13    # "text":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 2531
    .end local v10    # "preview":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getId()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;->val$message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2542
    const/16 v16, 0x0

    return-object v16

    .line 2533
    :catch_2
    move-exception v7

    .line 2535
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v16, Lcom/fsck/k9/mail/MessagingException;

    const-string v17, "Error appending message"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_5
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1
.end method
