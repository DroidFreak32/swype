.class public Lcom/fsck/k9/mail/store/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;,
        Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;,
        Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    }
.end annotation


# static fields
.field private static final badDateTimeFormat:Ljava/text/SimpleDateFormat;

.field private static final badDateTimeFormat2:Ljava/text/SimpleDateFormat;

.field private static final mDateTimeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field private mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat2:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/filter/PeekableInputStream;)V
    .locals 0
    .param p1, "in"    # Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 27
    return-void
.end method

.method static synthetic access$200()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$300()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$400()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fsck/k9/mail/store/ImapResponseParser;->badDateTimeFormat2:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/ImapResponseParser;Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapResponseParser;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    return-void
.end method

.method public static equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 629
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 631
    check-cast v0, Ljava/lang/String;

    .local v0, "s1":Ljava/lang/String;
    move-object v1, p1

    .line 632
    check-cast v1, Ljava/lang/String;

    .line 633
    .local v1, "s2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 645
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    :goto_0
    return v2

    .line 635
    :cond_0
    if-eqz p0, :cond_1

    .line 637
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 639
    :cond_1
    if-eqz p1, :cond_2

    .line 641
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 645
    :cond_2
    if-ne p0, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private expect(C)I
    .locals 6
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .local v0, "d":I
    if-eq v0, p1, :cond_0

    .line 416
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    return v0
.end method

.method private parseAtom()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 261
    .local v0, "ch":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 263
    new-instance v2, Ljava/io/IOException;

    const-string v3, "parseAtom(): end of stream reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_0
    const/16 v2, 0x28

    if-eq v0, v2, :cond_2

    const/16 v2, 0x29

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    .line 277
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 279
    new-instance v2, Ljava/io/IOException;

    const-string v3, "parseAtom(): (%04x %c)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private parseCommandContinuationRequest()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method private parseList(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .locals 3
    .param p1, "parent"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 199
    new-instance v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V

    .line 200
    .local v0, "list":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseToken(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, "token":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 207
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    instance-of v2, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    if-nez v2, :cond_0

    .line 219
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    return-object v0
.end method

.method private parseLiteral()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/16 v8, 0x7b

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 300
    const/16 v8, 0x7d

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 301
    .local v7, "size":I
    const/16 v8, 0xd

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 302
    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 304
    if-nez v7, :cond_1

    .line 306
    const-string v6, ""

    .line 356
    :cond_0
    :goto_0
    return-object v6

    .line 309
    :cond_1
    iget-object v8, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$000(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 311
    new-instance v4, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-direct {v4, v8, v7}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 313
    .local v4, "fixed":Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    const/4 v6, 0x0

    .line 316
    .local v6, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$000(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-interface {v8, v9, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;->foundLiteral(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 331
    .end local v6    # "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->available()I

    move-result v0

    .line 332
    .local v0, "available":I
    if-lez v0, :cond_2

    if-eq v0, v7, :cond_2

    .line 335
    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->available()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->skip(J)J

    .line 338
    :cond_2
    if-nez v6, :cond_0

    .line 344
    .end local v0    # "available":I
    .end local v4    # "fixed":Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    :cond_3
    new-array v2, v7, [B

    .line 345
    .local v2, "data":[B
    const/4 v5, 0x0

    .line 346
    .local v5, "read":I
    :goto_2
    if-eq v5, v7, :cond_5

    .line 348
    iget-object v8, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    sub-int v9, v7, v5

    invoke-virtual {v8, v2, v5, v9}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read([BII)I

    move-result v1

    .line 349
    .local v1, "count":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 351
    new-instance v8, Ljava/io/IOException;

    const-string v9, "parseLiteral(): end of stream reached"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 318
    .end local v1    # "count":I
    .end local v2    # "data":[B
    .end local v5    # "read":I
    .restart local v4    # "fixed":Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .restart local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v8

    throw v8

    .line 323
    :catch_1
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    iput-object v3, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mException:Ljava/lang/Exception;

    goto :goto_1

    .line 353
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fixed":Lcom/fsck/k9/mail/filter/FixedLengthInputStream;
    .end local v6    # "result":Ljava/lang/Object;
    .restart local v1    # "count":I
    .restart local v2    # "data":[B
    .restart local v5    # "read":I
    :cond_4
    add-int/2addr v5, v1

    .line 354
    goto :goto_2

    .line 356
    .end local v1    # "count":I
    :cond_5
    new-instance v6, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v6, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method private parseQuoted()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 368
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 370
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 373
    .local v1, "escape":Z
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 375
    if-nez v1, :cond_0

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    .line 378
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    if-nez v1, :cond_1

    if-ne v0, v4, :cond_1

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 386
    :cond_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    const/4 v1, 0x0

    goto :goto_0

    .line 390
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "parseQuoted(): end of stream reached"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseSequence(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .locals 3
    .param p1, "parent"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 228
    new-instance v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V

    .line 229
    .local v0, "list":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseToken(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "token":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 236
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    instance-of v2, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    return-object v0
.end method

.method private parseTaggedResponse()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readStringUntil(C)Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private parseToken(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;
    .locals 7
    .param p1, "parent"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x29

    const/16 v5, 0x20

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v2, 0xa

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 124
    .local v0, "ch":I
    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseList(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v1

    .line 171
    :goto_1
    return-object v1

    .line 128
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseSequence(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v1

    goto :goto_1

    .line 132
    :cond_1
    if-ne v0, v6, :cond_2

    .line 134
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 135
    const-string v1, ")"

    goto :goto_1

    .line 137
    :cond_2
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_3

    .line 139
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 140
    const-string v1, "]"

    goto :goto_1

    .line 142
    :cond_3
    const/16 v1, 0x22

    if-ne v0, v1, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseQuoted()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 146
    :cond_4
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_5

    .line 148
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseLiteral()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 150
    :cond_5
    if-ne v0, v5, :cond_6

    .line 152
    invoke-direct {p0, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    goto :goto_0

    .line 154
    :cond_6
    if-ne v0, v4, :cond_7

    .line 156
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 157
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 158
    const/4 v1, 0x0

    goto :goto_1

    .line 160
    :cond_7
    if-ne v0, v2, :cond_8

    .line 162
    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 163
    const/4 v1, 0x0

    goto :goto_1

    .line 165
    :cond_8
    if-ne v0, v3, :cond_9

    .line 167
    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    goto :goto_0

    .line 171
    :cond_9
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseAtom()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private parseUntaggedResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 186
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->expect(C)I

    .line 187
    return-void
.end method

.method private readStringUntil(C)Ljava/lang/String;
    .locals 4
    .param p1, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 397
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 399
    if-ne v0, p1, :cond_0

    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 405
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 408
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "readStringUntil(): end of stream reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readToken(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)Ljava/lang/Object;
    .locals 2
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseToken(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :cond_1
    return-object v0
.end method

.method private readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->clear()V

    .line 86
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readToken(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 88
    instance-of v1, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {p1, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$102(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Z)Z

    .line 94
    return-void

    .line 93
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .locals 6
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 45
    :try_start_0
    new-instance v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-direct {v1, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V

    .line 46
    .local v1, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 47
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v2, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;

    .line 49
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    move-result v0

    .line 50
    .local v0, "ch":I
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseUntaggedResponse()V

    .line 53
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mException:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 69
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "readResponse(): Exception in callback method"

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mException:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "ch":I
    .end local v1    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v3, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;

    .line 77
    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 78
    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mException:Ljava/lang/Exception;

    throw v2

    .line 55
    .restart local v0    # "ch":I
    .restart local v1    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_0
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    .line 57
    :try_start_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseCommandContinuationRequest()Z

    move-result v2

    iput-boolean v2, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    .line 59
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->parseTaggedResponse()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    .line 64
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v2, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;

    .line 77
    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mResponse:Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 78
    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapResponseParser;->mException:Ljava/lang/Exception;

    return-object v1
.end method
