.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
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

.field final synthetic val$fp:Lcom/fsck/k9/mail/FetchProfile;

.field final synthetic val$messages:[Lcom/fsck/k9/mail/Message;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/FetchProfile;[Lcom/fsck/k9/mail/Message;)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->val$fp:Lcom/fsck/k9/mail/FetchProfile;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->val$messages:[Lcom/fsck/k9/mail/Message;

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
    .line 1797
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 31
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 1803
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->val$fp:Lcom/fsck/k9/mail/FetchProfile;

    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1806
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->val$messages:[Lcom/fsck/k9/mail/Message;

    .local v10, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v0, v10

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    aget-object v23, v10, v19

    .line 1808
    check-cast v23, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    .line 1809
    .local v23, "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    const/16 v16, 0x0

    .line 1810
    .local v16, "cursor":Landroid/database/Cursor;
    new-instance v24, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>()V

    .line 1811
    .local v24, "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    const-string v2, "mixed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :try_start_1
    const-string v2, "SELECT html_content, text_content FROM messages WHERE id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1817
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1818
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1819
    .local v18, "htmlContent":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1821
    .local v29, "textContent":Ljava/lang/String;
    if-eqz v29, :cond_4

    .line 1823
    new-instance v11, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    .local v11, "body":Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;
    new-instance v12, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v2, "text/plain"

    invoke-direct {v12, v11, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    .line 1825
    .local v12, "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1836
    .end local v11    # "body":Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;
    :goto_1
    if-eqz v16, :cond_0

    .line 1838
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1844
    :cond_0
    :try_start_3
    const-string v3, "attachments"

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "size"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "name"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "mime_type"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "store_data"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "content_uri"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "content_id"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "content_disposition"

    aput-object v5, v4, v2

    const-string v5, "message_id = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1863
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1865
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1866
    .local v20, "id":J
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1867
    .local v27, "size":I
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1868
    .local v25, "name":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1869
    .local v30, "type":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1870
    .local v28, "storeData":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1871
    .local v15, "contentUri":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1872
    .local v14, "contentId":Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1873
    .local v13, "contentDisposition":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1875
    .local v11, "body":Lcom/fsck/k9/mail/Body;
    if-nez v13, :cond_1

    .line 1877
    const-string v13, "attachment"

    .line 1880
    :cond_1
    if-eqz v15, :cond_2

    .line 1882
    new-instance v11, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    .end local v11    # "body":Lcom/fsck/k9/mail/Body;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v3, v3, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/LocalStore;->access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/app/Application;)V

    .line 1884
    .restart local v11    # "body":Lcom/fsck/k9/mail/Body;
    :cond_2
    new-instance v12, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    .end local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    move-wide/from16 v0, v20

    invoke-direct {v12, v11, v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;-><init>(Lcom/fsck/k9/mail/Body;J)V

    .line 1885
    .restart local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    const-string v2, "Content-Type"

    const-string v3, "%s;\n name=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v30, v4, v5

    const/4 v5, 0x1

    aput-object v25, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-virtual {v12, v2, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const-string v2, "Content-Disposition"

    const-string v3, "%s;\n filename=\"%s\";\n size=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v25, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v2, "Content-ID"

    invoke-virtual {v12, v2, v14}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v2, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v28

    invoke-virtual {v12, v2, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1908
    .end local v11    # "body":Lcom/fsck/k9/mail/Body;
    .end local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .end local v13    # "contentDisposition":Ljava/lang/String;
    .end local v14    # "contentId":Ljava/lang/String;
    .end local v15    # "contentUri":Ljava/lang/String;
    .end local v20    # "id":J
    .end local v25    # "name":Ljava/lang/String;
    .end local v27    # "size":I
    .end local v28    # "storeData":Ljava/lang/String;
    .end local v30    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_3

    .line 1910
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1928
    .end local v10    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "htmlContent":Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .end local v24    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .end local v29    # "textContent":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1930
    .local v17, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1829
    .end local v17    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v10    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "htmlContent":Ljava/lang/String;
    .restart local v19    # "i$":I
    .restart local v22    # "len$":I
    .restart local v23    # "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .restart local v24    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .restart local v29    # "textContent":Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v11, Lcom/fsck/k9/mail/internet/TextBody;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 1830
    .local v11, "body":Lcom/fsck/k9/mail/internet/TextBody;
    new-instance v12, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const-string v2, "text/html"

    invoke-direct {v12, v11, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    .line 1831
    .restart local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 1836
    .end local v11    # "body":Lcom/fsck/k9/mail/internet/TextBody;
    .end local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .end local v18    # "htmlContent":Ljava/lang/String;
    .end local v29    # "textContent":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v16, :cond_5

    .line 1838
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 1908
    .restart local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .restart local v18    # "htmlContent":Ljava/lang/String;
    .restart local v29    # "textContent":Ljava/lang/String;
    :cond_6
    if-eqz v16, :cond_7

    .line 1910
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1914
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1916
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v26

    .line 1917
    .local v26, "part":Lcom/fsck/k9/mail/BodyPart;
    const-string v2, "Content-Type"

    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 1806
    .end local v26    # "part":Lcom/fsck/k9/mail/BodyPart;
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1922
    :cond_8
    const-string v2, "Content-Type"

    const-string v3, "multipart/mixed"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {v23 .. v24}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setBody(Lcom/fsck/k9/mail/Body;)V
    :try_end_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 1932
    .end local v10    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v12    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "htmlContent":Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .end local v24    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .end local v29    # "textContent":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    return-object v2
.end method
