.class public Lcom/fsck/k9/mail/transport/WebDavTransport;
.super Lcom/fsck/k9/mail/Transport;
.source "WebDavTransport.java"


# instance fields
.field private store:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/mail/Transport;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v0

    instance-of v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/WebDavStore;

    iput-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    .line 28
    :goto_0
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 29
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;-><init>(Lcom/fsck/k9/Account;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 35
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 36
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    .line 39
    return-void
.end method

.method public sendMessage(Lcom/fsck/k9/mail/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/mail/transport/WebDavTransport;->store:Lcom/fsck/k9/mail/store/WebDavStore;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->sendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 50
    return-void
.end method
