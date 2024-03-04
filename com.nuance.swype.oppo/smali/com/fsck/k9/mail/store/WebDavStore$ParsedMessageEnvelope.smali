.class public Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
.super Ljava/lang/Object;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedMessageEnvelope"
.end annotation


# instance fields
.field private final mHeaderMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReadStatus:Z

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2192
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;-><init>(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    .line 2209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mReadStatus:Z

    .line 2210
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mUid:Ljava/lang/String;

    .line 2211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mMessageHeaders:Ljava/util/HashMap;

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2218
    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mMessageHeaders:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    :cond_0
    return-void
.end method

.method public getHeaderList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaders:Ljava/util/ArrayList;

    invoke-static {}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1700()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMessageHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mMessageHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReadStatus()Z
    .locals 1

    .prologue
    .line 2242
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mReadStatus:Z

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public setReadStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 2237
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mReadStatus:Z

    .line 2238
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 2247
    if-eqz p1, :cond_0

    .line 2249
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mUid:Ljava/lang/String;

    .line 2251
    :cond_0
    return-void
.end method
