.class public Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapFolder"
.end annotation


# instance fields
.field protected volatile mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

.field private volatile mExists:Z

.field protected volatile mMessageCount:I

.field private mMode:Lcom/fsck/k9/mail/Folder$OpenMode;

.field private mName:Ljava/lang/String;

.field msgSeqUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/fsck/k9/mail/store/ImapStore;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;

.field protected volatile uidNext:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 2
    .param p2, "nStore"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 517
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    .line 518
    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/ImapStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/Folder;-><init>(Lcom/fsck/k9/Account;)V

    .line 507
    iput v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 508
    iput v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->uidNext:I

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->store:Lcom/fsck/k9/mail/store/ImapStore;

    .line 513
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->msgSeqUidMap:Ljava/util/Map;

    .line 519
    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->store:Lcom/fsck/k9/mail/store/ImapStore;

    .line 520
    iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    .line 521
    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2041
    :cond_0
    return-void
.end method

.method private combineFlags([Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;
    .locals 7
    .param p1, "flags"    # [Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 1922
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    .local v2, "flagNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/fsck/k9/mail/Flag;
    array-length v4, p1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 1925
    .local v1, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v5, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v5, :cond_1

    .line 1927
    const-string v5, "\\Seen"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1929
    :cond_1
    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v5, :cond_2

    .line 1931
    const-string v5, "\\Deleted"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1933
    :cond_2
    sget-object v5, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v5, :cond_3

    .line 1935
    const-string v5, "\\Answered"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1937
    :cond_3
    sget-object v5, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    if-ne v1, v5, :cond_0

    .line 1939
    const-string v5, "\\Flagged"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1943
    .end local v1    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 719
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    const-string v4, "STATUS \"%s\" (RECENT)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 728
    :goto_0
    return v1

    .line 722
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v1

    throw v1

    .line 728
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method private getRemoteMessageCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "criteria"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "count":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SEARCH %d:* "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 940
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 942
    .local v3, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "SEARCH"

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 944
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v0, v4

    goto :goto_0

    .line 949
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :catch_0
    move-exception v2

    .line 951
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v4, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v4

    throw v4

    .line 947
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method private handleFetchResponse(Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;
    .locals 11
    .param p1, "message"    # Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .param p2, "fetchList"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1437
    const/4 v7, 0x0

    .line 1438
    .local v7, "result":Ljava/lang/Object;
    const-string v9, "FLAGS"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1440
    const-string v9, "FLAGS"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v3

    .line 1441
    .local v3, "flags":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    if-eqz v3, :cond_4

    .line 1443
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1445
    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1446
    .local v2, "flag":Ljava/lang/String;
    const-string v9, "\\Deleted"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1448
    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v9, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1443
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1450
    :cond_1
    const-string v9, "\\Answered"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1452
    sget-object v9, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v9, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1454
    :cond_2
    const-string v9, "\\Seen"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1456
    sget-object v9, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v9, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1458
    :cond_3
    const-string v9, "\\Flagged"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1460
    sget-object v9, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v9, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1466
    .end local v1    # "count":I
    .end local v2    # "flag":Ljava/lang/String;
    .end local v3    # "flags":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v4    # "i":I
    :cond_4
    const-string v9, "INTERNALDATE"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1468
    const-string v9, "INTERNALDATE"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v6

    .line 1469
    .local v6, "internalDate":Ljava/util/Date;
    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 1472
    .end local v6    # "internalDate":Ljava/util/Date;
    :cond_5
    const-string v9, "RFC822.SIZE"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1474
    const-string v9, "RFC822.SIZE"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedNumber(Ljava/lang/Object;)I

    move-result v8

    .line 1475
    .local v8, "size":I
    invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1478
    .end local v8    # "size":I
    :cond_6
    const-string v9, "BODYSTRUCTURE"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1480
    const-string v9, "BODYSTRUCTURE"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v0

    .line 1481
    .local v0, "bs":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    if-eqz v0, :cond_7

    .line 1485
    :try_start_0
    const-string v9, "TEXT"

    invoke-direct {p0, v0, p1, v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    .end local v0    # "bs":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    :cond_7
    :goto_2
    const-string v9, "BODY"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1498
    const-string v9, "BODY"

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyIndex(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v5, v9, 0x2

    .line 1499
    .local v5, "index":I
    invoke-virtual {p2, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 1502
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_8

    move-object v9, v7

    .line 1504
    check-cast v9, Ljava/lang/String;

    .line 1505
    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1507
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 1512
    .end local v5    # "index":I
    .end local v7    # "result":Ljava/lang/Object;
    :cond_8
    return-object v7

    .line 1489
    .restart local v0    # "bs":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v7    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v9

    sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 1490
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error handling message for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1491
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    goto :goto_2
.end method

.method private ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
    .locals 3
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 2045
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2046
    if-eqz p1, :cond_0

    .line 2048
    invoke-static {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 2050
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->close()V

    .line 2051
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    .locals 22
    .param p1, "bs"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1620
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1625
    new-instance v13, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {v13}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>()V

    .line 1626
    .local v13, "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v9

    .local v9, "count":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 1628
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1634
    new-instance v6, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;

    invoke-direct {v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;-><init>()V

    .line 1635
    .local v6, "bp":Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
    const-string v17, "TEXT"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1637
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v17

    add-int/lit8 v18, v11, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    .line 1643
    :goto_1
    invoke-virtual {v13, v6}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 1626
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1641
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v11, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 1651
    .end local v6    # "bp":Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1652
    .local v15, "subType":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1656
    .end local v15    # "subType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 1796
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v13    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    :goto_2
    return-void

    .line 1676
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1677
    .local v16, "type":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1678
    .restart local v15    # "subType":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 1680
    .local v12, "mimeType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1681
    .local v5, "bodyParams":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1683
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v5

    .line 1685
    :cond_4
    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1686
    .local v10, "encoding":Ljava/lang/String;
    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getNumber(I)I

    move-result v14

    .line 1688
    .local v14, "size":I
    const-string v17, "message/rfc822"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1698
    new-instance v17, Lcom/fsck/k9/mail/MessagingException;

    const-string v18, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1704
    :cond_5
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1706
    .local v8, "contentType":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1712
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v9

    .restart local v9    # "count":I
    :goto_3
    if-ge v11, v9, :cond_6

    .line 1714
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";\n %s=\"%s\""

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v5, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v21, v11, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1712
    add-int/lit8 v11, v11, 0x2

    goto :goto_3

    .line 1720
    .end local v9    # "count":I
    .end local v11    # "i":I
    :cond_6
    const-string v17, "Content-Type"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v8}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const/4 v3, 0x0

    .line 1724
    .local v3, "bodyDisposition":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    const-string v17, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1728
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v3

    .line 1737
    :cond_7
    :goto_4
    const-string v7, ""

    .line 1739
    .local v7, "contentDisposition":Ljava/lang/String;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v17

    if-lez v17, :cond_a

    .line 1741
    const-string v17, "NIL"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1743
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1746
    :cond_8
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1749
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v4

    .line 1754
    .local v4, "bodyDispositionParams":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v9

    .restart local v9    # "count":I
    :goto_5
    if-ge v11, v9, :cond_a

    .line 1756
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";\n %s=\"%s\""

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v4, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v21, v11, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1754
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 1730
    .end local v4    # "bodyDispositionParams":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v7    # "contentDisposition":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "i":I
    :cond_9
    const-string v17, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1734
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v3

    goto/16 :goto_4

    .line 1763
    .restart local v7    # "contentDisposition":Ljava/lang/String;
    :cond_a
    const-string v17, "size"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_b

    .line 1765
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";\n size=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1772
    :cond_b
    const-string v17, "Content-Disposition"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v7}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v17, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v17, p2

    .line 1783
    check-cast v17, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1793
    :goto_6
    const-string v17, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1785
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v17, p2

    .line 1787
    check-cast v17, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->setSize(I)V

    goto :goto_6

    .line 1791
    :cond_d
    new-instance v17, Lcom/fsck/k9/mail/MessagingException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unknown part type "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v17
.end method


# virtual methods
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->appendMessages([Lcom/fsck/k9/mail/Message;Z)V

    .line 1801
    return-void
.end method

.method public appendMessages([Lcom/fsck/k9/mail/Message;Z)V
    .locals 18
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "determineUids"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1810
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1813
    move-object/from16 v2, p1

    .local v2, "arr$":[Lcom/fsck/k9/mail/Message;
    :try_start_0
    move-object/from16 v0, p1

    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v8, v2, v4

    .line 1815
    .local v8, "message":Lcom/fsck/k9/mail/Message;
    new-instance v10, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    invoke-direct {v10}, Lcom/fsck/k9/mail/filter/CountingOutputStream;-><init>()V

    .line 1816
    .local v10, "out":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    new-instance v3, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    invoke-direct {v3, v10}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1817
    .local v3, "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {v8, v3}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1818
    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 1820
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v12

    if-nez v12, :cond_4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1823
    .local v5, "internalDate":Ljava/util/Date;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    const-string v13, "APPEND \"%s\" (%s) \"%s\" {%d}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getFlags()[Lcom/fsck/k9/mail/Flag;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->combineFlags([Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Lcom/fsck/k9/mail/store/ImapStore;->INTERNAL_DATE:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v10}, Lcom/fsck/k9/mail/filter/CountingOutputStream;->getCount()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1832
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v12}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1200(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v11

    .line 1833
    .local v11, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 1834
    iget-boolean v12, v11, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    if-eqz v12, :cond_1

    .line 1836
    new-instance v3, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    .end local v3    # "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v12}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1300(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1837
    .restart local v3    # "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {v8, v3}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1838
    const/16 v12, 0xd

    invoke-virtual {v3, v12}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->write(I)V

    .line 1839
    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->write(I)V

    .line 1840
    invoke-virtual {v3}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 1842
    :cond_1
    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1844
    iget-object v12, v11, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1846
    if-eqz p2, :cond_3

    .line 1847
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v9

    .line 1849
    .local v9, "newUid":Ljava/lang/String;
    sget-boolean v12, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 1850
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Got UID "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for message for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1852
    :cond_2
    if-eqz v9, :cond_3

    .line 1854
    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1813
    .end local v9    # "newUid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1820
    .end local v5    # "internalDate":Ljava/util/Date;
    .end local v11    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_4
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_1

    .line 1859
    .end local v3    # "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "message":Lcom/fsck/k9/mail/Message;
    .end local v10    # "out":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    :catch_0
    move-exception v6

    .line 1861
    .local v6, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v12

    throw v12

    .line 1862
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    :cond_5
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 690
    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    if-eq v0, v1, :cond_0

    .line 692
    iput v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :goto_0
    return-void

    .line 699
    :cond_1
    monitor-enter p0

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 703
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 11
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 826
    instance-of v6, p2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    if-nez v6, :cond_0

    .line 828
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "ImapFolder.copyMessages passed non-ImapFolder"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 831
    :cond_0
    array-length v6, p1

    if-nez v6, :cond_1

    .line 857
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    .line 834
    check-cast v2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    .line 835
    .local v2, "iFolder":Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 836
    array-length v6, p1

    new-array v5, v6, [Ljava/lang/String;

    .line 837
    .local v5, "uids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 839
    aget-object v6, p1, v1

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 843
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, "remoteDestName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 850
    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 851
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMAPMessage.copyMessages: attempting to create remote \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' folder for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_3
    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 855
    :cond_4
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 857
    const-string v6, "UID COPY %s \"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x2c

    invoke-static {v5, v9}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    .end local v4    # "remoteDestName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 870
    .local v3, "ioe":Ljava/io/IOException;
    iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v6, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v6

    throw v6

    .line 863
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v4    # "remoteDestName":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMAPMessage.copyMessages: remote destination folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not exist and could not be created for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 9
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_1

    .line 793
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/ImapStore;->access$200(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 799
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :try_start_1
    const-string v4, "CREATE \"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v2

    .line 797
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 799
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 808
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v2, :cond_2

    .line 818
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v2, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v2, v3

    goto :goto_1

    .line 810
    :catch_1
    move-exception v1

    .line 812
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 816
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_3

    .line 818
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v2
.end method

.method public delete(Z)V
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 997
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ImapStore.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
    .locals 6
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 886
    array-length v2, p1

    if-nez v2, :cond_0

    .line 913
    :goto_0
    return-void

    .line 889
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    :cond_1
    new-array v2, v5, [Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x0

    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getStore()Lcom/fsck/k9/mail/store/ImapStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fsck/k9/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    .line 896
    .local v0, "remoteTrashFolder":Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "remoteTrashName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 903
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 904
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAPMessage.delete: attempting to create remote \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' folder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_3
    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 908
    :cond_4
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 910
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMAPMessage.delete: copying remote "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 917
    :cond_6
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAPMessage.delete: remote Trash folder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist and could not be created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2057
    instance-of v0, p1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    if-eqz v0, :cond_0

    .line 2059
    check-cast p1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2061
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitve"    # Z
    .param p3, "untaggedHandler"    # Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$500(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public exists()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 735
    iget-boolean v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v4, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v2

    .line 744
    :cond_1
    const/4 v0, 0x0

    .line 745
    .local v0, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 747
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_2

    .line 749
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/ImapStore;->access$200(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 755
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :try_start_1
    const-string v4, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 760
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 761
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0

    .line 753
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 755
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 765
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v2, :cond_3

    .line 775
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v2, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    move v2, v3

    goto :goto_0

    .line 767
    :catch_1
    move-exception v1

    .line 769
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 773
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_4

    .line 775
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :cond_4
    throw v2
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1912
    :try_start_0
    const-string v1, "EXPUNGE"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1916
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v1

    throw v1
.end method

.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 27
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1172
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 1326
    :cond_0
    return-void

    .line 1176
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1177
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1178
    .local v19, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1179
    .local v14, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p1

    array-length v6, v0

    .local v6, "count":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 1182
    aget-object v21, p1, v9

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    .line 1183
    .local v17, "uid":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    aget-object v21, p1, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1193
    .end local v17    # "uid":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1194
    .local v7, "fetchFields":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v21, "UID"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1195
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1197
    const-string v21, "FLAGS"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_3
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1201
    const-string v21, "INTERNALDATE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1202
    const-string v21, "RFC822.SIZE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1203
    const-string v21, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc reply-to X-K9mail-Identity)]"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_4
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1208
    const-string v21, "BODYSTRUCTURE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1210
    :cond_5
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1212
    const-string v21, "BODY.PEEK[]<0.%d>"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1214
    :cond_6
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1216
    const-string v21, "BODY.PEEK[]"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_7
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->DATE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1220
    const-string v21, "BODY.PEEK[HEADER.FIELDS (date)]"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_8
    const/16 v20, 0x0

    .local v20, "windowStart":I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 1227
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$900()I

    move-result v21

    add-int v21, v21, v20

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-interface/range {v19 .. v21}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    .line 1231
    .local v18, "uidWindow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    const-string v22, "UID FETCH %s (%s)"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    const/16 v26, 0x2c

    invoke-static/range {v25 .. v26}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    const/16 v26, 0x20

    invoke-static/range {v25 .. v26}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1236
    const/4 v5, 0x0

    .line 1239
    .local v5, "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    sget-object v21, Lcom/fsck/k9/mail/FetchProfile$Item;->DATE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1241
    :cond_9
    new-instance v5, Lcom/fsck/k9/mail/store/ImapStore$FetchBodyCallback;

    .end local v5    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    invoke-direct {v5, v14}, Lcom/fsck/k9/mail/store/ImapStore$FetchBodyCallback;-><init>(Ljava/util/HashMap;)V

    .line 1246
    .restart local v5    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v16

    .line 1248
    .local v16, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_12

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v21

    const-string v22, "FETCH"

    invoke-static/range {v21 .. v22}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1250
    const-string v21, "FETCH"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    .line 1251
    .local v8, "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    const-string v21, "UID"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1252
    .restart local v17    # "uid":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 1253
    .local v15, "msgSeq":I
    if-eqz v17, :cond_b

    .line 1257
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->msgSeqUidMap:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-boolean v21, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v21, :cond_b

    .line 1260
    const-string v21, "k9"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Stored uid \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' for msgSeq "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " into map "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1269
    :cond_b
    :goto_2
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fsck/k9/mail/Message;

    .line 1270
    .local v13, "message":Lcom/fsck/k9/mail/Message;
    if-nez v13, :cond_d

    .line 1272
    sget-boolean v21, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v21, :cond_c

    .line 1273
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Do not have message in messageMap for UID "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1275
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 1319
    .end local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v13    # "message":Lcom/fsck/k9/mail/Message;
    .end local v15    # "msgSeq":I
    .end local v17    # "uid":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v21, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v21, :cond_a

    .line 1225
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$900()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    add-int v20, v20, v21

    goto/16 :goto_1

    .line 1265
    .restart local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v15    # "msgSeq":I
    .restart local v17    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v21

    :try_start_3
    const-string v21, "k9"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Unable to store uid \'"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' for msgSeq "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1321
    .end local v5    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .end local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v15    # "msgSeq":I
    .end local v16    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v17    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1323
    .local v11, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v21

    throw v21

    .line 1278
    .end local v11    # "ioe":Ljava/io/IOException;
    .restart local v5    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .restart local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v13    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v15    # "msgSeq":I
    .restart local v16    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .restart local v17    # "uid":Ljava/lang/String;
    :cond_d
    if-eqz p3, :cond_e

    .line 1280
    :try_start_4
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    .line 1283
    :cond_e
    move-object v0, v13

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    move-object v10, v0

    .line 1285
    .local v10, "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleFetchResponse(Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v12

    .line 1287
    .local v12, "literal":Ljava/lang/Object;
    if-eqz v12, :cond_f

    .line 1289
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1291
    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1292
    .local v4, "bodyString":Ljava/lang/String;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1293
    .local v3, "bodyStream":Ljava/io/InputStream;
    invoke-virtual {v10, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1306
    .end local v3    # "bodyStream":Ljava/io/InputStream;
    .end local v4    # "bodyString":Ljava/lang/String;
    :cond_f
    if-eqz p3, :cond_10

    .line 1308
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1316
    .end local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v10    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v12    # "literal":Ljava/lang/Object;
    .end local v13    # "message":Lcom/fsck/k9/mail/Message;
    .end local v15    # "msgSeq":I
    .end local v17    # "uid":Ljava/lang/String;
    :cond_10
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v21

    if-nez v21, :cond_10

    goto/16 :goto_3

    .line 1295
    .restart local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v10    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .restart local v12    # "literal":Ljava/lang/Object;
    .restart local v13    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v15    # "msgSeq":I
    .restart local v17    # "uid":Ljava/lang/String;
    :cond_11
    instance-of v0, v12, Ljava/lang/Integer;

    move/from16 v21, v0

    if-nez v21, :cond_f

    .line 1302
    new-instance v21, Lcom/fsck/k9/mail/MessagingException;

    const-string v22, "Got FETCH response with bogus parameters"

    invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1313
    .end local v8    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v10    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v12    # "literal":Ljava/lang/Object;
    .end local v13    # "message":Lcom/fsck/k9/mail/Message;
    .end local v15    # "msgSeq":I
    .end local v17    # "uid":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4
.end method

.method public fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 20
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1333
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1335
    const-string v15, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1336
    .local v12, "parts":[Ljava/lang/String;
    if-nez v12, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1342
    :cond_0
    const/4 v15, 0x0

    aget-object v11, v12, v15

    .line 1343
    .local v11, "partId":Ljava/lang/String;
    const-string v15, "TEXT"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1345
    const-string v15, "BODY.PEEK[TEXT]<0.%d>"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1354
    .local v6, "fetch":Ljava/lang/String;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    const-string v16, "UID FETCH %s (UID %s)"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1359
    new-instance v4, Lcom/fsck/k9/mail/store/ImapStore$FetchPartCallback;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/fsck/k9/mail/store/ImapStore$FetchPartCallback;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 1365
    .local v4, "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v15, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v13

    .line 1367
    .local v13, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    iget-object v15, v13, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v15, :cond_9

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v15

    const-string v16, "FETCH"

    invoke-static/range {v15 .. v16}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1370
    const-string v15, "FETCH"

    invoke-virtual {v13, v15}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    .line 1371
    .local v7, "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    const-string v15, "UID"

    invoke-virtual {v7, v15}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1373
    .local v14, "uid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1375
    sget-boolean v15, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 1376
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Did not ask for UID "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 1426
    .end local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v14    # "uid":Ljava/lang/String;
    :goto_2
    iget-object v15, v13, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_1

    goto/16 :goto_0

    .line 1349
    .end local v4    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .end local v6    # "fetch":Ljava/lang/String;
    .end local v13    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_3
    const-string v15, "BODY.PEEK[%s]"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "fetch":Ljava/lang/String;
    goto/16 :goto_1

    .line 1381
    .restart local v4    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .restart local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v13    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .restart local v14    # "uid":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    move-object v8, v0

    .line 1388
    .local v8, "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleFetchResponse(Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v10

    .line 1390
    .local v10, "literal":Ljava/lang/Object;
    if-eqz v10, :cond_5

    .line 1392
    instance-of v15, v10, Lcom/fsck/k9/mail/Body;

    if-eqz v15, :cond_7

    .line 1395
    check-cast v10, Lcom/fsck/k9/mail/Body;

    .end local v10    # "literal":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 1413
    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    .line 1415
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1423
    .end local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v14    # "uid":Ljava/lang/String;
    :cond_6
    :goto_4
    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_2

    .line 1397
    .restart local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v8    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .restart local v10    # "literal":Ljava/lang/Object;
    .restart local v14    # "uid":Ljava/lang/String;
    :cond_7
    instance-of v15, v10, Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 1399
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1400
    .local v3, "bodyString":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1402
    .local v2, "bodyStream":Ljava/io/InputStream;
    const-string v15, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v5, v15, v16

    .line 1404
    .local v5, "contentTransferEncoding":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1428
    .end local v2    # "bodyStream":Ljava/io/InputStream;
    .end local v3    # "bodyString":Ljava/lang/String;
    .end local v4    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .end local v5    # "contentTransferEncoding":Ljava/lang/String;
    .end local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v10    # "literal":Ljava/lang/Object;
    .end local v13    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v14    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1430
    .local v9, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v15

    throw v15

    .line 1409
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v4    # "callback":Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .restart local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v8    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .restart local v10    # "literal":Ljava/lang/Object;
    .restart local v13    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .restart local v14    # "uid":Ljava/lang/String;
    :cond_8
    :try_start_2
    new-instance v15, Lcom/fsck/k9/mail/MessagingException;

    const-string v16, "Got FETCH response with bogus parameters"

    invoke-direct/range {v15 .. v16}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1420
    .end local v7    # "fetchList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "imapMessage":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v10    # "literal":Ljava/lang/Object;
    .end local v14    # "uid":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 966
    const-string v0, "FLAGGED NOT DELETED"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getRemoteMessageCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getHighestUid()I
    .locals 6

    .prologue
    .line 973
    :try_start_0
    new-instance v2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;)V

    .line 980
    .local v2, "searcher":Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    .line 981
    .local v1, "messages":[Lcom/fsck/k9/mail/Message;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 983
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 990
    .end local v1    # "messages":[Lcom/fsck/k9/mail/Message;
    .end local v2    # "searcher":Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    :goto_0
    return v3

    .line 986
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find highest UID in folder "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected getLogId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2078
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_0

    .line 2080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$1400(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2082
    :cond_0
    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1011
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(IILjava/util/Date;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method protected getMessages(IILjava/util/Date;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .param p4, "includeDeleted"    # Z
    .param p5, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1017
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 1019
    :cond_0
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Invalid message set %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .local v5, "dateSearchString":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_2

    .line 1026
    const-string v1, " SINCE "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    sget-object v2, Lcom/fsck/k9/mail/store/ImapStore;->RFC3501_DATE:Ljava/text/SimpleDateFormat;

    monitor-enter v2

    .line 1029
    :try_start_0
    sget-object v1, Lcom/fsck/k9/mail/store/ImapStore;->RFC3501_DATE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    :cond_2
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZIILjava/lang/StringBuilder;)V

    .line 1041
    .local v0, "searcher":Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    invoke-virtual {p0, v0, p5}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    return-object v1

    .line 1030
    .end local v0    # "searcher":Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method protected getMessages(Ljava/util/List;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 2
    .param p2, "includeDeleted"    # Z
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/fsck/k9/controller/MessageRetrievalListener;",
            ")[",
            "Lcom/fsck/k9/mail/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, "mesgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZLjava/util/List;)V

    .line 1054
    .local v0, "searcher":Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    invoke-virtual {p0, v0, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    return-object v1
.end method

.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 12
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v6, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    if-nez p1, :cond_2

    .line 1133
    :try_start_0
    const-string v10, "UID SEARCH 1:* NOT DELETED"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1134
    .local v8, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v9, "tempUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 1137
    .local v7, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "SEARCH"

    invoke-static {v10, v11}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1139
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1141
    invoke-virtual {v7, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1145
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v7    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_1
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$800()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    .line 1147
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v9    # "tempUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v1, p1

    .restart local v1    # "count":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 1149
    new-instance v5, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    aget-object v10, p1, v2

    invoke-direct {v5, v10, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 1154
    .local v5, "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    if-eqz p2, :cond_3

    .line 1157
    invoke-interface {p2, v5}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1161
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    :catch_0
    move-exception v4

    .line 1163
    .local v4, "ioe":Ljava/io/IOException;
    iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v10, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v10

    throw v10

    .line 1165
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_4
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$700()[Lcom/fsck/k9/mail/Message;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/fsck/k9/mail/Message;

    return-object v10
.end method

.method protected getMessagesFromUids(Ljava/util/List;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 2
    .param p2, "includeDeleted"    # Z
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/fsck/k9/controller/MessageRetrievalListener;",
            ")[",
            "Lcom/fsck/k9/mail/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1060
    .local p1, "mesgUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$4;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZLjava/util/List;)V

    .line 1067
    .local v0, "searcher":Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    invoke-virtual {p0, v0, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    return-object v1
.end method

.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "oldPushStateS"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v4, 0x0

    .line 1970
    :try_start_0
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 1971
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1972
    .local v1, "messageUid":I
    invoke-static {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;

    move-result-object v2

    .line 1973
    .local v2, "oldPushState":Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
    iget v5, v2, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I

    if-lt v1, v5, :cond_0

    .line 1975
    add-int/lit8 v3, v1, 0x1

    .line 1976
    .local v3, "uidNext":I
    new-instance v5, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;

    invoke-direct {v5, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;-><init>(I)V

    .line 1977
    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1987
    .end local v1    # "messageUid":I
    .end local v2    # "oldPushState":Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
    .end local v3    # "uidNext":I
    :cond_0
    :goto_0
    return-object v4

    .line 1984
    :catch_0
    move-exception v0

    .line 1986
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception while updated push state for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 1518
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$1100()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixedName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 525
    const-string v2, ""

    .line 526
    .local v2, "prefixedName":Ljava/lang/String;
    const-string v3, "INBOX"

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 533
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/ImapStore;->access$200(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 539
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->open()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 556
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v3}, Lcom/fsck/k9/mail/store/ImapStore;->access$400(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    return-object v3

    .line 537
    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 545
    :catch_0
    move-exception v1

    .line 547
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Unable to get IMAP prefix"

    invoke-direct {v3, v4, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 551
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    .line 553
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v4, v0}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method protected getStore()Lcom/fsck/k9/mail/store/ImapStore;
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->store:Lcom/fsck/k9/mail/store/ImapStore;

    return-object v0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 10
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1874
    :try_start_0
    const-string v6, "Message-ID"

    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1876
    .local v3, "messageIdHeader":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_2

    .line 1878
    :cond_0
    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1879
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Did not get a message-id in order to search for UID  for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1897
    :cond_1
    :goto_0
    return-object v5

    .line 1882
    :cond_2
    const/4 v6, 0x0

    aget-object v2, v3, v6

    .line 1883
    .local v2, "messageId":Ljava/lang/String;
    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1884
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Looking for UID for message with message-id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1886
    :cond_3
    const-string v6, "UID SEARCH HEADER MESSAGE-ID %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1889
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 1891
    .local v4, "response1":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    iget-object v6, v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "SEARCH"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 1894
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1899
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "messageIdHeader":[Ljava/lang/String;
    .end local v4    # "response1":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :catch_0
    move-exception v1

    .line 1901
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Could not find UID for message based on Message-ID"

    invoke-direct {v5, v6, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 960
    const-string v0, "UNSEEN NOT DELETED"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getRemoteMessageCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handlePossibleUidNext(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1536
    invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "OK"

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 1538
    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1539
    .local v1, "bracketedObj":Ljava/lang/Object;
    instance-of v4, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1541
    check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    .line 1543
    .local v0, "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 1545
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1546
    .local v3, "keyObj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1548
    check-cast v2, Ljava/lang/String;

    .line 1549
    .local v2, "key":Ljava/lang/String;
    const-string v4, "UIDNEXT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1551
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getNumber(I)I

    move-result v4

    iput v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->uidNext:I

    .line 1552
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1553
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got UidNext = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->uidNext:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1561
    .end local v0    # "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v1    # "bracketedObj":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyObj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .prologue
    const/4 v2, 0x1

    .line 1569
    iget-object v0, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1571
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EXISTS"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 1574
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got untagged EXISTS with value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1577
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handlePossibleUidNext(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 1579
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EXPUNGE"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    if-lez v0, :cond_1

    .line 1581
    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 1582
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got untagged EXPUNGE with mMessageCount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1615
    :cond_1
    return-void
.end method

.method protected handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1527
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 1529
    .local v1, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    goto :goto_0

    .line 1531
    .end local v1    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;
    .locals 17
    .param p1, "mode"    # Lcom/fsck/k9/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Folder$OpenMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p1

    if-ne v12, v0, :cond_0

    .line 593
    :try_start_0
    const-string v12, "NOOP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 661
    :goto_0
    return-object v11

    .line 596
    :catch_0
    move-exception v6

    .line 598
    .local v6, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    .line 601
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-static {v12, v13}, Lcom/fsck/k9/mail/store/ImapStore;->access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 602
    monitor-enter p0

    .line 604
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-static {v12}, Lcom/fsck/k9/mail/store/ImapStore;->access$200(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 605
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->msgSeqUidMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_2

    const-string v12, "SELECT"

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \"%s\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/fsck/k9/mail/store/ImapStore;->access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 627
    .local v11, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;

    .line 629
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 631
    .local v10, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    iget-object v12, v10, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v12, :cond_1

    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    .line 633
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 634
    .local v3, "bracketedObj":Ljava/lang/Object;
    instance-of v12, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    if-eqz v12, :cond_1

    .line 636
    move-object v0, v3

    check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-object v2, v0

    .line 638
    .local v2, "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 640
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 641
    .local v8, "keyObj":Ljava/lang/Object;
    instance-of v12, v8, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 643
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 645
    .local v7, "key":Ljava/lang/String;
    const-string v12, "READ-ONLY"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 647
    sget-object v12, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 663
    .end local v2    # "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v3    # "bracketedObj":Ljava/lang/Object;
    .end local v4    # "command":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyObj":Ljava/lang/Object;
    .end local v10    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_1
    move-exception v6

    .line 665
    .restart local v6    # "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v12

    throw v12

    .line 605
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 618
    :cond_2
    :try_start_3
    const-string v12, "EXAMINE"

    goto/16 :goto_1

    .line 649
    .restart local v2    # "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v3    # "bracketedObj":Ljava/lang/Object;
    .restart local v4    # "command":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "keyObj":Ljava/lang/Object;
    .restart local v10    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .restart local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_3
    const-string v12, "READ-WRITE"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 651
    sget-object v12, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMode:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 667
    .end local v2    # "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v3    # "bracketedObj":Ljava/lang/Object;
    .end local v4    # "command":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyObj":Ljava/lang/Object;
    .end local v10    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_2
    move-exception v9

    .line 669
    .local v9, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v12, "k9"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to open connection for "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    throw v9

    .line 660
    .end local v9    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v4    # "command":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_4
    const/4 v12, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 4
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 877
    array-length v0, p1

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    .line 880
    new-array v0, v3, [Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0
.end method

.method public open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/fsck/k9/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;

    .line 578
    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 580
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Did not find message count during open"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    return-void
.end method

.method protected search(Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 10
    .param p1, "searcher"    # Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1074
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v5, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v7, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;->search()Ljava/util/List;

    move-result-object v8

    .line 1079
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 1081
    .local v6, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    iget-object v8, v6, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 1083
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SEARCH"

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1085
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1087
    invoke-virtual {v6, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1094
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v6    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1095
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0    # "count":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1097
    if-eqz p2, :cond_2

    .line 1099
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    :cond_2
    new-instance v4, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 1102
    .local v4, "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    if-eqz p2, :cond_3

    .line 1105
    invoke-interface {p2, v4}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1109
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v7    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 1111
    .local v3, "ioe":Ljava/io/IOException;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v8, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v8

    throw v8

    .line 1113
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v7    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$700()[Lcom/fsck/k9/mail/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/fsck/k9/mail/Message;

    return-object v8
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .locals 5
    .param p1, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1951
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1956
    :try_start_0
    const-string v2, "UID STORE 1:* %sFLAGS.SILENT (%s)"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string v1, "+"

    :goto_0
    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->combineFlags([Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1962
    return-void

    .line 1956
    :cond_0
    const-string v1, "-"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v1

    throw v1
.end method

.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .locals 15
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1996
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1997
    move-object/from16 v0, p1

    array-length v10, v0

    new-array v9, v10, [Ljava/lang/String;

    .line 1998
    .local v9, "uids":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p1

    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 2000
    aget-object v10, p1, v5

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 1998
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2002
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2003
    .local v4, "flagNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p2

    .local v1, "arr$":[Lcom/fsck/k9/mail/Flag;
    move-object/from16 v0, p2

    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v3, v1, v6

    .line 2005
    .local v3, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne v3, v10, :cond_2

    .line 2007
    const-string v10, "\\Seen"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2009
    :cond_2
    sget-object v10, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v3, v10, :cond_3

    .line 2011
    const-string v10, "\\Deleted"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2013
    :cond_3
    sget-object v10, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    if-ne v3, v10, :cond_4

    .line 2015
    const-string v10, "\\Answered"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2017
    :cond_4
    sget-object v10, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    if-ne v3, v10, :cond_1

    .line 2019
    const-string v10, "\\Flagged"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2024
    .end local v3    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_5
    :try_start_0
    const-string v11, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v13, 0x2c

    invoke-static {v9, v13}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v13, 0x1

    if-eqz p3, :cond_6

    const-string v10, "+"

    :goto_3
    aput-object v10, v12, v13

    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0x20

    invoke-static {v13, v14}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 2032
    return-void

    .line 2024
    :cond_6
    const-string v10, "-"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2029
    :catch_0
    move-exception v7

    .line 2031
    .local v7, "ioe":Ljava/io/IOException;
    iget-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v10, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v10

    throw v10
.end method
