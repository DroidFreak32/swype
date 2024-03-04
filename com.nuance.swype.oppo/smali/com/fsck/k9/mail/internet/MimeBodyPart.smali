.class public Lcom/fsck/k9/mail/internet/MimeBodyPart;
.super Lcom/fsck/k9/mail/BodyPart;
.source "MimeBodyPart.java"


# instance fields
.field protected mBody:Lcom/fsck/k9/mail/Body;

.field protected mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

.field protected mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Body;)V
    .locals 1
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fsck/k9/mail/BodyPart;-><init>()V

    .line 19
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 35
    if-eqz p2, :cond_0

    .line 37
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public getBody()Lcom/fsck/k9/mail/Body;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 122
    const-string v3, "Content-ID"

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "contentId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 137
    .end local v0    # "contentId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 129
    .restart local v0    # "contentId":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 130
    .local v1, "first":I
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 131
    .local v2, "last":I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 133
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 99
    const-string v0, "text/plain"

    .line 103
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "contentDisposition":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    .end local v0    # "contentDisposition":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

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
    .line 144
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mSize:I

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setBody(Lcom/fsck/k9/mail/Body;)V
    .locals 8
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 75
    instance-of v3, p1, Lcom/fsck/k9/mail/Multipart;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 77
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 78
    .local v1, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v1, p0}, Lcom/fsck/k9/mail/Multipart;->setParent(Lcom/fsck/k9/mail/Part;)V

    .line 79
    const-string v3, "Content-Type"

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v1    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    instance-of v3, p1, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "%s;\n charset=utf-8"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n name=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_2
    const-string v3, "Content-Type"

    invoke-virtual {p0, v3, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "quoted-printable"

    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
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
    .line 162
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 163
    .local v0, "writer":Ljava/io/BufferedWriter;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 164
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 166
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    invoke-interface {v1, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 170
    :cond_0
    return-void
.end method
