.class Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
.super Lcom/fsck/k9/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation


# instance fields
.field private mIn:Ljava/io/InputStream;

.field private mMessageCount:I

.field private mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;

.field private mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    .line 204
    invoke-static {p1}, Lcom/fsck/k9/mail/store/Pop3Store;->access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/Folder;-><init>(Lcom/fsck/k9/Account;)V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    .line 205
    iput-object p2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "INBOX"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 210
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeIO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 370
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    :goto_2
    iput-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 389
    iput-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    .line 390
    iput-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 391
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

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1046
    :try_start_0
    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1048
    if-eqz p1, :cond_2

    .line 1050
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v2, :cond_1

    .line 1052
    if-eqz p2, :cond_0

    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    if-eqz v2, :cond_1

    .line 1054
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    :cond_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->writeLine(Ljava/lang/String;)V

    .line 1066
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    .line 1069
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1074
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    throw v2

    .line 1078
    :catch_1
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->closeIO()V

    .line 1081
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Unable to execute POP3 command"

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1072
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private fetchBody(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;I)V
    .locals 9
    .param p1, "message"    # Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    .param p2, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 832
    if-eq p2, v6, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v2

    iget-boolean v2, v2, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v2, :cond_3

    .line 835
    :cond_0
    const-string v2, "RETR %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "response":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 848
    :try_start_0
    new-instance v2, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V

    .line 849
    if-eq p2, v6, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v2

    iget-boolean v2, v2, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z

    if-nez v2, :cond_2

    .line 851
    :cond_1
    sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :cond_2
    return-void

    .line 840
    .end local v1    # "response":Ljava/lang/String;
    :cond_3
    const-string v2, "TOP %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "response":Ljava/lang/String;
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 862
    .local v0, "me":Lcom/fsck/k9/mail/MessagingException;
    if-ne p2, v6, :cond_2

    .line 864
    throw v0
.end method

.method private fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 19
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 742
    const/4 v13, 0x0

    .line 743
    .local v13, "unsizedMessages":I
    move-object/from16 v1, p1

    .local v1, "arr$":[Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p1

    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v14, v1, v4

    .line 745
    const/4 v7, 0x0

    .local v7, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    .line 747
    add-int/lit8 v13, v13, 0x1

    .line 743
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 750
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    :cond_1
    if-nez v13, :cond_3

    .line 818
    :cond_2
    return-void

    .line 754
    :cond_3
    const/16 v14, 0x32

    if-ge v13, v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v15, 0x1388

    if-le v14, v15, :cond_7

    .line 760
    const/4 v3, 0x0

    .local v3, "i":I
    move-object/from16 v0, p1

    array-length v2, v0

    .local v2, "count":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 762
    aget-object v7, p1, v3

    .line 763
    .restart local v7    # "message":Lcom/fsck/k9/mail/Message;
    instance-of v14, v7, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v14, :cond_4

    .line 765
    new-instance v14, Lcom/fsck/k9/mail/MessagingException;

    const-string v15, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v14, v15}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    move-object v11, v7

    .line 767
    check-cast v11, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 768
    .local v11, "pop3Message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-eqz p2, :cond_5

    .line 770
    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    .line 772
    :cond_5
    const-string v14, "LIST %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 774
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 776
    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 777
    .local v9, "msgSize":I
    invoke-virtual {v11, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 778
    if-eqz p2, :cond_6

    .line 780
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 760
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 786
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    .end local v9    # "msgSize":I
    .end local v11    # "pop3Message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    :cond_7
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 787
    .local v10, "msgUidIndex":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v7, v1, v4

    .line 789
    .restart local v7    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 791
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    :cond_8
    const-string v14, "LIST"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 v12, 0x0

    .line 793
    .local v12, "response":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 795
    const-string v14, "."

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 797
    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, "listParts":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 801
    .local v8, "msgNum":I
    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 802
    .restart local v9    # "msgSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 803
    .restart local v11    # "pop3Message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 805
    if-eqz p2, :cond_a

    .line 807
    invoke-virtual {v11}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    .line 809
    :cond_a
    invoke-virtual {v11, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 810
    if-eqz p2, :cond_9

    .line 812
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    goto :goto_3
.end method

.method private getCapabilities()Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;-><init>()V

    .line 998
    .local v0, "capabilities":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    :try_start_0
    const-string v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    .line 999
    .local v1, "response":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1001
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1003
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_0

    .line 1027
    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1034
    :cond_1
    return-object v0

    .line 1009
    .restart local v1    # "response":Ljava/lang/String;
    :cond_2
    const-string v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1011
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_0

    .line 1013
    :cond_3
    const-string v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1015
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    goto :goto_0

    .line 1017
    :cond_4
    const-string v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1019
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    goto :goto_0

    .line 1021
    :cond_5
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "message"    # Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .prologue
    .line 625
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding index for UID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to msgNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-void
.end method

.method private indexMsgNums(II)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 496
    const/4 v6, 0x0

    .line 497
    .local v6, "unindexedMessageCount":I
    move v1, p1

    .local v1, "msgNum":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 499
    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 501
    add-int/lit8 v6, v6, 0x1

    .line 497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_1
    if-nez v6, :cond_3

    .line 565
    .end local v1    # "msgNum":I
    :cond_2
    return-void

    .line 508
    .restart local v1    # "msgNum":I
    :cond_3
    const/16 v7, 0x32

    if-ge v6, v7, :cond_5

    iget v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v8, 0x1388

    if-le v7, v8, :cond_5

    .line 514
    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_2

    .line 516
    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 517
    const/4 v0, 0x0

    .local v0, "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-nez v7, :cond_4

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UIDL "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "response":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 521
    .local v4, "uidIndex":I
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "msgUid":Ljava/lang/String;
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    .line 523
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V

    .line 514
    .end local v2    # "msgUid":Ljava/lang/String;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "uidIndex":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    .end local v0    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    :cond_5
    const-string v7, "UIDL"

    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    .line 530
    .end local v1    # "msgNum":I
    .restart local v3    # "response":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 532
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 534
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, "uidParts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x3

    if-lt v7, v8, :cond_7

    const-string v7, "+OK"

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 546
    aget-object v7, v5, v10

    aput-object v7, v5, v9

    .line 547
    aget-object v7, v5, v11

    aput-object v7, v5, v10

    .line 549
    :cond_7
    array-length v7, v5

    if-lt v7, v11, :cond_6

    .line 551
    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 552
    .local v1, "msgNum":Ljava/lang/Integer;
    aget-object v2, v5, v10

    .line 553
    .restart local v2    # "msgUid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, p2, :cond_6

    .line 555
    iget-object v7, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 556
    if-nez v7, :cond_6

    .line 558
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    .line 559
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_2
.end method

.method private indexUids(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
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
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 571
    .local v7, "unindexedUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 573
    .local v5, "uid":Ljava/lang/String;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 575
    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v8, :cond_1

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Need to index UID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    .end local v5    # "uid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 621
    :cond_3
    return-void

    .line 591
    :cond_4
    const-string v8, "UIDL"

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "response":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 594
    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 596
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "uidParts":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_5

    .line 603
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 604
    .local v2, "msgNum":Ljava/lang/Integer;
    const/4 v8, 0x1

    aget-object v3, v6, v8

    .line 605
    .local v3, "msgUid":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 607
    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_6

    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v8, :cond_6

    .line 609
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got msgNum "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    :cond_6
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 613
    .local v1, "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-nez v1, :cond_7

    .line 615
    new-instance v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .end local v1    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    invoke-direct {v1, v3, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    .line 617
    .restart local v1    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/fsck/k9/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_1
.end method

.method private readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 955
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 956
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 957
    .local v0, "d":I
    if-ne v0, v5, :cond_0

    .line 959
    new-instance v3, Ljava/io/IOException;

    const-string v4, "End of stream reached while trying to read line."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 963
    :cond_0
    int-to-char v3, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 965
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 969
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 976
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 977
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_POP3:Z

    if-eqz v3, :cond_3

    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<<< "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    :cond_3
    return-object v1
.end method

.method private writeLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 988
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 989
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 990
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 991
    return-void
.end method


# virtual methods
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 879
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 343
    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->closeIO()V

    .line 354
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Z)V
    .locals 0
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 884
    return-void
.end method

.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 889
    new-array v0, v3, [Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    .line 890
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1094
    instance-of v0, p1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_0

    .line 1096
    check-cast p1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1098
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 12
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 658
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 737
    :cond_0
    return-void

    .line 662
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v8, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v5, p1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    .line 665
    .local v6, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 669
    .end local v6    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :try_start_1
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 685
    invoke-virtual {p2}, Lcom/fsck/k9/mail/FetchProfile;->size()I

    move-result v10

    if-ne v10, v11, :cond_3

    move-object v9, p3

    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 692
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 694
    aget-object v6, p1, v2

    .line 695
    .restart local v6    # "message":Lcom/fsck/k9/mail/Message;
    instance-of v9, v6, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    if-nez v9, :cond_5

    .line 697
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 671
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v4

    .line 673
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "fetch"

    invoke-direct {v9, v10, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 688
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 690
    .restart local v4    # "ioe":Ljava/io/IOException;
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "fetch"

    invoke-direct {v9, v10, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v6    # "message":Lcom/fsck/k9/mail/Message;
    :cond_5
    move-object v7, v6

    .line 699
    check-cast v7, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 702
    .local v7, "pop3Message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-eqz p3, :cond_6

    :try_start_2
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 704
    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    .line 706
    :cond_6
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 708
    const/4 v9, -0x1

    invoke-direct {p0, v7, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;I)V

    .line 727
    :cond_7
    :goto_2
    if-eqz p3, :cond_9

    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p2}, Lcom/fsck/k9/mail/FetchProfile;->size()I

    move-result v9

    if-eq v9, v11, :cond_9

    .line 729
    :cond_8
    invoke-interface {p3, v6}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 692
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 710
    :cond_a
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 716
    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x4c

    invoke-direct {p0, v7, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 732
    :catch_2
    move-exception v4

    .line 734
    .restart local v4    # "ioe":Ljava/io/IOException;
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to fetch message"

    invoke-direct {v9, v10, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 719
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_b
    :try_start_3
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v9}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 725
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/fsck/k9/mail/Body;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, -0x1

    return v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 432
    .local v0, "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .end local v0    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V

    .line 436
    .restart local v0    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    :cond_0
    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 9
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
    .line 443
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 445
    :cond_0
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "Invalid message set %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 450
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    move v3, p1

    .local v3, "msgNum":I
    :goto_0
    if-gt v3, p2, :cond_4

    .line 460
    iget-object v4, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;

    .line 461
    .local v1, "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    if-eqz v1, :cond_3

    .line 469
    if-eqz p4, :cond_2

    .line 474
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    .line 476
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    if-eqz p4, :cond_3

    .line 479
    invoke-interface {p4, v1}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 458
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "message":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    .end local v3    # "msgNum":I
    :catch_0
    move-exception v0

    .line 454
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    const-string v5, "getMessages"

    invoke-direct {v4, v5, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 482
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    .restart local v3    # "msgNum":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Message;

    return-object v4
.end method

.method public getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 2
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3: No getMessages"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 2
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3: No getMessages by uids"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 873
    invoke-static {}, Lcom/fsck/k9/mail/store/Pop3Store;->access$800()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

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

.method public declared-synchronized open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .locals 13
    .param p1, "mode"    # Lcom/fsck/k9/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 323
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v9, "INBOX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 222
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "Folder does not exist"

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 227
    :cond_1
    :try_start_2
    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v9

    invoke-direct {v6, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v6, "socketAddress":Ljava/net/SocketAddress;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 231
    :cond_2
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 232
    .local v7, "sslContext":Ljavax/net/ssl/SSLContext;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    const/4 v5, 0x1

    .line 233
    .local v5, "secure":Z
    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v11}, Lcom/fsck/k9/mail/store/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v11

    aput-object v11, v9, v10

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 237
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v8

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 238
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const/16 v9, 0x7530

    invoke-virtual {v8, v6, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 239
    new-instance v8, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x400

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 240
    new-instance v8, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    const/16 v10, 0x200

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    .line 250
    .end local v5    # "secure":Z
    .end local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_2
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const v9, 0xea60

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 251
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    .line 253
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "Unable to connect socket"

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    new-instance v8, Lcom/fsck/k9/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/fsck/k9/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v6    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 244
    .end local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_4
    :try_start_4
    new-instance v8, Ljava/net/Socket;

    invoke-direct {v8}, Ljava/net/Socket;-><init>()V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 245
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const/16 v9, 0x7530

    invoke-virtual {v8, v6, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 246
    new-instance v8, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x400

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 247
    new-instance v8, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    const/16 v10, 0x200

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 306
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v1

    .line 308
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    :try_start_5
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "Unable to open connection to POP server due to security error."

    invoke-direct {v8, v9, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    .end local v1    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v6    # "socketAddress":Ljava/net/SocketAddress;
    :cond_5
    const/4 v8, 0x0

    :try_start_6
    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 262
    :cond_6
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$502(Lcom/fsck/k9/mail/store/Pop3Store;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    .line 264
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$500(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v8

    iget-boolean v8, v8, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v8, :cond_8

    .line 266
    const-string v8, "STLS"

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->writeLine(Ljava/lang/String;)V

    .line 268
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 269
    .restart local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    const/4 v5, 0x1

    .line 270
    .restart local v5    # "secure":Z
    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v11}, Lcom/fsck/k9/mail/store/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v11

    aput-object v11, v9, v10

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 274
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v10}, Lcom/fsck/k9/mail/store/Pop3Store;->access$200(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v11}, Lcom/fsck/k9/mail/store/Pop3Store;->access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v8

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    .line 276
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    const v9, 0xea60

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 277
    new-instance v8, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x400

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mIn:Ljava/io/InputStream;

    .line 278
    new-instance v8, Ljava/io/BufferedOutputStream;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    const/16 v10, 0x200

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mOut:Ljava/io/OutputStream;

    .line 279
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->isOpen()Z

    move-result v8

    if-nez v8, :cond_9

    .line 281
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "Unable to connect socket"

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    .end local v5    # "secure":Z
    .end local v6    # "socketAddress":Ljava/net/SocketAddress;
    .end local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_2
    move-exception v2

    .line 313
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_7
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "Unable to open connection to POP server."

    invoke-direct {v8, v9, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 269
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v6    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 284
    .end local v7    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_8
    :try_start_8
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/Pop3Store;->access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 286
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    const-string v9, "TLS not supported but required"

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 292
    :cond_9
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "USER "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$600(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PASS "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-static {v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$700(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_9
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 300
    :try_start_a
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/store/Pop3Store;->access$502(Lcom/fsck/k9/mail/store/Pop3Store;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 316
    :try_start_b
    const-string v8, "STAT"

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 317
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "parts":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    .line 320
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 321
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 322
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 295
    .end local v4    # "parts":[Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 297
    .local v3, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_c
    new-instance v8, Lcom/fsck/k9/mail/AuthenticationFailedException;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v3}, Lcom/fsck/k9/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .locals 2
    .param p1, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 902
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 903
    .local v0, "messages":[Lcom/fsck/k9/mail/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    .line 904
    return-void
.end method

.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .locals 12
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 910
    if-eqz p3, :cond_0

    sget-object v8, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {p2, v8}, Lcom/fsck/k9/helper/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 944
    :cond_0
    return-void

    .line 917
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v7, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    :try_start_0
    array-length v3, p1

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 922
    .local v5, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    invoke-direct {p0, v7}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    move-object v0, p1

    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 934
    .restart local v5    # "message":Lcom/fsck/k9/mail/Message;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 935
    .local v6, "msgNum":Ljava/lang/Integer;
    if-nez v6, :cond_3

    .line 937
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not delete message "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because no msgNum found; permanent error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 939
    .local v4, "me":Lcom/fsck/k9/mail/MessagingException;
    invoke-virtual {v4, v11}, Lcom/fsck/k9/mail/MessagingException;->setPermanentFailure(Z)V

    .line 940
    throw v4

    .line 927
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "me":Lcom/fsck/k9/mail/MessagingException;
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    .end local v6    # "msgNum":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 929
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v8, Lcom/fsck/k9/mail/MessagingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not get message number for uid "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 942
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v6    # "msgNum":Ljava/lang/Integer;
    :cond_3
    const-string v8, "DELE %s"

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public supportsFetchingFlags()Z
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x0

    return v0
.end method
