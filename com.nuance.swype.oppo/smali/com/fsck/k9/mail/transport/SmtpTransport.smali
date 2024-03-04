.class public Lcom/fsck/k9/mail/transport/SmtpTransport;
.super Lcom/fsck/k9/mail/Transport;
.source "SmtpTransport.java"


# static fields
.field public static final CONNECTION_SECURITY_NONE:I = 0x0

.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4

.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3

.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1

.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2


# instance fields
.field private m8bitEncodingAllowed:Z

.field mAuthType:Ljava/lang/String;

.field mConnectionSecurity:I

.field mHost:Ljava/lang/String;

.field mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field mOut:Ljava/io/OutputStream;

.field mPassword:Ljava/lang/String;

.field mPort:I

.field mSecure:Z

.field mSocket:Ljava/net/Socket;

.field mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "_uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1d1

    const/4 v9, 0x0

    const/16 v6, 0x19

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 75
    invoke-direct {p0}, Lcom/fsck/k9/mail/Transport;-><init>()V

    .line 79
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "scheme":Ljava/lang/String;
    const-string v5, "smtp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    iput v9, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    .line 90
    iput v6, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    .line 117
    :goto_0
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;

    .line 119
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 121
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    iput v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    .line 124
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 128
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "userInfoParts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;

    .line 130
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 132
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;

    .line 134
    :cond_1
    array-length v5, v4

    if-le v5, v8, :cond_2

    .line 136
    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mAuthType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v4    # "userInfoParts":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 81
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 83
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Invalid SmtpTransport URI"

    invoke-direct {v5, v6, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 92
    .end local v3    # "use":Ljava/net/URISyntaxException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/net/URI;
    :cond_3
    const-string v5, "smtp+tls"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    iput v7, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    .line 95
    iput v6, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    goto :goto_0

    .line 97
    :cond_4
    const-string v5, "smtp+tls+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 99
    iput v8, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    .line 100
    iput v6, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    goto :goto_0

    .line 102
    :cond_5
    const-string v5, "smtp+ssl+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 104
    const/4 v5, 0x3

    iput v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    .line 105
    iput v10, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    goto :goto_0

    .line 107
    :cond_6
    const-string v5, "smtp+ssl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 109
    const/4 v5, 0x4

    iput v5, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    .line 110
    iput v10, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    goto/16 :goto_0

    .line 114
    :cond_7
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Unsupported protocol"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :catch_1
    move-exception v0

    .line 142
    .local v0, "enc":Ljava/io/UnsupportedEncodingException;
    const-string v5, "k9"

    const-string v6, "Couldn\'t urldecode username or password."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private checkLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 468
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "SMTP response is 0 length"

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 471
    .local v0, "c":C
    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-ne v0, v1, :cond_2

    .line 473
    :cond_1
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    invoke-direct {v1, p1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_2
    return-void
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->writeLine(Ljava/lang/String;Z)V

    .line 491
    :cond_0
    const/4 v0, 0x0

    .line 494
    .local v0, "cont":Z
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->checkLine(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 498
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 501
    const/4 v0, 0x1

    .line 509
    :cond_2
    :goto_0
    if-nez v0, :cond_1

    .line 510
    return-object v2

    .line 505
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v2, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .local v0, "d":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 407
    int-to-char v3, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    .line 409
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 413
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_SMTP:Z

    if-eqz v3, :cond_2

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SMTP <<< "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    :cond_2
    return-object v1
.end method

.method private saslAuthCramMD5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Lcom/fsck/k9/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    const-string v12, "AUTH CRAM-MD5"

    invoke-direct {p0, v12}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 576
    .local v9, "respList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    new-instance v12, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v13, "Unable to negotiate CRAM-MD5"

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 577
    :cond_0
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 578
    const-string v13, "US-ASCII"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/fsck/k9/mail/filter/Base64;->decodeBase64([B)[B

    move-result-object v7

    .line 579
    .local v7, "nonce":[B
    const/16 v12, 0x40

    new-array v5, v12, [B

    .line 580
    .local v5, "ipad":[B
    const/16 v12, 0x40

    new-array v8, v12, [B

    .line 581
    .local v8, "opad":[B
    const-string v12, "US-ASCII"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 585
    .local v11, "secretBytes":[B
    :try_start_0
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 591
    .local v6, "md":Ljava/security/MessageDigest;
    array-length v12, v11

    const/16 v13, 0x40

    if-le v12, v13, :cond_1

    .line 593
    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    .line 595
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v5

    if-ge v4, v12, :cond_2

    aget-byte v12, v5, v4

    xor-int/lit8 v12, v12, 0x36

    int-to-byte v12, v12

    aput-byte v12, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 589
    .end local v4    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v12

    new-instance v12, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v13, "MD5 Not Available."

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 598
    .restart local v4    # "i":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    const/4 v4, 0x0

    :goto_1
    array-length v12, v8

    if-ge v4, v12, :cond_3

    aget-byte v12, v8, v4

    xor-int/lit8 v12, v12, 0x5c

    int-to-byte v12, v12

    aput-byte v12, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    :cond_3
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 600
    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 601
    .local v3, "firstPass":[B
    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 602
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 603
    .local v10, "result":[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 604
    const-string v13, "US-ASCII"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B

    move-result-object v1

    .line 605
    .local v1, "b64CRAM":[B
    new-instance v2, Ljava/lang/String;

    const-string v12, "US-ASCII"

    invoke-direct {v2, v1, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 608
    .local v2, "b64CRAMString":Ljava/lang/String;
    const/4 v12, 0x1

    :try_start_1
    invoke-direct {p0, v2, v12}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 613
    return-void

    .line 612
    :catch_1
    move-exception v12

    new-instance v12, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v13, "Unable to negotiate MD5 CRAM"

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Lcom/fsck/k9/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 537
    :try_start_0
    const-string v1, "AUTH LOGIN"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 538
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    .line 539
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/filter/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 545
    new-instance v1, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AUTH LOGIN failed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_0
    throw v0
.end method

.method private saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Lcom/fsck/k9/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 556
    .local v0, "data":[B
    new-instance v2, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v2}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/filter/Base64;->encode([B)[B

    move-result-object v0

    .line 559
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AUTH PLAIN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    return-void

    .line 561
    :catch_0
    move-exception v1

    .line 563
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 565
    new-instance v2, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AUTH PLAIN failed ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_0
    throw v1
.end method

.method private writeLine(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 429
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_SMTP:Z

    if-eqz v2, :cond_1

    .line 432
    if-eqz p2, :cond_0

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    if-eqz v2, :cond_1

    .line 434
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SMTP >>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 449
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x2

    new-array v0, v2, [B

    .line 450
    .local v0, "data":[B
    invoke-virtual {p1, v4, v1, v0, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 451
    add-int/lit8 v2, v1, 0x0

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    .line 452
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 460
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 461
    iget-object v2, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 462
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 374
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 382
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 390
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 396
    :goto_3
    iput-object v1, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 397
    iput-object v1, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    .line 398
    iput-object v1, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    .line 399
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public open()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    new-instance v16, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v16, "socketAddress":Ljava/net/SocketAddress;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 156
    :cond_0
    const-string v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v17

    .line 157
    .local v17, "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    .line 158
    .local v15, "secure":Z
    :goto_0
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v21

    aput-object v21, v19, v20

    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual/range {v17 .. v20}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 162
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 164
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSecure:Z

    .line 173
    .end local v15    # "secure":Z
    .end local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const v19, 0x493e0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 175
    new-instance v18, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    const/16 v21, 0x400

    invoke-direct/range {v19 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    .line 179
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v11

    .line 182
    .local v11, "localAddress":Ljava/net/InetAddress;
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "localHost":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "ipAddr":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "_"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 189
    :cond_1
    instance-of v0, v11, Ljava/net/Inet6Address;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 191
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[IPV6:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 199
    :cond_2
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "EHLO "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 201
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "8BITMIME"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->m8bitEncodingAllowed:Z

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 214
    :cond_3
    const-string v18, "STARTTLS"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 216
    const-string v18, "STARTTLS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 218
    const-string v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v17

    .line 219
    .restart local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    .line 220
    .restart local v15    # "secure":Z
    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v21

    aput-object v21, v19, v20

    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual/range {v17 .. v20}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 224
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mHost:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPort:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v22}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    .line 226
    new-instance v18, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    const/16 v21, 0x400

    invoke-direct/range {v19 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    .line 229
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSecure:Z

    .line 234
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "EHLO "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 245
    .end local v15    # "secure":Z
    .end local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_4
    const/4 v4, 0x0

    .line 246
    .local v4, "authLoginSupported":Z
    const/4 v5, 0x0

    .line 247
    .local v5, "authPlainSupported":Z
    const/4 v3, 0x0

    .line 248
    .local v3, "authCramMD5Supported":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 250
    .local v13, "result":Ljava/lang/String;
    const-string v18, ".*AUTH.*LOGIN.*$"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 252
    const/4 v4, 0x1

    .line 254
    :cond_6
    const-string v18, ".*AUTH.*PLAIN.*$"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 256
    const/4 v5, 0x1

    .line 258
    :cond_7
    const-string v18, ".*AUTH.*CRAM-MD5.*$"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mAuthType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mAuthType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "CRAM_MD5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 260
    const/4 v3, 0x1

    goto :goto_4

    .line 157
    .end local v3    # "authCramMD5Supported":Z
    .end local v4    # "authLoginSupported":Z
    .end local v5    # "authPlainSupported":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "ipAddr":Ljava/lang/String;
    .end local v11    # "localAddress":Ljava/net/InetAddress;
    .end local v12    # "localHost":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 168
    .end local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_9
    new-instance v18, Ljava/net/Socket;

    invoke-direct/range {v18 .. v18}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mSocket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 285
    .end local v16    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v6

    .line 287
    .local v6, "e":Ljavax/net/ssl/SSLException;
    new-instance v18, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 195
    .end local v6    # "e":Ljavax/net/ssl/SSLException;
    .restart local v10    # "ipAddr":Ljava/lang/String;
    .restart local v11    # "localAddress":Ljava/net/InetAddress;
    .restart local v12    # "localHost":Ljava/lang/String;
    .restart local v16    # "socketAddress":Ljava/net/SocketAddress;
    :cond_a
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 219
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 236
    .end local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mConnectionSecurity:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 238
    new-instance v18, Lcom/fsck/k9/mail/MessagingException;

    const-string v19, "TLS not supported but required"

    invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 289
    .end local v10    # "ipAddr":Ljava/lang/String;
    .end local v11    # "localAddress":Ljava/net/InetAddress;
    .end local v12    # "localHost":Ljava/lang/String;
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "socketAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v7

    .line 291
    .local v7, "gse":Ljava/security/GeneralSecurityException;
    new-instance v18, Lcom/fsck/k9/mail/MessagingException;

    const-string v19, "Unable to open connection to SMTP server due to security error."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 264
    .end local v7    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v3    # "authCramMD5Supported":Z
    .restart local v4    # "authLoginSupported":Z
    .restart local v5    # "authPlainSupported":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "ipAddr":Ljava/lang/String;
    .restart local v11    # "localAddress":Ljava/net/InetAddress;
    .restart local v12    # "localHost":Ljava/lang/String;
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "socketAddress":Ljava/net/SocketAddress;
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 267
    if-eqz v3, :cond_f

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->saslAuthCramMD5(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_e
    :goto_5
    return-void

    .line 271
    :cond_f
    if-eqz v5, :cond_10

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 294
    .end local v3    # "authCramMD5Supported":Z
    .end local v4    # "authLoginSupported":Z
    .end local v5    # "authPlainSupported":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "ipAddr":Ljava/lang/String;
    .end local v11    # "localAddress":Ljava/net/InetAddress;
    .end local v12    # "localHost":Ljava/lang/String;
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "socketAddress":Ljava/net/SocketAddress;
    :catch_2
    move-exception v9

    .line 296
    .local v9, "ioe":Ljava/io/IOException;
    new-instance v18, Lcom/fsck/k9/mail/MessagingException;

    const-string v19, "Unable to open connection to SMTP server."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 275
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v3    # "authCramMD5Supported":Z
    .restart local v4    # "authLoginSupported":Z
    .restart local v5    # "authPlainSupported":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "ipAddr":Ljava/lang/String;
    .restart local v11    # "localAddress":Ljava/net/InetAddress;
    .restart local v12    # "localHost":Ljava/lang/String;
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "socketAddress":Ljava/net/SocketAddress;
    :cond_10
    if-eqz v4, :cond_11

    .line 277
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mUsername:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/transport/SmtpTransport;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 281
    :cond_11
    new-instance v18, Lcom/fsck/k9/mail/MessagingException;

    const-string v19, "No valid authentication mechanism found."

    invoke-direct/range {v18 .. v19}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
.end method

.method public sendMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 14
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->close()V

    .line 304
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->open()V

    .line 306
    iget-boolean v9, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->m8bitEncodingAllowed:Z

    if-eqz v9, :cond_0

    .line 308
    const-string v9, "8bit"

    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/Message;->setEncoding(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    .line 312
    .local v3, "from":[Lcom/fsck/k9/mail/Address;
    const/4 v8, 0x0

    .line 316
    .local v8, "possibleSend":Z
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MAIL FROM: <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 317
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    .local v1, "arr$":[Lcom/fsck/k9/mail/Address;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 319
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "RCPT TO: <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_1
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 323
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "RCPT TO: <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_2
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 327
    .restart local v0    # "address":Lcom/fsck/k9/mail/Address;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "RCPT TO: <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 329
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    :cond_3
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lcom/fsck/k9/mail/Message;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 330
    const-string v9, "DATA"

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 332
    new-instance v7, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    new-instance v9, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;

    new-instance v10, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;

    new-instance v11, Ljava/io/BufferedOutputStream;

    iget-object v12, p0, Lcom/fsck/k9/mail/transport/SmtpTransport;->mOut:Ljava/io/OutputStream;

    const/16 v13, 0x400

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v12, 0x3e8

    invoke-direct {v10, v11, v12}, Lcom/fsck/k9/mail/filter/LineWrapOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v9}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 338
    .local v7, "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 341
    invoke-virtual {v7}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 343
    const/4 v8, 0x1

    .line 344
    const-string v9, "\r\n."

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/transport/SmtpTransport;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->close()V

    .line 355
    return-void

    .line 346
    .end local v1    # "arr$":[Lcom/fsck/k9/mail/Address;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "Unable to send message"

    invoke-direct {v6, v9, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .local v6, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v6, v8}, Lcom/fsck/k9/mail/MessagingException;->setPermanentFailure(Z)V

    .line 350
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/fsck/k9/mail/transport/SmtpTransport;->close()V

    throw v9
.end method
