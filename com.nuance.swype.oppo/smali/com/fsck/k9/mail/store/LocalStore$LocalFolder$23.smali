.class Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/fsck/k9/mail/Part;Z)V
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

.field final synthetic val$attachment:Lcom/fsck/k9/mail/Part;

.field final synthetic val$messageId:J

.field final synthetic val$saveAsNew:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ZLcom/fsck/k9/mail/Part;J)V
    .locals 0

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$saveAsNew:Z

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    iput-wide p4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$messageId:J

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
    .line 2631
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

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
    .line 2637
    const-wide/16 v12, -0x1

    .line 2638
    .local v12, "attachmentId":J
    const/16 v17, 0x0

    .line 2639
    .local v17, "contentUri":Landroid/net/Uri;
    const/16 v27, -0x1

    .line 2640
    .local v27, "size":I
    const/16 v29, 0x0

    .line 2642
    .local v29, "tempAttachmentFile":Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$saveAsNew:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    instance-of v2, v2, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v2, :cond_0

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v12

    .line 2647
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v2, v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore;->access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v3, v3, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v3, v3, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v4, v4, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mail/store/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 2648
    .local v10, "attachmentDirectory":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v14

    .line 2651
    .local v14, "body":Lcom/fsck/k9/mail/Body;
    instance-of v2, v14, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    if-eqz v2, :cond_9

    .line 2653
    check-cast v14, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    .end local v14    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    .line 2670
    :cond_1
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_2

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v20

    .line 2677
    .local v20, "disposition":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 2679
    const-string v2, "size"

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2680
    .local v26, "s":Ljava/lang/String;
    if-eqz v26, :cond_2

    .line 2682
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2686
    .end local v20    # "disposition":Ljava/lang/String;
    .end local v26    # "s":Ljava/lang/String;
    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_3

    .line 2688
    const/16 v27, 0x0

    .line 2691
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    const-string v3, "X-Android-Attachment-StoreData"

    invoke-interface {v2, v3}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v28

    .line 2695
    .local v28, "storeData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2696
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2698
    .local v16, "contentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2699
    .local v15, "contentDisposition":Ljava/lang/String;
    if-nez v23, :cond_4

    if-eqz v15, :cond_4

    .line 2701
    const-string v2, "filename"

    invoke-static {v15, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2703
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_b

    .line 2705
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2706
    .local v19, "cv":Landroid/content/ContentValues;
    const-string v2, "message_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2707
    const-string v3, "content_uri"

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const-string v2, "store_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    const-string v2, "size"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2710
    const-string v2, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    const-string v2, "mime_type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    const-string v2, "content_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    const-string v2, "content_disposition"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const-string v2, "attachments"

    const-string v3, "message_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 2726
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_5

    if-eqz v29, :cond_5

    .line 2728
    new-instance v11, Ljava/io/File;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2729
    .local v11, "attachmentFile":Ljava/io/File;
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$3000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-static {v2, v12, v13}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Lcom/fsck/k9/Account;J)Landroid/net/Uri;

    move-result-object v17

    .line 2733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->this$1:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v4, v4, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore;->access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/app/Application;)V

    invoke-interface {v2, v3}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 2734
    new-instance v19, Landroid/content/ContentValues;

    .end local v19    # "cv":Landroid/content/ContentValues;
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2735
    .restart local v19    # "cv":Landroid/content/ContentValues;
    const-string v3, "content_uri"

    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    const-string v2, "attachments"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2741
    .end local v11    # "attachmentFile":Ljava/io/File;
    :cond_5
    if-eqz v16, :cond_7

    if-eqz v17, :cond_7

    .line 2743
    const-string v3, "messages"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "html_content"

    aput-object v5, v4, v2

    const-string v5, "id = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 2749
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2753
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2754
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2757
    .local v24, "new_html":Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    .end local v19    # "cv":Landroid/content/ContentValues;
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2758
    .restart local v19    # "cv":Landroid/content/ContentValues;
    const-string v2, "html_content"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    const-string v2, "messages"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$messageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2765
    .end local v24    # "new_html":Ljava/lang/String;
    :cond_6
    if-eqz v18, :cond_7

    .line 2767
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2772
    .end local v18    # "cursor":Landroid/database/Cursor;
    :cond_7
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    instance-of v2, v2, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v2, :cond_8

    .line 2774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    check-cast v2, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {v2, v12, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->setAttachmentId(J)V

    .line 2776
    :cond_8
    const/4 v2, 0x0

    return-object v2

    .line 2661
    .end local v15    # "contentDisposition":Ljava/lang/String;
    .end local v16    # "contentId":Ljava/lang/String;
    .end local v19    # "cv":Landroid/content/ContentValues;
    .end local v23    # "name":Ljava/lang/String;
    .end local v28    # "storeData":Ljava/lang/String;
    .restart local v14    # "body":Lcom/fsck/k9/mail/Body;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;->val$attachment:Lcom/fsck/k9/mail/Part;

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v2

    invoke-interface {v2}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 2662
    .local v22, "in":Ljava/io/InputStream;
    const-string v2, "att"

    const/4 v3, 0x0

    invoke-static {v2, v3, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v29

    .line 2663
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2664
    .local v25, "out":Ljava/io/FileOutputStream;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v27

    .line 2665
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V

    .line 2666
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2778
    .end local v10    # "attachmentDirectory":Ljava/io/File;
    .end local v14    # "body":Lcom/fsck/k9/mail/Body;
    .end local v22    # "in":Ljava/io/InputStream;
    .end local v25    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v21

    .line 2780
    .local v21, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 2707
    .end local v21    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v10    # "attachmentDirectory":Ljava/io/File;
    .restart local v15    # "contentDisposition":Ljava/lang/String;
    .restart local v16    # "contentId":Ljava/lang/String;
    .restart local v19    # "cv":Landroid/content/ContentValues;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v28    # "storeData":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2719
    .end local v19    # "cv":Landroid/content/ContentValues;
    :cond_b
    :try_start_3
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2720
    .restart local v19    # "cv":Landroid/content/ContentValues;
    const-string v3, "content_uri"

    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    const-string v2, "size"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2722
    const-string v2, "attachments"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2782
    .end local v10    # "attachmentDirectory":Ljava/io/File;
    .end local v15    # "contentDisposition":Ljava/lang/String;
    .end local v16    # "contentId":Ljava/lang/String;
    .end local v19    # "cv":Landroid/content/ContentValues;
    .end local v23    # "name":Ljava/lang/String;
    .end local v28    # "storeData":Ljava/lang/String;
    :catch_1
    move-exception v21

    .line 2784
    .local v21, "e":Ljava/io/IOException;
    new-instance v2, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 2720
    .end local v21    # "e":Ljava/io/IOException;
    .restart local v10    # "attachmentDirectory":Ljava/io/File;
    .restart local v15    # "contentDisposition":Ljava/lang/String;
    .restart local v16    # "contentId":Ljava/lang/String;
    .restart local v19    # "cv":Landroid/content/ContentValues;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v28    # "storeData":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 2735
    .restart local v11    # "attachmentFile":Ljava/io/File;
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2765
    .end local v11    # "attachmentFile":Ljava/io/File;
    .end local v19    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_e

    .line 2767
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
.end method
