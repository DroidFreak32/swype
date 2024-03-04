.class public Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalMessage"
.end annotation


# instance fields
.field private mAttachmentCount:I

.field private mCcMe:Z

.field private mCcMeCalculated:Z

.field private mHeadersLoaded:Z

.field private mId:J

.field private mMessageDirty:Z

.field private mPreview:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mToMe:Z

.field private mToMeCalculated:Z

.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5343
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 5331
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;

    .line 5333
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMeCalculated:Z

    .line 5334
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMeCalculated:Z

    .line 5335
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMe:Z

    .line 5336
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMe:Z

    .line 5339
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    .line 5340
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5344
    return-void
.end method

.method constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .locals 2
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    const/4 v1, 0x0

    .line 5347
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 5331
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;

    .line 5333
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMeCalculated:Z

    .line 5334
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMeCalculated:Z

    .line 5335
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMe:Z

    .line 5336
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMe:Z

    .line 5339
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    .line 5340
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5348
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mUid:Ljava/lang/String;

    .line 5349
    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 5350
    return-void
.end method

.method static synthetic access$1800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    .prologue
    .line 5325
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5325
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->buildMimeRepresentation()V

    return-void
.end method

.method static synthetic access$3500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5325
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->delete()V

    return-void
.end method

.method static synthetic access$3600(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .param p1, "x1"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "x2"    # Z

    .prologue
    .line 5325
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->updateFolderCountsOnFlag(Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method static synthetic access$3701(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .param p1, "x1"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5325
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)Lcom/fsck/k9/mail/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    .prologue
    .line 5325
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)Lcom/fsck/k9/mail/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    .prologue
    .line 5325
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .param p1, "x1"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5325
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private buildMimeRepresentation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5421
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    if-nez v0, :cond_0

    .line 5440
    :goto_0
    return-void

    .line 5426
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mSubject:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 5427
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 5429
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    aget-object v0, v0, v2

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 5432
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V

    .line 5433
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 5434
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 5435
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 5436
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    invoke-super {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 5437
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageId:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 5439
    :cond_2
    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    goto :goto_0
.end method

.method private delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5686
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$2;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5720
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-wide v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J

    invoke-static {v0, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$2800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    .line 5723
    return-void

    .line 5716
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method private loadHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5808
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5809
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    .line 5810
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    check-cast v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-static {v1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->access$4000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)V

    .line 5812
    return-void
.end method

.method private populateFromGetMessageCursor(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 5355
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5356
    .local v8, "subject":Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, ""

    .end local v8    # "subject":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setSubject(Ljava/lang/String;)V

    .line 5358
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v4

    .line 5359
    .local v4, "from":[Lcom/fsck/k9/mail/Address;
    array-length v9, v4

    if-lez v9, :cond_1

    .line 5361
    aget-object v9, v4, v10

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 5363
    :cond_1
    new-instance v9, Ljava/util/Date;

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setInternalSentDate(Ljava/util/Date;)V

    .line 5364
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V

    .line 5365
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5366
    .local v3, "flagList":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 5368
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5370
    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 5374
    .local v2, "flag":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5370
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5379
    :catch_0
    move-exception v9

    const-string v9, "X_BAD_FLAG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 5381
    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to parse flag "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5386
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "flag":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J

    .line 5387
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 5388
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 5389
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 5390
    const/16 v9, 0x9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/mail/Address;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setReplyTo([Lcom/fsck/k9/mail/Address;)V

    .line 5392
    const/16 v9, 0xa

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I

    .line 5393
    new-instance v9, Ljava/util/Date;

    const/16 v10, 0xb

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setInternalDate(Ljava/util/Date;)V

    .line 5394
    const/16 v9, 0xc

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setMessageId(Ljava/lang/String;)V

    .line 5396
    const/16 v9, 0xe

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5397
    .local v7, "preview":Ljava/lang/String;
    if-nez v7, :cond_4

    const-string v7, ""

    .end local v7    # "preview":Ljava/lang/String;
    :cond_4
    iput-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;

    .line 5399
    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    if-nez v9, :cond_5

    .line 5401
    new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    const/16 v10, 0xd

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v1, v9, v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;-><init>(Lcom/fsck/k9/mail/store/LocalStore;J)V

    .line 5402
    .local v1, "f":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    sget-object v9, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 5403
    iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 5405
    .end local v1    # "f":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :cond_5
    return-void
.end method

.method private updateFolderCountsOnFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 6
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 5766
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .line 5767
    .local v0, "folder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-eq p1, v4, :cond_0

    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;

    if-ne p1, v4, :cond_2

    .line 5769
    :cond_0
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5771
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v5

    if-eqz p2, :cond_5

    move v4, v3

    :goto_0
    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 5773
    :cond_1
    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5775
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getFlaggedMessageCount()I

    move-result v5

    if-eqz p2, :cond_6

    move v4, v3

    :goto_1
    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V

    .line 5780
    :cond_2
    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5783
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne p1, v4, :cond_3

    .line 5785
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-eq p2, v4, :cond_3

    .line 5787
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v5

    if-eqz p2, :cond_7

    move v4, v3

    :goto_2
    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 5791
    :cond_3
    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    if-ne p1, v4, :cond_4

    .line 5793
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getFlaggedMessageCount()I

    move-result v4

    if-eqz p2, :cond_8

    :goto_3
    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5802
    :cond_4
    return-void

    :cond_5
    move v4, v2

    .line 5771
    goto :goto_0

    :cond_6
    move v4, v2

    .line 5775
    goto :goto_1

    :cond_7
    move v4, v2

    .line 5787
    goto :goto_2

    :cond_8
    move v2, v3

    .line 5793
    goto :goto_3

    .line 5797
    .end local v0    # "folder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :catch_0
    move-exception v1

    .line 5799
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "k9"

    const-string v3, "Unable to update LocalStore unread message count"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5801
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5817
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    if-nez v0, :cond_0

    .line 5818
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V

    .line 5819
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5820
    return-void
.end method

.method public ccMe()Z
    .locals 5

    .prologue
    .line 5592
    :try_start_0
    iget-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMeCalculated:Z

    if-nez v4, :cond_1

    .line 5594
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .local v1, "arr$":[Lcom/fsck/k9/mail/Address;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 5596
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore;->access$3400(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5598
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMe:Z

    .line 5599
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMeCalculated:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5594
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "arr$":[Lcom/fsck/k9/mail/Address;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v4

    .line 5611
    :cond_1
    iget-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCcMe:Z

    return v4
.end method

.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5733
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$3;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5756
    return-void

    .line 5753
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 5484
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I

    return v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5833
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    if-nez v0, :cond_0

    .line 5834
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V

    .line 5835
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5849
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    if-nez v0, :cond_0

    .line 5850
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V

    .line 5851
    :cond_0
    invoke-super {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 5626
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mId:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5444
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5450
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .prologue
    .line 5471
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I

    if-lez v0, :cond_0

    .line 5473
    const/4 v0, 0x1

    .line 5477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5841
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    if-nez v0, :cond_0

    .line 5842
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V

    .line 5843
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 5844
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 3
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5635
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage$1;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5668
    return-void

    .line 5665
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5621
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 5622
    return-void
.end method

.method public setFrom(Lcom/fsck/k9/mail/Address;)V
    .locals 3
    .param p1, "from"    # Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 5490
    new-array v0, v2, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 5491
    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5492
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 5825
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mHeadersLoaded:Z

    if-nez v0, :cond_0

    .line 5826
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->loadHeaders()V

    .line 5827
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5828
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 5465
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageId:Ljava/lang/String;

    .line 5466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5467
    return-void
.end method

.method public setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "addresses"    # [Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5517
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 5519
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 5521
    :cond_0
    iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 5554
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5555
    return-void

    .line 5525
    :cond_1
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 5528
    :cond_2
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 5530
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    .line 5532
    :cond_3
    iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 5536
    :cond_4
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 5539
    :cond_5
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_8

    .line 5541
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 5543
    :cond_6
    iput-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 5547
    :cond_7
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 5552
    :cond_8
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplyTo([Lcom/fsck/k9/mail/Address;)V
    .locals 1
    .param p1, "replyTo"    # [Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5498
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 5500
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 5506
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5507
    return-void

    .line 5504
    :cond_1
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5457
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mSubject:Ljava/lang/String;

    .line 5458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    .line 5459
    return-void
.end method

.method public toMe()Z
    .locals 5

    .prologue
    .line 5563
    :try_start_0
    iget-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMeCalculated:Z

    if-nez v4, :cond_1

    .line 5565
    sget-object v4, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .local v1, "arr$":[Lcom/fsck/k9/mail/Address;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 5567
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore;->access$3300(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5569
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMe:Z

    .line 5570
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMeCalculated:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5565
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v1    # "arr$":[Lcom/fsck/k9/mail/Address;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v4

    .line 5580
    :cond_1
    iget-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mToMe:Z

    return v4
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5415
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->mMessageDirty:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->buildMimeRepresentation()V

    .line 5416
    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 5417
    return-void
.end method
