.class Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebDavFolder"
.end annotation


# instance fields
.field private mFolderUrl:Ljava/lang/String;

.field private mIsOpen:Z

.field private mMessageCount:I

.field private mName:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private store:Lcom/fsck/k9/mail/store/WebDavStore;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
    .locals 9
    .param p2, "nStore"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1147
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    .line 1148
    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/WebDavStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/Folder;-><init>(Lcom/fsck/k9/Account;)V

    .line 1136
    iput-boolean v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z

    .line 1137
    iput v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I

    .line 1138
    iput v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I

    .line 1149
    iput-object p2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    .line 1150
    iput-object p3, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mName:Ljava/lang/String;

    .line 1152
    const-string v6, "##DavMailSubmissionURI##"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 1203
    :goto_0
    return-void

    .line 1158
    :cond_0
    :try_start_0
    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1162
    .local v5, "urlParts":[Ljava/lang/String;
    const-string v4, ""

    .line 1163
    .local v4, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v5

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1165
    if-eqz v2, :cond_1

    .line 1167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v2

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1163
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1171
    :cond_1
    aget-object v6, v5, v2

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    .line 1174
    :cond_2
    move-object v1, v4

    .line 1182
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "urlParts":[Ljava/lang/String;
    .local v1, "encodedName":Ljava/lang/String;
    :goto_3
    const-string v6, "\\+"

    const-string v7, "%20"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    const-string v6, "INBOX"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1194
    const-string v1, "Inbox"

    .line 1196
    :cond_3
    invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$100(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 1197
    invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$100(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 1201
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 1176
    .end local v1    # "encodedName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1178
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v6, "k9"

    const-string v7, "UnsupportedEncodingException URLEncoding folder name, skipping encoded"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    move-object v1, p3

    .restart local v1    # "encodedName":Ljava/lang/String;
    goto :goto_3
.end method

.method private deleteServerMessages([Ljava/lang/String;)V
    .locals 11
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1859
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 1861
    .local v10, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v6, p1

    .local v6, "arr$":[Ljava/lang/String;
    array-length v8, p1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v6, v7

    .line 1863
    .local v9, "uid":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1864
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1865
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    const-string v0, "Brief"

    const-string v2, "t"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    const-string v2, "DELETE"

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->access$300(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    .line 1861
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1877
    :cond_0
    const-string v0, "Destination"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    const-string v0, "Brief"

    const-string v2, "t"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    const-string v2, "MOVE"

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->access$300(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    goto :goto_1

    .line 1882
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "uid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 12
    .param p1, "startMessages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    .line 1736
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1737
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1738
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1739
    new-array v5, v11, [Lcom/fsck/k9/mail/Message;

    .line 1743
    .local v5, "messages":[Lcom/fsck/k9/mail/Message;
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 1806
    :cond_0
    return-void

    .line 1749
    :cond_1
    array-length v9, p1

    if-le v9, v11, :cond_4

    .line 1751
    array-length v9, p1

    add-int/lit8 v9, v9, -0xa

    new-array v6, v9, [Lcom/fsck/k9/mail/Message;

    .line 1752
    .local v6, "newMessages":[Lcom/fsck/k9/mail/Message;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1754
    if-ge v3, v11, :cond_2

    .line 1756
    aget-object v9, p1, v3

    aput-object v9, v5, v3

    .line 1752
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1760
    :cond_2
    add-int/lit8 v9, v3, -0xa

    aget-object v10, p1, v3

    aput-object v10, v6, v9

    goto :goto_1

    .line 1764
    :cond_3
    invoke-direct {p0, v6, p2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 1771
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v6    # "newMessages":[Lcom/fsck/k9/mail/Message;
    :goto_2
    array-length v9, v5

    new-array v7, v9, [Ljava/lang/String;

    .line 1773
    .local v7, "uids":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v0, v5

    .restart local v0    # "count":I
    :goto_3
    if-ge v3, v0, :cond_5

    .line 1775
    aget-object v9, v5, v3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    .line 1773
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1768
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v7    # "uids":[Ljava/lang/String;
    :cond_4
    move-object v5, p1

    goto :goto_2

    .line 1778
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v7    # "uids":[Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v9, v7}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1400(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1779
    .local v4, "messageBody":Ljava/lang/String;
    const-string v9, "Brief"

    const-string v10, "t"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v11, "SEARCH"

    invoke-static {v9, v10, v11, v4, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v9

    .line 1782
    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getMessageEnvelopes()Ljava/util/HashMap;

    move-result-object v1

    .line 1784
    .local v1, "envelopes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;>;"
    array-length v9, v5

    add-int/lit8 v3, v9, -0x1

    :goto_4
    if-ltz v3, :cond_0

    .line 1787
    aget-object v9, v5, v3

    instance-of v9, v9, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    if-nez v9, :cond_6

    .line 1789
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1791
    :cond_6
    aget-object v8, v5, v3

    check-cast v8, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    .line 1793
    .local v8, "wdMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    if-eqz p2, :cond_7

    .line 1795
    aget-object v9, v5, v3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    .line 1798
    :cond_7
    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setNewHeaders(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V

    .line 1799
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->getReadStatus()Z

    move-result v9

    invoke-virtual {v8, v10, v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1801
    if-eqz p2, :cond_8

    .line 1803
    aget-object v9, v5, v3

    invoke-interface {p2, v9}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1785
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method private fetchFlags([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 13
    .param p1, "startMessages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x14

    .line 1653
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1654
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1655
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v10, v11}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1656
    new-array v5, v12, [Lcom/fsck/k9/mail/Message;

    .line 1660
    .local v5, "messages":[Lcom/fsck/k9/mail/Message;
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 1726
    :cond_0
    return-void

    .line 1666
    :cond_1
    array-length v10, p1

    if-le v10, v12, :cond_4

    .line 1668
    array-length v10, p1

    add-int/lit8 v10, v10, -0x14

    new-array v6, v10, [Lcom/fsck/k9/mail/Message;

    .line 1669
    .local v6, "newMessages":[Lcom/fsck/k9/mail/Message;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1671
    if-ge v3, v12, :cond_2

    .line 1673
    aget-object v10, p1, v3

    aput-object v10, v5, v3

    .line 1669
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1677
    :cond_2
    add-int/lit8 v10, v3, -0x14

    aget-object v11, p1, v3

    aput-object v11, v6, v10

    goto :goto_1

    .line 1681
    :cond_3
    invoke-direct {p0, v6, p2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchFlags([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 1688
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v6    # "newMessages":[Lcom/fsck/k9/mail/Message;
    :goto_2
    array-length v10, v5

    new-array v8, v10, [Ljava/lang/String;

    .line 1690
    .local v8, "uids":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v0, v5

    .restart local v0    # "count":I
    :goto_3
    if-ge v3, v0, :cond_5

    .line 1692
    aget-object v10, v5, v3

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    .line 1690
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1685
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v8    # "uids":[Ljava/lang/String;
    :cond_4
    move-object v5, p1

    goto :goto_2

    .line 1695
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v8    # "uids":[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v10, v8}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1300(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1696
    .local v4, "messageBody":Ljava/lang/String;
    const-string v10, "Brief"

    const-string v11, "t"

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v12, "SEARCH"

    invoke-static {v10, v11, v12, v4, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v1

    .line 1699
    .local v1, "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    if-nez v1, :cond_6

    .line 1701
    new-instance v10, Lcom/fsck/k9/mail/MessagingException;

    const-string v11, "Data Set from request was null"

    invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1704
    :cond_6
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUidToRead()Ljava/util/HashMap;

    move-result-object v7

    .line 1706
    .local v7, "uidToReadStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    array-length v0, v5

    :goto_4
    if-ge v3, v0, :cond_0

    .line 1708
    aget-object v10, v5, v3

    instance-of v10, v10, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    if-nez v10, :cond_7

    .line 1710
    new-instance v10, Lcom/fsck/k9/mail/MessagingException;

    const-string v11, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct {v10, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1712
    :cond_7
    aget-object v9, v5, v3

    check-cast v9, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    .line 1714
    .local v9, "wdMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    if-eqz p2, :cond_8

    .line 1716
    aget-object v10, v5, v3

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    .line 1719
    :cond_8
    sget-object v11, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v9, v11, v10}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1721
    if-eqz p2, :cond_9

    .line 1723
    aget-object v10, v5, v3

    invoke-interface {p2, v10}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1706
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private fetchMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;I)V
    .locals 23
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .param p3, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    move-result-object v7

    .line 1533
    .local v7, "httpclient":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p1

    array-length v4, v0

    .local v4, "count":I
    :goto_0
    if-ge v9, v4, :cond_a

    .line 1536
    const/16 v16, 0x0

    .line 1538
    .local v16, "statusCode":I
    aget-object v20, p1, v9

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1540
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1543
    :cond_0
    aget-object v19, p1, v9

    check-cast v19, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    .line 1545
    .local v19, "wdMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    if-eqz p2, :cond_1

    .line 1547
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    .line 1554
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1556
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setUrl(Ljava/lang/String;)V

    .line 1557
    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Fetching messages with UID = \'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', URL = \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1561
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "Unable to get URL for message"

    invoke-direct/range {v20 .. v21}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1567
    :cond_2
    :try_start_0
    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Fetching message with UID = \'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', URL = \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    new-instance v20, Ljava/net/URI;

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 1573
    .local v8, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const-string v20, "translate"

    const-string v21, "f"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore;->access$900(Lcom/fsck/k9/mail/store/WebDavStore;)S

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1576
    const-string v20, "Authorization"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1000(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1100(Lcom/fsck/k9/mail/store/WebDavStore;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v8, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 1580
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 1582
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 1584
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/16 v20, 0xc8

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    const/16 v20, 0x12c

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 1587
    :cond_4
    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Error during with code "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " during fetch: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1622
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v10

    .line 1624
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "IllegalArgumentException caught "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nTrace: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "IllegalArgumentException caught"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1591
    .end local v10    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    if-eqz v6, :cond_8

    .line 1593
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1595
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .line 1596
    .local v17, "tempText":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1598
    .local v15, "resultText":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1600
    .local v5, "currentLines":I
    invoke-static {v6}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v12

    .line 1602
    .local v12, "istream":Ljava/io/InputStream;
    const/16 v20, -0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 1604
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v21, 0x2000

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1606
    .local v13, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    move/from16 v0, p3

    if-ge v5, v0, :cond_6

    .line 1609
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1610
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1613
    :cond_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 1614
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1615
    new-instance v12, Ljava/io/ByteArrayInputStream;

    .end local v12    # "istream":Ljava/io/InputStream;
    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1618
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "istream":Ljava/io/InputStream;
    :cond_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->parse(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1640
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "currentLines":I
    .end local v12    # "istream":Ljava/io/InputStream;
    .end local v15    # "resultText":Ljava/lang/String;
    .end local v17    # "tempText":Ljava/lang/String;
    :cond_8
    if-eqz p2, :cond_9

    .line 1642
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1533
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v18

    .line 1629
    .local v18, "use":Ljava/net/URISyntaxException;
    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "URISyntaxException caught "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nTrace: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    const-string v21, "URISyntaxException caught"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1632
    .end local v18    # "use":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v11

    .line 1634
    .local v11, "ioe":Ljava/io/IOException;
    const-string v20, "k9"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Non-success response code loading message, response code was "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nURL: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nError: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\nTrace: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    new-instance v20, Lcom/fsck/k9/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Failure code "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1645
    .end local v11    # "ioe":Ljava/io/IOException;
    .end local v16    # "statusCode":I
    .end local v19    # "wdMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    :cond_a
    return-void
.end method

.method private generateDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "startUrl"    # Ljava/lang/String;

    .prologue
    .line 1886
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1887
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 1888
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$100(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Deleted%20Items/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1890
    return-object v1
.end method

.method private getMessageCount(Z)I
    .locals 8
    .param p1, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1277
    const/4 v4, 0x0

    .line 1278
    .local v4, "messageCount":I
    new-instance v5, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1282
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1284
    const-string v2, "True"

    .line 1291
    .local v2, "isRead":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v5, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1292
    .local v3, "messageBody":Ljava/lang/String;
    const-string v5, "Brief"

    const-string v6, "t"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v7, "SEARCH"

    invoke-static {v5, v6, v7, v3, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v0

    .line 1294
    .local v0, "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getMessageCount()I

    move-result v4

    .line 1299
    :cond_0
    return v4

    .line 1288
    .end local v0    # "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .end local v2    # "isRead":Ljava/lang/String;
    .end local v3    # "messageBody":Ljava/lang/String;
    :cond_1
    const-string v2, "False"

    .restart local v2    # "isRead":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1471
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1473
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1477
    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v2, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$800(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, "messageBody":Ljava/lang/String;
    const-string v2, "Brief"

    const-string v3, "t"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    iget-object v3, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v4, "SEARCH"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v2

    .line 1481
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUidToUrl()Ljava/util/HashMap;

    move-result-object v2

    .line 1483
    return-object v2
.end method

.method private markServerMessagesRead([Ljava/lang/String;Z)V
    .locals 10
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "read"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1840
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1842
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 1843
    .local v8, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v0, p1

    new-array v9, v0, [Ljava/lang/String;

    .line 1845
    .local v9, "urls":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v6, p1

    .local v6, "count":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 1847
    aget-object v0, p1, v7

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v9, v7

    .line 1845
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v0, v9, p2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1600(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1851
    .local v3, "messageBody":Ljava/lang/String;
    const-string v0, "Brief"

    const-string v1, "t"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    const-string v0, "If-Match"

    const-string v1, "*"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v2, "BPROPPATCH"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->access$300(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    .line 1855
    return-void
.end method

.method private moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "isMove"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1242
    array-length v1, p1

    new-array v11, v1, [Ljava/lang/String;

    .line 1244
    .local v11, "uids":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v7, p1

    .local v7, "count":I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 1246
    aget-object v1, p1, v9

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v9

    .line 1244
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1248
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1250
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v11}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageUrls([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 1251
    .local v10, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, v11

    new-array v12, v1, [Ljava/lang/String;

    .line 1253
    .local v12, "urls":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v7, v11

    :goto_1
    if-ge v9, v7, :cond_2

    .line 1255
    aget-object v1, v11, v9

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v12, v9

    .line 1256
    aget-object v1, v12, v9

    if-nez v1, :cond_1

    aget-object v1, p1, v9

    instance-of v1, v1, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    if-eqz v1, :cond_1

    .line 1258
    aget-object v13, p1, v9

    check-cast v13, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    .line 1259
    .local v13, "wdMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v9

    .line 1253
    .end local v13    # "wdMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1263
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move/from16 v0, p3

    invoke-static {v1, v12, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->access$200(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, "messageBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    .line 1265
    .local v8, "destFolder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    const-string v1, "Destination"

    iget-object v2, v8, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-string v1, "Brief"

    const-string v2, "t"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string v1, "If-Match"

    const-string v2, "*"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    if-eqz p3, :cond_3

    const-string v3, "BMOVE"

    .line 1269
    .local v3, "action":Ljava/lang/String;
    :goto_2
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Moving "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " messages to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v8, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/fsck/k9/mail/store/WebDavStore;->access$300(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    .line 1272
    return-void

    .line 1268
    .end local v3    # "action":Ljava/lang/String;
    :cond_3
    const-string v3, "BCOPY"

    goto :goto_2
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
    .line 1896
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->appendWebDavMessages([Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Message;

    .line 1897
    return-void
.end method

.method public appendWebDavMessages([Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Message;
    .locals 26
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1901
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v20, v0

    .line 1902
    .local v20, "retMessages":[Lcom/fsck/k9/mail/Message;
    const/4 v10, 0x0

    .line 1904
    .local v10, "ind":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    move-result-object v7

    .line 1906
    .local v7, "httpclient":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
    move-object/from16 v4, p1

    .local v4, "arr$":[Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p1

    array-length v12, v0

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v11, v10

    .end local v10    # "ind":I
    .local v11, "ind":I
    :goto_0
    if-ge v9, v12, :cond_4

    aget-object v14, v4, v9

    .line 1917
    .local v14, "message":Lcom/fsck/k9/mail/Message;
    :try_start_0
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1919
    .local v17, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v22, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1920
    new-instance v16, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    new-instance v22, Ljava/io/BufferedOutputStream;

    const/16 v23, 0x400

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1922
    .local v16, "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1923
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 1925
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    .local v5, "bodyEntity":Lorg/apache/http/entity/StringEntity;
    const-string v22, "message/rfc822"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 1929
    .local v15, "messageURL":Ljava/lang/String;
    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1931
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1933
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".eml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1935
    const-string v22, "k9"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Uploading message as "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    new-instance v8, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v8, v0, v15}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 1938
    .local v8, "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    const-string v22, "PUT"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v8, v5}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/WebDavStore;->getAuthString()Ljava/lang/String;

    move-result-object v13

    .line 1943
    .local v13, "mAuthString":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1945
    const-string v22, "Authorization"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v13}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1100(Lcom/fsck/k9/mail/store/WebDavStore;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v8, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 1949
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 1951
    .local v21, "statusCode":I
    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    const/16 v22, 0x12c

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 1954
    :cond_2
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Error with status code "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " while sending/appending message.  Response = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for message "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    .end local v5    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v13    # "mAuthString":Ljava/lang/String;
    .end local v15    # "messageURL":Ljava/lang/String;
    .end local v16    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .end local v17    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "statusCode":I
    :catch_0
    move-exception v6

    move v10, v11

    .line 1965
    .end local v11    # "ind":I
    .local v6, "e":Ljava/lang/Exception;
    .restart local v10    # "ind":I
    :goto_1
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    const-string v23, "Unable to append"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 1958
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "ind":I
    .restart local v5    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v11    # "ind":I
    .restart local v13    # "mAuthString":Ljava/lang/String;
    .restart local v15    # "messageURL":Ljava/lang/String;
    .restart local v16    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .restart local v17    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "statusCode":I
    :cond_3
    :try_start_1
    new-instance v19, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 1960
    .local v19, "retMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1961
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "ind":I
    .restart local v10    # "ind":I
    :try_start_2
    aput-object v19, v20, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1906
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10    # "ind":I
    .restart local v11    # "ind":I
    goto/16 :goto_0

    .line 1968
    .end local v5    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v13    # "mAuthString":Ljava/lang/String;
    .end local v14    # "message":Lcom/fsck/k9/mail/Message;
    .end local v15    # "messageURL":Ljava/lang/String;
    .end local v16    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .end local v17    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "retMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    .end local v21    # "statusCode":I
    :cond_4
    return-object v20

    .line 1963
    .end local v11    # "ind":I
    .restart local v5    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v8    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v10    # "ind":I
    .restart local v13    # "mAuthString":Ljava/lang/String;
    .restart local v14    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v15    # "messageURL":Ljava/lang/String;
    .restart local v16    # "msgOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    .restart local v17    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "retMessage":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    .restart local v21    # "statusCode":I
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1351
    iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I

    .line 1352
    iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I

    .line 1353
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z

    .line 1354
    return-void
.end method

.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 2
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1224
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V

    .line 1225
    return-void
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
    .line 1359
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Z)V
    .locals 2
    .param p1, "recursive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/Error;

    const-string v1, "WebDavFolder.delete() not implemeneted"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1236
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V

    .line 1237
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1974
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x1

    return v0
.end method

.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 1
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1490
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1499
    :cond_1
    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1501
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchEnvelope([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 1506
    :cond_2
    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1508
    invoke-direct {p0, p1, p3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchFlags([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 1511
    :cond_3
    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1513
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x4c

    invoke-direct {p0, p1, p3, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;I)V

    .line 1515
    :cond_4
    sget-object v0, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    const/4 v0, -0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->fetchMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessageRetrievalListener;I)V

    goto :goto_0
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1321
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
    .line 1371
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1305
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1306
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageCount(Z)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I

    .line 1307
    iget v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 17
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
    .line 1378
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v7, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    new-instance v12, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1381
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1382
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v8, p1

    .line 1388
    .local v8, "prevStart":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mMessageCount:I

    sub-int p1, v12, p2

    .line 1389
    sub-int v12, p2, v8

    add-int p2, p1, v12

    .line 1391
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1393
    :cond_0
    new-instance v12, Lcom/fsck/k9/mail/MessagingException;

    const-string v13, "Invalid message set %d %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1396
    :cond_1
    if-nez p1, :cond_2

    const/16 v12, 0xa

    move/from16 v0, p2

    if-ge v0, v12, :cond_2

    .line 1398
    const/16 p2, 0xa

    .line 1402
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v12}, Lcom/fsck/k9/mail/store/WebDavStore;->access$600(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v6

    .line 1404
    .local v6, "messageBody":Ljava/lang/String;
    const-string v12, "Brief"

    const-string v13, "t"

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    const-string v12, "Range"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "rows="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    const-string v14, "SEARCH"

    invoke-static {v12, v13, v14, v6, v3}, Lcom/fsck/k9/mail/store/WebDavStore;->access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v2

    .line 1408
    .local v2, "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUids()[Ljava/lang/String;

    move-result-object v10

    .line 1409
    .local v10, "uids":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getUidToUrl()Ljava/util/HashMap;

    move-result-object v9

    .line 1410
    .local v9, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v11, v10

    .line 1412
    .local v11, "uidsLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_4

    .line 1414
    new-instance v5, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    aget-object v13, v10, v4

    move-object/from16 v0, p0

    invoke-direct {v5, v12, v13, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 1419
    .local v5, "message":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    aget-object v12, v10, v4

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setUrl(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    if-eqz p4, :cond_3

    .line 1424
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1412
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1428
    .end local v5    # "message":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    :cond_4
    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$700()[Lcom/fsck/k9/mail/Message;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/fsck/k9/mail/Message;

    return-object v12
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
    .line 1434
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 6
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v3, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 1446
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$700()[Lcom/fsck/k9/mail/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Message;

    .line 1466
    :goto_0
    return-object v4

    .line 1449
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1451
    new-instance v2, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;

    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    aget-object v5, p1, v1

    invoke-direct {v2, v4, v5, p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 1457
    .local v2, "message":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    if-eqz p2, :cond_2

    .line 1461
    invoke-interface {p2, v2}, Lcom/fsck/k9/controller/MessageRetrievalListener;->messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V

    .line 1449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1464
    .end local v2    # "message":Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
    :cond_3
    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$700()[Lcom/fsck/k9/mail/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Message;

    goto :goto_0
.end method

.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 1333
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 1811
    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1500()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method protected getStore()Lcom/fsck/k9/mail/store/WebDavStore;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    return-object v0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1986
    const-string v0, "k9"

    const-string v1, "Unimplemented method getUidFromMessageId in WebDavStore.WebDavFolder could lead to duplicate messages  being uploaded to the Sent folder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
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
    .line 1313
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getMessageCount(Z)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I

    .line 1315
    iget v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mUnreadMessageCount:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1980
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z

    return v0
.end method

.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 2
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveOrCopyMessages([Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z)V

    .line 1231
    return-void
.end method

.method public open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/fsck/k9/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mIsOpen:Z

    .line 1219
    return-void
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
    .line 1995
    const-string v0, "k9"

    const-string v1, "Unimplemented method setFlags(Flag[], boolean) breaks markAllMessagesAsRead and EmptyTrash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void
.end method

.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .locals 8
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1818
    array-length v7, p1

    new-array v6, v7, [Ljava/lang/String;

    .line 1820
    .local v6, "uids":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1822
    aget-object v7, p1, v3

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1820
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1825
    :cond_0
    move-object v0, p2

    .local v0, "arr$":[Lcom/fsck/k9/mail/Flag;
    array-length v5, p2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 1827
    .local v2, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne v2, v7, :cond_2

    .line 1829
    invoke-direct {p0, v6, p3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->markServerMessagesRead([Ljava/lang/String;Z)V

    .line 1825
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1831
    :cond_2
    sget-object v7, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v2, v7, :cond_1

    .line 1833
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->deleteServerMessages([Ljava/lang/String;)V

    goto :goto_2

    .line 1836
    .end local v2    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1207
    if-eqz p1, :cond_0

    .line 1209
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->mFolderUrl:Ljava/lang/String;

    .line 1211
    :cond_0
    return-void
.end method
