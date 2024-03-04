.class public Lcom/fsck/k9/mail/internet/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private mBody:Ljava/lang/String;

.field private mEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/fsck/k9/mail/internet/TextBody;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 70
    .local v0, "b":[B
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .end local v0    # "b":[B
    :goto_1
    return-object v1

    .line 68
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/internet/TextBody;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 74
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mEncoding:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    .local v0, "bytes":[B
    const-string v2, "8bit"

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/TextBody;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 43
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v0    # "bytes":[B
    :cond_1
    new-instance v1, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    .local v1, "qp":Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([B)V

    .line 40
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flush()V

    goto :goto_0
.end method
