.class public abstract Lcom/fsck/k9/mail/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x7530

.field protected static SOCKET_READ_TIMEOUT:I

.field private static mLocalStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Store;",
            ">;"
        }
    .end annotation
.end field

.field private static mStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Store;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mAccount:Lcom/fsck/k9/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0xea60

    sput v0, Lcom/fsck/k9/mail/Store;->SOCKET_READ_TIMEOUT:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/Store;->mStores:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/Store;->mLocalStores:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/fsck/k9/mail/Store;->mAccount:Lcom/fsck/k9/Account;

    .line 44
    return-void
.end method

.method public static declared-synchronized getLocalInstance(Lcom/fsck/k9/Account;Landroid/app/Application;)Lcom/fsck/k9/mail/store/LocalStore;
    .locals 4
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 94
    const-class v2, Lcom/fsck/k9/mail/Store;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/fsck/k9/mail/Store;->mLocalStores:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Store;

    .line 95
    .local v0, "store":Lcom/fsck/k9/mail/Store;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore;

    .end local v0    # "store":Lcom/fsck/k9/mail/Store;
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore;-><init>(Lcom/fsck/k9/Account;Landroid/app/Application;)V

    .line 98
    .restart local v0    # "store":Lcom/fsck/k9/mail/Store;
    sget-object v1, Lcom/fsck/k9/mail/Store;->mLocalStores:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "store":Lcom/fsck/k9/mail/Store;
    monitor-exit v2

    return-object v0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getRemoteInstance(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mail/Store;
    .locals 6
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 51
    const-class v3, Lcom/fsck/k9/mail/Store;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Asked to get non-local Store object but given LocalStore URI"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 58
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/fsck/k9/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Store;

    .line 59
    .local v0, "store":Lcom/fsck/k9/mail/Store;
    if-nez v0, :cond_2

    .line 61
    const-string v2, "imap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore;

    .end local v0    # "store":Lcom/fsck/k9/mail/Store;
    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapStore;-><init>(Lcom/fsck/k9/Account;)V

    .line 74
    .restart local v0    # "store":Lcom/fsck/k9/mail/Store;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 76
    sget-object v2, Lcom/fsck/k9/mail/Store;->mStores:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    if-nez v0, :cond_5

    .line 82
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to locate an applicable Store for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_3
    const-string v2, "pop3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store;

    .end local v0    # "store":Lcom/fsck/k9/mail/Store;
    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/Pop3Store;-><init>(Lcom/fsck/k9/Account;)V

    .restart local v0    # "store":Lcom/fsck/k9/mail/Store;
    goto :goto_0

    .line 69
    :cond_4
    const-string v2, "webdav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore;

    .end local v0    # "store":Lcom/fsck/k9/mail/Store;
    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/WebDavStore;-><init>(Lcom/fsck/k9/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "store":Lcom/fsck/k9/mail/Store;
    goto :goto_0

    .line 85
    :cond_5
    monitor-exit v3

    return-object v0
.end method


# virtual methods
.method public abstract checkSettings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fsck/k9/mail/Store;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method public abstract getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
.end method

.method public abstract getPersonalNamespaces(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;
    .locals 1
    .param p1, "receiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isExpungeCapable()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isPushCapable()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isSendCapable()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessages([Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method
