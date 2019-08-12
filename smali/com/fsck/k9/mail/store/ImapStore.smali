.class public Lcom/fsck/k9/mail/store/ImapStore;
.super Lcom/fsck/k9/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/ImapStore$1;,
        Lcom/fsck/k9/mail/store/ImapStore$FetchPartCallback;,
        Lcom/fsck/k9/mail/store/ImapStore$FetchBodyCallback;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;,
        Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapException;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;,
        Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;,
        Lcom/fsck/k9/mail/store/ImapStore$AuthType;
    }
.end annotation


# static fields
.field private static final CAPABILITY_CAPABILITY:Ljava/lang/String; = "CAPABILITY"

.field private static final CAPABILITY_COMPRESS_DEFLATE:Ljava/lang/String; = "COMPRESS=DEFLATE"

.field private static final CAPABILITY_IDLE:Ljava/lang/String; = "IDLE"

.field private static final CAPABILITY_NAMESPACE:Ljava/lang/String; = "NAMESPACE"

.field private static final COMMAND_CAPABILITY:Ljava/lang/String; = "CAPABILITY"

.field private static final COMMAND_COMPRESS_DEFLATE:Ljava/lang/String; = "COMPRESS DEFLATE"

.field private static final COMMAND_IDLE:Ljava/lang/String; = "IDLE"

.field private static final COMMAND_NAMESPACE:Ljava/lang/String; = "NAMESPACE"

.field public static final CONNECTION_SECURITY_NONE:I = 0x0

.field public static final CONNECTION_SECURITY_SSL_OPTIONAL:I = 0x4

.field public static final CONNECTION_SECURITY_SSL_REQUIRED:I = 0x3

.field public static final CONNECTION_SECURITY_TLS_OPTIONAL:I = 0x1

.field public static final CONNECTION_SECURITY_TLS_REQUIRED:I = 0x2

.field private static final EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static FETCH_WINDOW_SIZE:I = 0x0

.field private static final IDLE_FAILURE_COUNT_LIMIT:I = 0xa

.field private static final IDLE_READ_TIMEOUT_INCREMENT:I = 0x493e0

.field public static final INTERNAL_DATE:Ljava/text/SimpleDateFormat;

.field private static MAX_DELAY_TIME:I

.field private static NORMAL_DELAY_TIME:I

.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

.field public static final RFC3501_DATE:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

.field private volatile mCombinedPrefix:Ljava/lang/String;

.field private mConnectionSecurity:I

.field private mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mModifiedUtf7Charset:Ljava/nio/charset/Charset;

.field private mPassword:Ljava/lang/String;

.field private volatile mPathDelimeter:Ljava/lang/String;

.field private volatile mPathPrefix:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    const v0, 0x493e0

    sput v0, Lcom/fsck/k9/mail/store/ImapStore;->MAX_DELAY_TIME:I

    .line 72
    const/16 v0, 0x1388

    sput v0, Lcom/fsck/k9/mail/store/ImapStore;->NORMAL_DELAY_TIME:I

    .line 74
    const/16 v0, 0x64

    sput v0, Lcom/fsck/k9/mail/store/ImapStore;->FETCH_WINDOW_SIZE:I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    .line 89
    new-array v0, v3, [Lcom/fsck/k9/mail/Message;

    sput-object v0, Lcom/fsck/k9/mail/store/ImapStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/fsck/k9/mail/store/ImapStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/ImapStore;->RFC3501_DATE:Ljava/text/SimpleDateFormat;

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/ImapStore;->INTERNAL_DATE:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8f

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/Store;-><init>(Lcom/fsck/k9/Account;)V

    .line 101
    iput-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    .line 102
    iput-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    .line 107
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    .line 121
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    .line 138
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "scheme":Ljava/lang/String;
    const-string v5, "imap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    iput v6, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    .line 149
    iput v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    .line 176
    :goto_0
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;

    .line 178
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 180
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    .line 183
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 187
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "userInfoParts":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v7, :cond_8

    .line 190
    sget-object v5, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->PLAIN:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    .line 191
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 192
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 218
    .end local v4    # "userInfoParts":[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 220
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 221
    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 223
    iput-object v10, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 227
    :cond_2
    new-instance v5, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v5}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v6, "X-RFC-3501"

    invoke-virtual {v5, v6}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    .line 228
    return-void

    .line 140
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 142
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Invalid ImapStore URI"

    invoke-direct {v5, v6, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 151
    .end local v3    # "use":Ljava/net/URISyntaxException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/net/URI;
    :cond_3
    const-string v5, "imap+tls"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    iput v8, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    .line 154
    iput v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_0

    .line 156
    :cond_4
    const-string v5, "imap+tls+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    iput v7, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    .line 159
    iput v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_0

    .line 161
    :cond_5
    const-string v5, "imap+ssl+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 163
    const/4 v5, 0x3

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    .line 164
    const/16 v5, 0x3e1

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_0

    .line 166
    :cond_6
    const-string v5, "imap+ssl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 168
    const/4 v5, 0x4

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    .line 169
    const/16 v5, 0x3e1

    iput v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    goto/16 :goto_0

    .line 173
    :cond_7
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Unsupported protocol"

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .restart local v4    # "userInfoParts":[Ljava/lang/String;
    :cond_8
    :try_start_2
    array-length v5, v4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    .line 197
    const/4 v5, 0x0

    :try_start_3
    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    .line 199
    sget-object v5, Lcom/fsck/k9/mail/store/ImapStore$1;->$SwitchMap$com$fsck$k9$mail$store$ImapStore$AuthType:[I

    iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/ImapStore$AuthType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 202
    :pswitch_0
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 203
    const/4 v5, 0x2

    aget-object v5, v4, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 207
    :catch_1
    move-exception v5

    :try_start_4
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported authtype: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 211
    .end local v4    # "userInfoParts":[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 214
    .local v0, "enc":Ljava/io/UnsupportedEncodingException;
    const-string v5, "k9"

    const-string v6, "Couldn\'t urldecode username or password."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1100()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fsck/k9/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/mail/store/ImapStore;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPort:I

    return v0
.end method

.method static synthetic access$1700(Lcom/fsck/k9/mail/store/ImapStore;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnectionSecurity:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->SOCKET_READ_TIMEOUT:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->SOCKET_READ_TIMEOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->SOCKET_READ_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2100(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/mail/store/ImapStore$AuthType;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAuthType:Lcom/fsck/k9/mail/store/ImapStore$AuthType;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/fsck/k9/mail/store/ImapStore;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->NORMAL_DELAY_TIME:I

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->SOCKET_READ_TIMEOUT:I

    return v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p1, "x1"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    return-void
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->MAX_DELAY_TIME:I

    return v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fsck/k9/mail/store/ImapStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fsck/k9/mail/store/ImapStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/fsck/k9/mail/store/ImapStore;->FETCH_WINDOW_SIZE:I

    return v0
.end method

.method private decodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 468
    .local v0, "encoded":[B
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 469
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 471
    .end local v0    # "encoded":[B
    :catch_0
    move-exception v1

    .line 477
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to decode folder name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 444
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 445
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v0, v3, [B

    .line 446
    .local v0, "b":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 447
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 449
    .end local v0    # "b":[B
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 455
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to encode folder name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getCombinedPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "tmpPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "tmpDelim":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    .line 272
    .end local v0    # "tmpDelim":Ljava/lang/String;
    .end local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    return-object v2

    .line 253
    .restart local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 258
    .restart local v0    # "tmpDelim":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    goto :goto_1

    .line 264
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    goto :goto_1

    .line 269
    .end local v0    # "tmpDelim":Ljava/lang/String;
    .end local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    iput-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    goto :goto_1
.end method

.method private getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    monitor-enter v4

    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 413
    :try_start_1
    const-string v3, "NOOP"

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :cond_0
    if-nez v1, :cond_1

    .line 423
    :try_start_2
    new-instance v2, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;-><init>(Lcom/fsck/k9/mail/store/ImapStore;)V

    .end local v1    # "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .local v2, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    move-object v1, v2

    .line 425
    .end local v2    # "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .restart local v1    # "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :cond_1
    monitor-exit v4

    return-object v1

    .line 418
    :catch_0
    move-exception v3

    invoke-static {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private listFolders(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Z)Ljava/util/List;
    .locals 13
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .param p2, "LSUB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 324
    if-eqz p2, :cond_5

    const-string v1, "LSUB"

    .line 326
    .local v1, "commandResponse":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 328
    .local v4, "folders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fsck/k9/mail/Folder;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \"\" \"%s*\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 332
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 334
    .local v8, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 336
    const/4 v7, 0x1

    .line 337
    .local v7, "includeFolder":Z
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "folder":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 341
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mPathDelimeter:Ljava/lang/String;

    .line 342
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mCombinedPrefix:Ljava/lang/String;

    .line 345
    :cond_1
    const-string v9, "INBOX"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_2

    .line 356
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/fsck/k9/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 360
    const/4 v7, 0x0

    .line 365
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;

    move-result-object v0

    .line 366
    .local v0, "attributes":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_2
    if-ge v5, v2, :cond_6

    .line 368
    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 369
    const-string v10, "\\NoSelect"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 371
    const/4 v7, 0x0

    .line 366
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 324
    .end local v0    # "attributes":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v1    # "commandResponse":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "folder":Ljava/lang/String;
    .end local v4    # "folders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fsck/k9/mail/Folder;>;"
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "includeFolder":Z
    .end local v8    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_5
    const-string v1, "LIST"

    goto/16 :goto_0

    .line 374
    .restart local v0    # "attributes":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .restart local v1    # "commandResponse":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v3    # "folder":Ljava/lang/String;
    .restart local v4    # "folders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fsck/k9/mail/Folder;>;"
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "includeFolder":Z
    .restart local v8    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_6
    if-eqz v7, :cond_0

    .line 376
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 380
    .end local v0    # "attributes":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
    .end local v2    # "count":I
    .end local v3    # "folder":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "includeFolder":Z
    .end local v8    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_7
    const-string v9, "INBOX"

    invoke-virtual {p0, v9}, Lcom/fsck/k9/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 381
    return-object v4
.end method

.method private releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .prologue
    .line 431
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$100(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 436
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_0
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkSettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 390
    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;-><init>(Lcom/fsck/k9/mail/store/ImapStore;)V

    .line 391
    .local v0, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->open()V

    .line 392
    invoke-static {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    return-void

    .line 394
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    sget-object v3, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    const v4, 0x7f0a02f4

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    .line 237
    .local v0, "folder":Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    .end local v0    # "folder":Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
    invoke-direct {v0, p0, p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V

    .line 240
    .restart local v0    # "folder":Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    return-object v0

    .line 242
    .end local v0    # "folder":Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 11
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
    .line 278
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    move-result-object v1

    .line 281
    .local v1, "connection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    const/4 v9, 0x0

    :try_start_0
    invoke-direct {p0, v1, v9}, Lcom/fsck/k9/mail/store/ImapStore;->listFolders(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Z)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    if-nez p1, :cond_0

    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->subscribedFoldersOnly()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 317
    :cond_0
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    move-object v6, v0

    :goto_0
    return-object v6

    .line 288
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 289
    .local v6, "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 290
    .local v8, "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v9, 0x1

    invoke-direct {p0, v1, v9}, Lcom/fsck/k9/mail/store/ImapStore;->listFolders(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Z)Ljava/util/List;

    move-result-object v9

    .line 291
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/Folder;

    .line 293
    .local v7, "subscribedFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 305
    .end local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    .end local v7    # "subscribedFolder":Lcom/fsck/k9/mail/Folder;
    .end local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 307
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 308
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to get folder list."

    invoke-direct {v9, v10, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    throw v9

    .line 295
    .restart local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    .restart local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Folder;

    .line 297
    .local v2, "folder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 299
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 310
    .end local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v2    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    .end local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_1
    move-exception v5

    .line 312
    .local v5, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_4
    invoke-static {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 313
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unable to get folder list."

    invoke-direct {v9, v10, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    .end local v5    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Folder;>;"
    .restart local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0
.end method

.method public getPusher(Lcom/fsck/k9/mail/PushReceiver;)Lcom/fsck/k9/mail/Pusher;
    .locals 1
    .param p1, "receiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    .line 3473
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;

    invoke-direct {v0, p0, p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/PushReceiver;)V

    return-object v0
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public isExpungeCapable()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public isPushCapable()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    return v0
.end method
