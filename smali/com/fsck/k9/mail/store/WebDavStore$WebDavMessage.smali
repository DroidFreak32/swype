.class Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebDavMessage"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .locals 1
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 2009
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 2006
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    .line 2010
    iput-object p2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUid:Ljava/lang/String;

    .line 2011
    iput-object p3, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 2012
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    .line 2118
    .local v0, "wdFolder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting message by moving to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getStore()Lcom/fsck/k9/mail/store/WebDavStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    .line 2120
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2084
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 2085
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2125
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2126
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    new-array v1, v2, [Lcom/fsck/k9/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/fsck/k9/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    .line 2127
    return-void
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2090
    return-void
.end method

.method public setNewHeaders(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V
    .locals 9
    .param p1, "envelope"    # Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->getHeaderList()[Ljava/lang/String;

    move-result-object v3

    .line 2095
    .local v3, "headers":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->getMessageHeaders()Ljava/util/HashMap;

    move-result-object v6

    .line 2097
    .local v6, "messageHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 2099
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2100
    .local v2, "headerValue":Ljava/lang/String;
    const-string v8, "Content-Length"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2102
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2103
    .local v7, "size":I
    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setSize(I)V

    .line 2106
    .end local v7    # "size":I
    :cond_0
    if-eqz v2, :cond_1

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2109
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2112
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "headerValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 2078
    iput p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mSize:I

    .line 2079
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2018
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2020
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2022
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2024
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v7}, Lcom/fsck/k9/mail/store/WebDavStore;->access$100(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2027
    :cond_1
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2028
    .local v5, "urlParts":[Ljava/lang/String;
    array-length v3, v5

    .line 2029
    .local v3, "length":I
    add-int/lit8 v6, v3, -0x1

    aget-object v0, v5, v6

    .line 2031
    .local v0, "end":Ljava/lang/String;
    const-string v6, ""

    iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    .line 2032
    const-string p1, ""

    .line 2039
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    const-string v6, "\\+"

    const-string v7, "%20"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2054
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v3, -0x1

    if-ge v1, v6, :cond_3

    .line 2056
    if-eqz v1, :cond_2

    .line 2058
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2054
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2043
    .end local v1    # "i":I
    :catch_0
    move-exception v4

    .line 2045
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UnsupportedEncodingException caught in setUrl: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nTrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v8, v4}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2048
    .end local v4    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 2050
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IllegalArgumentException caught in setUrl: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nTrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-static {v8, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2062
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "i":I
    :cond_2
    aget-object p1, v5, v1

    goto :goto_2

    .line 2066
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2068
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    .line 2069
    return-void
.end method
