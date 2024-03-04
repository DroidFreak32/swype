.class public Lcom/fsck/k9/mail/store/Pop3Store;
.super Lcom/fsck/k9/mail/Store;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/Pop3Store$Pop3ResponseInputStream;,
        Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;,
        Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;,
        Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
    }
.end annotation


# static fields
.field public static final CONNECTION_SECURITY_NONE:I = 0x0

.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4

.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3

.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1

.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2

.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;


# instance fields
.field private mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

.field private mConnectionSecurity:I

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 10
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3e3

    const/4 v8, 0x0

    const/16 v6, 0x6e

    const/4 v7, 0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/Store;-><init>(Lcom/fsck/k9/Account;)V

    .line 43
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    .line 85
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "scheme":Ljava/lang/String;
    const-string v5, "pop3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    iput v8, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I

    .line 96
    iput v6, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    .line 123
    :goto_0
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;

    .line 125
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 134
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "userInfoParts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    .line 136
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 138
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v4    # "userInfoParts":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 87
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Invalid Pop3Store URI"

    invoke-direct {v5, v6, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 98
    .end local v3    # "use":Ljava/net/URISyntaxException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/net/URI;
    :cond_2
    const-string v5, "pop3+tls"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    iput v7, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I

    .line 101
    iput v6, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    goto :goto_0

    .line 103
    :cond_3
    const-string v5, "pop3+tls+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    const/4 v5, 0x2

    iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I

    .line 106
    iput v6, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    goto :goto_0

    .line 108
    :cond_4
    const-string v5, "pop3+ssl+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 110
    const/4 v5, 0x3

    iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I

    .line 111
    iput v9, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    goto :goto_0

    .line 113
    :cond_5
    const-string v5, "pop3+ssl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 115
    const/4 v5, 0x4

    iput v5, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I

    .line 116
    iput v9, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    goto :goto_0

    .line 120
    :cond_6
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Unsupported protocol"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    :catch_1
    move-exception v0

    .line 144
    .local v0, "enc":Ljava/io/UnsupportedEncodingException;
    const-string v5, "k9"

    const-string v6, "Couldn\'t urldecode username or password."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/Pop3Store;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPort:I

    return v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/Pop3Store;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mConnectionSecurity:I

    return v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/Pop3Store;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fsck/k9/mail/store/Pop3Store;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;)Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/Pop3Store;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fsck/k9/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method


# virtual methods
.method public checkSettings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    const-string v1, "INBOX"

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 173
    .local v0, "folder":Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;
    sget-object v1, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 174
    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mCapabilities:Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v1, v1, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    if-nez v1, :cond_0

    .line 185
    const-string v1, "UIDL"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->access$000(Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;->close()V

    .line 189
    return-void
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Folder;

    .line 153
    .local v0, "folder":Lcom/fsck/k9/mail/Folder;
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    .end local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 156
    .restart local v0    # "folder":Lcom/fsck/k9/mail/Folder;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    return-object v0
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 2
    .param p1, "forceListAll"    # Z
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

    .prologue
    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    const-string v1, "INBOX"

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object v0
.end method
