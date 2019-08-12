.class public Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebDavHandler"
.end annotation


# instance fields
.field private mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

.field private mOpenTags:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .locals 2

    .prologue
    .line 2133
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2135
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    .line 2136
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 2177
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 2178
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2153
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2168
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->finish()V

    .line 2172
    :cond_0
    return-void
.end method

.method public getDataSet()Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    return-object v0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2146
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    .line 2147
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    return-void
.end method
