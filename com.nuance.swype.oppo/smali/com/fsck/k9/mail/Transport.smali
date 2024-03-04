.class public abstract Lcom/fsck/k9/mail/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x2710

.field protected static final SOCKET_READ_TIMEOUT:I = 0x493e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mail/Transport;
    .locals 5
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 17
    const-class v2, Lcom/fsck/k9/mail/Transport;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "smtp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lcom/fsck/k9/mail/transport/SmtpTransport;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/transport/SmtpTransport;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_0
    monitor-exit v2

    return-object v1

    .line 22
    :cond_0
    :try_start_1
    const-string v1, "webdav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Lcom/fsck/k9/mail/transport/WebDavTransport;

    invoke-direct {v1, p0}, Lcom/fsck/k9/mail/transport/WebDavTransport;-><init>(Lcom/fsck/k9/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 17
    .end local v0    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 28
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to locate an applicable Transport for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/fsck/k9/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method
