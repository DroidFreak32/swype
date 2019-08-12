.class Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapConnection"
.end annotation


# instance fields
.field protected capabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

.field private mNextCommandTag:I

.field private mOut:Ljava/io/OutputStream;

.field private mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

.field private mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;)V
    .locals 1

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .prologue
    .line 2089
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .prologue
    .line 2089
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->readResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .prologue
    .line 2089
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendContinuation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/store/ImapStore$ImapException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2595
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2603
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2611
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2617
    :goto_2
    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 2618
    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    .line 2619
    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    .line 2620
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 2646
    if-nez p1, :cond_0

    .line 2648
    const/4 v0, 0x0

    .line 2652
    :goto_0
    return-object v0

    .line 2650
    :cond_0
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2651
    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
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
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/store/ImapStore$ImapException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2727
    move-object v0, p1

    .line 2728
    .local v0, "commandToLog":Ljava/lang/String;
    if-eqz p2, :cond_0

    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    if-nez v6, :cond_0

    .line 2730
    const-string v0, "*sensitive*"

    .line 2737
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2741
    .local v5, "tag":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2745
    .local v4, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_1
    iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v3

    .line 2746
    .local v3, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v6, :cond_2

    .line 2747
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<<<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_2
    iget-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2751
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "After sending tag "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", got tag response from previous command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2753
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2755
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 2756
    .local v1, "delResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    iget-object v6, v1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4

    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "EXISTS"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "EXPUNGE"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2759
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2762
    .end local v1    # "delResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_5
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    .line 2771
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :goto_1
    iget-object v6, v3, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 2772
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "OK"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2774
    :cond_6
    new-instance v6, Lcom/fsck/k9/mail/store/ImapStore$ImapException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Command: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getAlertText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 2765
    :cond_7
    if-eqz p3, :cond_8

    .line 2767
    invoke-interface {p3, v3}, Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;->handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 2769
    :cond_8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2776
    :cond_9
    return-object v4
.end method

.method private getLogId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "conn"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isOpen()Z
    .locals 1

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->readResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method private readResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .locals 5
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2631
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$IImapResponseCallback;)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v1

    .line 2632
    .local v1, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v2, :cond_0

    .line 2633
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    :cond_0
    return-object v1

    .line 2637
    .end local v1    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :catch_0
    move-exception v0

    .line 2639
    .local v0, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V

    .line 2640
    throw v0
.end method

.method private receiveCapabilities(Ljava/util/List;)Ljava/util/List;
    .locals 10
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
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    const/4 v9, 0x0

    .line 2105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 2107
    .local v4, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    const/4 v1, 0x0

    .line 2108
    .local v1, "capabilityList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v4, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "OK"

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2110
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2112
    .local v6, "thisPart":Ljava/lang/Object;
    instance-of v7, v6, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 2114
    check-cast v5, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    .line 2115
    .local v5, "thisList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {v5, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CAPABILITY"

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2117
    move-object v1, v5

    .line 2128
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "thisList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v6    # "thisPart":Ljava/lang/Object;
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    .line 2130
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CAPABILITY"

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2132
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 2134
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Saving "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " capabilities for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2136
    :cond_3
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2138
    .local v0, "capability":Ljava/lang/Object;
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 2144
    iget-object v7, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "capability":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2123
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v7, v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 2125
    move-object v1, v4

    goto :goto_0

    .line 2151
    .end local v1    # "capabilityList":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v4    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_6
    return-object p1
.end method

.method private sendContinuation(Ljava/lang/String;)V
    .locals 3
    .param p1, "continuation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2658
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2659
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2660
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 2662
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v0, :cond_0

    .line 2663
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_0
    return-void
.end method


# virtual methods
.method protected authCramMD5()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/AuthenticationFailedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2477
    :try_start_0
    const-string v21, "AUTHENTICATE CRAM-MD5"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 2478
    .local v19, "tag":Ljava/lang/String;
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 2479
    .local v7, "buf":[B
    const/4 v5, 0x0

    .line 2480
    .local v5, "b64NonceLen":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_0

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v21

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v7, v9

    .line 2483
    aget-byte v21, v7, v9

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 2485
    move v5, v9

    .line 2489
    :cond_0
    if-nez v5, :cond_2

    .line 2491
    new-instance v21, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v22, "Error negotiating CRAM-MD5: nonce too long."

    invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2549
    .end local v5    # "b64NonceLen":I
    .end local v7    # "buf":[B
    .end local v9    # "i":I
    .end local v19    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v21

    new-instance v21, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v22, "CRAM-MD5 Auth Failed."

    invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2480
    .restart local v5    # "b64NonceLen":I
    .restart local v7    # "buf":[B
    .restart local v9    # "i":I
    .restart local v19    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2493
    :cond_2
    add-int/lit8 v21, v5, -0x2

    :try_start_1
    move/from16 v0, v21

    new-array v6, v0, [B

    .line 2494
    .local v6, "b64NonceTrim":[B
    const/16 v21, 0x1

    const/16 v22, 0x0

    add-int/lit8 v23, v5, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v7, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2495
    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v12

    .line 2496
    .local v12, "nonce":[B
    sget-boolean v21, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v21, :cond_3

    .line 2498
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Got nonce: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/String;

    const-string v23, "US-ASCII"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2499
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Plaintext nonce: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/String;

    const-string v23, "US-ASCII"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2502
    :cond_3
    const/16 v21, 0x40

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 2503
    .local v10, "ipad":[B
    const/16 v21, 0x40

    move/from16 v0, v21

    new-array v13, v0, [B

    .line 2504
    .local v13, "opad":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/store/ImapStore;->access$2300(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "US-ASCII"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 2505
    .local v18, "secretBytes":[B
    const-string v21, "MD5"

    invoke-static/range {v21 .. v21}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 2506
    .local v11, "md":Ljava/security/MessageDigest;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x40

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 2508
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v18

    .line 2510
    :cond_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2511
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2512
    const/4 v9, 0x0

    :goto_1
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_5

    aget-byte v21, v10, v9

    xor-int/lit8 v21, v21, 0x36

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2513
    :cond_5
    const/4 v9, 0x0

    :goto_2
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    aget-byte v21, v13, v9

    xor-int/lit8 v21, v21, 0x5c

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2514
    :cond_6
    invoke-virtual {v11, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 2515
    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 2516
    .local v8, "firstPass":[B
    invoke-virtual {v11, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 2517
    invoke-virtual {v11, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v17

    .line 2518
    .local v17, "result":[B
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mail/store/ImapStore;->access$2200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2519
    .local v14, "plainCRAM":Ljava/lang/String;
    const-string v21, "US-ASCII"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    .line 2520
    .local v4, "b64CRAM":[B
    sget-boolean v21, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v21, :cond_7

    .line 2522
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Username == "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mail/store/ImapStore;->access$2200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2523
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "plainCRAM: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2524
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "b64CRAM: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/String;

    const-string v23, "US-ASCII"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2527
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-virtual/range {v21 .. v22}, Ljava/io/OutputStream;->write([B)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    .line 2530
    const/4 v15, 0x0

    .line 2531
    .local v15, "respLen":I
    const/4 v9, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_8

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    move-result v21

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v7, v9

    .line 2534
    aget-byte v21, v7, v9

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 2536
    move v15, v9

    .line 2540
    :cond_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " OK"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2541
    .local v20, "toMatch":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-direct {v0, v7, v1, v15}, Ljava/lang/String;-><init>([BII)V

    .line 2542
    .local v16, "respStr":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 2544
    new-instance v21, Lcom/fsck/k9/mail/AuthenticationFailedException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "CRAM-MD5 error: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2553
    .end local v4    # "b64CRAM":[B
    .end local v5    # "b64NonceLen":I
    .end local v6    # "b64NonceTrim":[B
    .end local v7    # "buf":[B
    .end local v8    # "firstPass":[B
    .end local v9    # "i":I
    .end local v10    # "ipad":[B
    .end local v11    # "md":Ljava/security/MessageDigest;
    .end local v12    # "nonce":[B
    .end local v13    # "opad":[B
    .end local v14    # "plainCRAM":Ljava/lang/String;
    .end local v15    # "respLen":I
    .end local v16    # "respStr":Ljava/lang/String;
    .end local v17    # "result":[B
    .end local v18    # "secretBytes":[B
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "toMatch":Ljava/lang/String;
    :catch_1
    move-exception v21

    new-instance v21, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v22, "MD5 Not Available."

    invoke-direct/range {v21 .. v22}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2531
    .restart local v4    # "b64CRAM":[B
    .restart local v5    # "b64NonceLen":I
    .restart local v6    # "b64NonceTrim":[B
    .restart local v7    # "buf":[B
    .restart local v8    # "firstPass":[B
    .restart local v9    # "i":I
    .restart local v10    # "ipad":[B
    .restart local v11    # "md":Ljava/security/MessageDigest;
    .restart local v12    # "nonce":[B
    .restart local v13    # "opad":[B
    .restart local v14    # "plainCRAM":Ljava/lang/String;
    .restart local v15    # "respLen":I
    .restart local v17    # "result":[B
    .restart local v18    # "secretBytes":[B
    .restart local v19    # "tag":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2554
    .restart local v16    # "respStr":Ljava/lang/String;
    .restart local v20    # "toMatch":Ljava/lang/String;
    :cond_a
    return-void

    .line 2528
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
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
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/store/ImapStore$ImapException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/store/ImapStore$ImapException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2721
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected hasCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "capability"    # Ljava/lang/String;

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isIdleCapable()Z
    .locals 3

    .prologue
    .line 2568
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2569
    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " capabilities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;

    const-string v1, "IDLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2157
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isOpen()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    const/4 v4, 0x0

    .line 2164
    .local v4, "authSuccess":Z
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I

    .line 2167
    :try_start_0
    const-string v27, "networkaddress.cache.ttl"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2177
    :goto_1
    :try_start_1
    const-string v27, "networkaddress.cache.negative.ttl"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2189
    :goto_2
    :try_start_2
    new-instance v20, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$1600(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 2191
    .local v20, "socketAddress":Ljava/net/SocketAddress;
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_2

    .line 2192
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Connection "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " connecting to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " @ IP addr "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 2197
    :cond_3
    const-string v27, "TLS"

    invoke-static/range {v27 .. v27}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v21

    .line 2198
    .local v21, "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    .line 2199
    .local v19, "secure":Z
    :goto_3
    const/16 v27, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v30

    aput-object v30, v28, v29

    new-instance v29, Ljava/security/SecureRandom;

    invoke-direct/range {v29 .. v29}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 2203
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    const/16 v28, 0x7530

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2212
    .end local v19    # "secure":Z
    .end local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_4
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_4

    .line 2213
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Setting socket read timeout to "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$1800()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_4
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$1900()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->setReadTimeout(I)V

    .line 2216
    new-instance v27, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v28, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v29

    const/16 v30, 0x400

    invoke-direct/range {v28 .. v30}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 2218
    new-instance v27, Lcom/fsck/k9/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapResponseParser;-><init>(Lcom/fsck/k9/mail/filter/PeekableInputStream;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->capabilities:Ljava/util/Set;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->clear()V

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapResponseParser;->readResponse()Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v15

    .line 2223
    .local v15, "nullResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_5

    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v27, :cond_5

    .line 2224
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "<<<"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_5
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 2227
    .local v16, "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->receiveCapabilities(Ljava/util/List;)Ljava/util/List;

    .line 2230
    const-string v27, "CAPABILITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 2232
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_6

    .line 2233
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Did not get capabilities in banner, requesting CAPABILITY for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_6
    const-string v27, "CAPABILITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->receiveCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    .line 2235
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 2237
    new-instance v27, Lcom/fsck/k9/mail/MessagingException;

    const-string v28, "Invalid CAPABILITY response received"

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2467
    .end local v15    # "nullResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v16    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v20    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v8

    .line 2442
    .local v8, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    new-instance v27, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v8}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2465
    .end local v8    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v27

    if-nez v4, :cond_7

    .line 2467
    const-string v28, "k9"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Failed to login, closing connection for "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V

    :cond_7
    throw v27

    .line 2169
    :catch_1
    move-exception v8

    .line 2171
    .local v8, "e":Ljava/lang/Exception;
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Could not set DNS ttl to 0 for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2179
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 2181
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Could not set DNS negative ttl to 0 for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2198
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v20    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2208
    .end local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_9
    :try_start_4
    new-instance v27, Ljava/net/Socket;

    invoke-direct/range {v27 .. v27}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    const/16 v28, 0x7530

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 2444
    .end local v20    # "socketAddress":Ljava/net/SocketAddress;
    :catch_3
    move-exception v10

    .line 2446
    .local v10, "gse":Ljava/security/GeneralSecurityException;
    :try_start_5
    new-instance v27, Lcom/fsck/k9/mail/MessagingException;

    const-string v28, "Unable to open connection to IMAP server due to security error."

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2241
    .end local v10    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v15    # "nullResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .restart local v16    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v20    # "socketAddress":Ljava/net/SocketAddress;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 2245
    :cond_b
    const-string v27, "STARTTLS"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 2248
    const-string v27, "STARTTLS"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 2250
    const-string v27, "TLS"

    invoke-static/range {v27 .. v27}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v21

    .line 2251
    .restart local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    const/16 v19, 0x1

    .line 2252
    .restart local v19    # "secure":Z
    :goto_5
    const/16 v27, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v30

    aput-object v30, v28, v29

    new-instance v29, Ljava/security/SecureRandom;

    invoke-direct/range {v29 .. v29}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 2256
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/fsck/k9/mail/store/ImapStore;->access$1600(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v30

    const/16 v31, 0x1

    invoke-virtual/range {v27 .. v31}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$2000()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2259
    new-instance v27, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v28, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v29

    const/16 v30, 0x400

    invoke-direct/range {v28 .. v30}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 2261
    new-instance v27, Lcom/fsck/k9/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapResponseParser;-><init>(Lcom/fsck/k9/mail/filter/PeekableInputStream;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    .line 2270
    .end local v19    # "secure":Z
    .end local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_c
    new-instance v27, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    move-object/from16 v28, v0

    const/16 v29, 0x400

    invoke-direct/range {v27 .. v29}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2275
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "yahoo.com"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 2277
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_d

    .line 2278
    const-string v27, "k9"

    const-string v28, "Found Yahoo! account.  Sending proprietary commands."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    :cond_d
    const-string v27, "ID (\"GUID\" \"1\")"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 2281
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$2100(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-result-object v27

    sget-object v28, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->CRAM_MD5:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 2283
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->authCramMD5()V

    .line 2287
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_f

    .line 2288
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Updating capabilities after CRAM-MD5 authentication for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_f
    const-string v27, "CAPABILITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->receiveCapabilities(Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    .line 2290
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    .line 2292
    new-instance v27, Lcom/fsck/k9/mail/MessagingException;

    const-string v28, "Invalid CAPABILITY response received"

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_7
    .catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2313
    :catch_4
    move-exception v12

    .line 2315
    .local v12, "ie":Lcom/fsck/k9/mail/store/ImapStore$ImapException;
    :try_start_8
    new-instance v27, Lcom/fsck/k9/mail/AuthenticationFailedException;

    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2449
    .end local v12    # "ie":Lcom/fsck/k9/mail/store/ImapStore$ImapException;
    .end local v15    # "nullResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v16    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v20    # "socketAddress":Ljava/net/SocketAddress;
    :catch_5
    move-exception v6

    .line 2451
    .local v6, "ce":Ljava/net/ConnectException;
    :try_start_9
    invoke-virtual {v6}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v27

    .line 2452
    const-string v28, "-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 2453
    .local v22, "tokens":[Ljava/lang/String;
    if-eqz v22, :cond_26

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_26

    const/16 v27, 0x1

    aget-object v27, v22, v27

    if-eqz v27, :cond_26

    .line 2455
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Stripping host/port from ConnectionException for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2456
    new-instance v27, Ljava/net/ConnectException;

    const/16 v28, 0x1

    aget-object v28, v22, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2251
    .end local v6    # "ce":Ljava/net/ConnectException;
    .end local v22    # "tokens":[Ljava/lang/String;
    .restart local v15    # "nullResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .restart local v16    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v20    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 2264
    .end local v21    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 2266
    new-instance v27, Lcom/fsck/k9/mail/MessagingException;

    const-string v28, "TLS not supported but required"

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2296
    :cond_12
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$2100(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-result-object v27

    sget-object v28, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->PLAIN:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1f

    .line 2298
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "LOGIN \""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\" \""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2300(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->receiveCapabilities(Ljava/util/List;)Ljava/util/List;
    :try_end_b
    .catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2311
    :cond_13
    :goto_6
    const/4 v4, 0x1

    .line 2322
    :try_start_c
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_14

    .line 2324
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "COMPRESS=DEFLATE = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "COMPRESS=DEFLATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2326
    :cond_14
    const-string v27, "COMPRESS=DEFLATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 2328
    sget-object v27, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    const-string v28, "connectivity"

    invoke-virtual/range {v27 .. v28}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 2329
    .local v7, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v24, 0x1

    .line 2331
    .local v24, "useCompression":Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    .line 2332
    .local v14, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v14, :cond_16

    .line 2334
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    .line 2335
    .local v23, "type":I
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_15

    .line 2336
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "On network type "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2337
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$2400(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/Account;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->useCompression(I)Z

    move-result v24

    .line 2340
    .end local v23    # "type":I
    :cond_16
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_17

    .line 2341
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "useCompression "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2342
    :cond_17
    if-eqz v24, :cond_18

    .line 2346
    :try_start_d
    const-string v27, "COMPRESS DEFLATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 2347
    new-instance v25, Lcom/jcraft/jzlib/ZInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/ZInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2348
    .local v25, "zInputStream":Lcom/jcraft/jzlib/ZInputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/jcraft/jzlib/ZInputStream;->setFlushMode$13462e()V

    .line 2349
    new-instance v27, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    new-instance v28, Ljava/io/BufferedInputStream;

    const/16 v29, 0x400

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/filter/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 2350
    new-instance v27, Lcom/fsck/k9/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mIn:Lcom/fsck/k9/mail/filter/PeekableInputStream;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapResponseParser;-><init>(Lcom/fsck/k9/mail/filter/PeekableInputStream;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mParser:Lcom/fsck/k9/mail/store/ImapResponseParser;

    .line 2351
    new-instance v26, Lcom/jcraft/jzlib/ZOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/jcraft/jzlib/ZOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2352
    .local v26, "zOutputStream":Lcom/jcraft/jzlib/ZOutputStream;
    new-instance v27, Ljava/io/BufferedOutputStream;

    const/16 v28, 0x400

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    .line 2353
    invoke-virtual/range {v26 .. v26}, Lcom/jcraft/jzlib/ZOutputStream;->setFlushMode$13462e()V

    .line 2354
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_18

    .line 2356
    const-string v27, "k9"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Compression enabled for "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2367
    .end local v7    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v14    # "netInfo":Landroid/net/NetworkInfo;
    .end local v24    # "useCompression":Z
    .end local v25    # "zInputStream":Lcom/jcraft/jzlib/ZInputStream;
    .end local v26    # "zOutputStream":Lcom/jcraft/jzlib/ZOutputStream;
    :cond_18
    :goto_7
    :try_start_e
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_19

    .line 2368
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "NAMESPACE = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "NAMESPACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", mPathPrefix = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2371
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$2500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_24

    .line 2373
    const-string v27, "NAMESPACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_22

    .line 2375
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_1a

    .line 2376
    const-string v27, "k9"

    const-string v28, "mPathPrefix is unset and server has NAMESPACE capability"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_1a
    const-string v27, "NAMESPACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 2379
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 2381
    .local v18, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v27

    const-string v28, "NAMESPACE"

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 2383
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_1c

    .line 2384
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Got NAMESPACE response "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " on "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2386
    :cond_1c
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 2387
    .local v17, "personalNamespaces":Ljava/lang/Object;
    if-eqz v17, :cond_1b

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 2389
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_1d

    .line 2390
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Got personal namespaces: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2391
    :cond_1d
    check-cast v17, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    .line 2392
    .end local v17    # "personalNamespaces":Ljava/lang/Object;
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 2393
    .local v9, "firstNamespace":Ljava/lang/Object;
    if-eqz v9, :cond_1b

    instance-of v0, v9, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 2395
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_1e

    .line 2396
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Got first personal namespaces: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2397
    :cond_1e
    move-object v0, v9

    check-cast v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-object v5, v0

    .line 2398
    .local v5, "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2502(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2602(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2702(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2401
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_1b

    .line 2402
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Got path \'"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\' and separator \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljavax/net/ssl/SSLException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_8

    .line 2300
    .end local v5    # "bracketed":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v9    # "firstNamespace":Ljava/lang/Object;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_1f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$2100(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-result-object v27

    sget-object v28, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->XOAUTH:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 2301
    const-string v27, "AUTH=XOAUTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->hasCapability(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 2302
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_20

    .line 2303
    const-string v27, "k9"

    const-string v28, "Authenticate using XOAUTH"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_20
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "AUTHENTICATE XOAUTH "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2300(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_6

    .line 2318
    :catch_6
    move-exception v13

    .line 2320
    .local v13, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_10
    new-instance v27, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v13}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27
    :try_end_10
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2307
    .end local v13    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_21
    :try_start_11
    new-instance v27, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const-string v28, "Server does not support XOAUTH"

    invoke-direct/range {v27 .. v28}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_11
    .catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2359
    .restart local v7    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v14    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v24    # "useCompression":Z
    :catch_7
    move-exception v8

    .line 2361
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_12
    const-string v27, "k9"

    const-string v28, "Unable to negotiate compression"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2410
    .end local v7    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "netInfo":Landroid/net/NetworkInfo;
    .end local v24    # "useCompression":Z
    :cond_22
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_23

    .line 2411
    const-string v27, "k9"

    const-string v28, "mPathPrefix is unset but server does not have NAMESPACE capability"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    const-string v28, ""

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2502(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2415
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/fsck/k9/mail/store/ImapStore;->access$2600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    :try_end_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v27

    if-nez v27, :cond_0

    .line 2419
    :try_start_13
    const-string v27, "LIST \"\" \"\""

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v27

    .line 2421
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_25
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 2423
    .restart local v18    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v27

    const-string v28, "LIST"

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2602(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2702(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2427
    sget-boolean v27, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v27, :cond_25

    .line 2428
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Got path delimeter \'"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/fsck/k9/mail/store/ImapStore;->access$2600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\' for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_9

    .line 2432
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :catch_8
    move-exception v8

    .line 2434
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_14
    const-string v27, "k9"

    const-string v28, "Unable to get path delimeter using LIST"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Ljavax/net/ssl/SSLException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    .line 2460
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "nullResponse":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .end local v16    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v20    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v6    # "ce":Ljava/net/ConnectException;
    .restart local v22    # "tokens":[Ljava/lang/String;
    :cond_26
    :try_start_15
    throw v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2672
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->open()V

    .line 2673
    iget v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2674
    .local v4, "tag":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2675
    .local v0, "commandToSend":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 2676
    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 2677
    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 2678
    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 2680
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_IMAP:Z

    if-eqz v5, :cond_0

    .line 2682
    if-eqz p2, :cond_1

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    if-nez v5, :cond_1

    .line 2684
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>> [Command Hidden, Enable Sensitive Debug Logging To Show]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :cond_0
    :goto_0
    return-object v4

    .line 2689
    :cond_1
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2695
    .end local v0    # "commandToSend":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2697
    .local v2, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V

    .line 2698
    throw v2

    .line 2700
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2702
    .local v1, "ie":Lcom/fsck/k9/mail/store/ImapStore$ImapException;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V

    .line 2703
    throw v1

    .line 2705
    .end local v1    # "ie":Lcom/fsck/k9/mail/store/ImapStore$ImapException;
    :catch_2
    move-exception v3

    .line 2707
    .local v3, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->close()V

    .line 2708
    throw v3
.end method

.method protected setReadTimeout(I)V
    .locals 1
    .param p1, "millis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->mSocket:Ljava/net/Socket;

    .line 2560
    .local v0, "sock":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 2562
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2564
    :cond_0
    return-void
.end method
