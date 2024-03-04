.class public Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.super Ljava/util/ArrayList;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 549
    :try_start_0
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$200()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :try_start_1
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$200()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    :goto_0
    return-object v0

    .line 552
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 558
    :try_start_3
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 560
    :try_start_4
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 561
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 565
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$400()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1

    .line 567
    :try_start_6
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$400()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 568
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 516
    if-nez p1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v2

    .line 521
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 523
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    const/4 v2, 0x1

    goto :goto_0

    .line 521
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 459
    :catch_0
    move-exception v0

    .line 461
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Unable to parse IMAP datetime"

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKeyIndex(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 533
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 535
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    return v1

    .line 533
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "getKeyIndex() only works for keys that are in the collection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 501
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 504
    const/4 v2, 0x0

    .line 506
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 508
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 510
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Unable to parse IMAP datetime"

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKeyedList(Ljava/lang/Object;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    return-object v0
.end method

.method public getKeyedLiteral(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getKeyedNumber(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 467
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 469
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 474
    :goto_1
    return-object v2

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    return-object v0
.end method

.method public getLiteral(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getNumber(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
