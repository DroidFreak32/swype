.class public Lcom/fsck/k9/mail/internet/MimeMessage;
.super Lcom/fsck/k9/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# instance fields
.field protected mBcc:[Lcom/fsck/k9/mail/Address;

.field protected mBody:Lcom/fsck/k9/mail/Body;

.field protected mCc:[Lcom/fsck/k9/mail/Address;

.field protected mDateFormat:Ljava/text/SimpleDateFormat;

.field protected mFrom:[Lcom/fsck/k9/mail/Address;

.field protected mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

.field protected mInReplyTo:[Ljava/lang/String;

.field protected mMessageId:Ljava/lang/String;

.field protected mReferences:[Ljava/lang/String;

.field protected mReplyTo:[Lcom/fsck/k9/mail/Address;

.field protected mSentDate:Ljava/util/Date;

.field protected mSize:I

.field protected mTo:[Lcom/fsck/k9/mail/Address;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fsck/k9/mail/Message;-><init>()V

    .line 24
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fsck/k9/mail/Message;-><init>()V

    .line 24
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 55
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 56
    return-void
.end method

.method private generateMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@email.android.com>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 445
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public addSentDate(Ljava/util/Date;)V
    .locals 3
    .param p1, "sentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 113
    :cond_0
    const-string v0, "Date"

    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInternalSentDate(Ljava/util/Date;)V

    .line 115
    return-void
.end method

.method public getBody()Lcom/fsck/k9/mail/Body;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 135
    const-string v1, "text/plain"

    .line 139
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "contentDisposition":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 152
    .end local v0    # "contentDisposition":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/fsck/k9/mail/Address;
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    if-nez v1, :cond_2

    .line 274
    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "list":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 281
    .end local v0    # "list":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    return-object v1
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
    .line 457
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

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
    .line 469
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 198
    :goto_0
    return-object v0

    .line 184
    :cond_1
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_2

    .line 188
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 192
    :cond_3
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_4

    .line 196
    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 202
    :cond_5
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReferences()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "References"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTo()[Lcom/fsck/k9/mail/Address;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 87
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Date"

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 89
    .local v0, "field":Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->clear()V

    .line 61
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 62
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 63
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 64
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 65
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 67
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInReplyTo:[Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 73
    iput-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 75
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 76
    .local v0, "parser":Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 77
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 78
    return-void
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
    .line 463
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "saveChanges not yet implemented"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lcom/fsck/k9/mail/Body;)V
    .locals 6
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 421
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 422
    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    instance-of v1, p1, Lcom/fsck/k9/mail/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 425
    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    .line 426
    .local v0, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mail/Multipart;->setParent(Lcom/fsck/k9/mail/Part;)V

    .line 427
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v0    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    instance-of v1, p1, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v1, :cond_0

    .line 431
    const-string v1, "Content-Type"

    const-string v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "quoted-printable"

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    instance-of v0, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/Multipart;->setEncoding(Ljava/lang/String;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/TextBody;->setEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFrom(Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "from"    # Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 289
    const-string v0, "From"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
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
    .line 451
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public setInReplyTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "inReplyTo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 354
    const-string v0, "In-Reply-To"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public setInternalSentDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "sentDate"    # Ljava/util/Date;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 127
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 347
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 349
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

    .line 209
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 211
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 214
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 245
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v0, "To"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 222
    :cond_2
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 224
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    .line 226
    :cond_3
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 227
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 231
    :cond_4
    const-string v0, "CC"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 235
    :cond_5
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    if-ne p1, v0, :cond_8

    .line 237
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 239
    :cond_6
    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 240
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 244
    :cond_7
    const-string v0, "BCC"

    invoke-static {p2}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 250
    :cond_8
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReferences(Ljava/lang/String;)V
    .locals 7
    .param p1, "references"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3c

    .line 379
    const-string v4, "\\s+"

    const-string v5, " "

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 388
    .local v1, "originalLength":I
    const/16 v4, 0x3d9

    if-lt v1, v4, :cond_0

    .line 391
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 394
    .local v2, "start":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "firstReference":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit16 v4, v4, -0x3d9

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "tail":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 403
    .end local v0    # "firstReference":Ljava/lang/String;
    .end local v2    # "start":I
    .end local v3    # "tail":Ljava/lang/String;
    :cond_0
    const-string v4, "References"

    invoke-virtual {p0, v4, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setReplyTo([Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "replyTo"    # [Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 314
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 316
    :cond_0
    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string v0, "Reply-to"

    invoke-static {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "sentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;)V

    .line 122
    return-void
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
    .line 266
    const-string v0, "Subject"

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 476
    .local v0, "writer":Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 477
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 479
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    invoke-interface {v1, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 483
    :cond_0
    return-void
.end method
