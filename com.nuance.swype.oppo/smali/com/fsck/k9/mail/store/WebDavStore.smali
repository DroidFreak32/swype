.class public Lcom/fsck/k9/mail/store/WebDavStore;
.super Lcom/fsck/k9/mail/Store;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/WebDavStore$1;,
        Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;,
        Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;,
        Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;,
        Lcom/fsck/k9/mail/store/WebDavStore$DataSet;,
        Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;,
        Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;,
        Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;,
        Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    }
.end annotation


# static fields
.field private static final AUTH_TYPE_BASIC:S = 0x1s

.field private static final AUTH_TYPE_FORM_BASED:S = 0x2s

.field private static final AUTH_TYPE_NONE:S = 0x0s

.field private static final CONNECTION_SECURITY_NONE:S = 0x0s

.field private static final CONNECTION_SECURITY_SSL_OPTIONAL:S = 0x3s

.field private static final CONNECTION_SECURITY_SSL_REQUIRED:S = 0x4s

.field private static final CONNECTION_SECURITY_TLS_OPTIONAL:S = 0x1s

.field private static final CONNECTION_SECURITY_TLS_REQUIRED:S = 0x2s

.field private static final DAV_MAIL_SEND_FOLDER:Ljava/lang/String; = "##DavMailSubmissionURI##"

.field private static final DAV_MAIL_TMP_FOLDER:Ljava/lang/String; = "drafts"

.field private static final EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mAuthCookies:Lorg/apache/http/client/CookieStore;

.field private mAuthPath:Ljava/lang/String;

.field private mAuthString:Ljava/lang/String;

.field private mAuthentication:S

.field private mCachedLoginUrl:Ljava/lang/String;

.field private mConnectionSecurity:S

.field private mContext:Lorg/apache/http/protocol/HttpContext;

.field private mFolderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

.field private mMailboxPath:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSecure:Z

.field private mUri:Ljava/net/URI;

.field private mUrl:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 79
    new-array v0, v3, [Lcom/fsck/k9/mail/Message;

    sput-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 12
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/Store;-><init>(Lcom/fsck/k9/Account;)V

    .line 96
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    .line 97
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    .line 99
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    .line 100
    const/4 v9, 0x0

    iput-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    .line 103
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mFolderList:Ljava/util/HashMap;

    .line 118
    :try_start_0
    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v10}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "scheme":Ljava/lang/String;
    const-string v9, "webdav"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 128
    const/4 v9, 0x0

    iput-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    .line 151
    :goto_0
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;

    .line 152
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;

    const-string v10, "://"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "hostParts":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 157
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;

    .line 161
    .end local v2    # "hostParts":[Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 165
    :try_start_1
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "userInfoParts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;

    .line 167
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;

    const-string v10, "\\\\"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "userParts":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    .line 171
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAlias:Ljava/lang/String;

    .line 177
    :goto_1
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 179
    const/4 v9, 0x1

    aget-object v9, v7, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .end local v7    # "userInfoParts":[Ljava/lang/String;
    .end local v8    # "userParts":[Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "pathParts":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v0, v4

    .local v0, "count":I
    :goto_3
    if-ge v3, v0, :cond_b

    .line 193
    if-nez v3, :cond_9

    .line 195
    const/4 v9, 0x0

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 198
    const/4 v9, 0x0

    aget-object v9, v4, v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    .line 191
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 120
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "pathParts":[Ljava/lang/String;
    .end local v5    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 122
    .local v6, "use":Ljava/net/URISyntaxException;
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Invalid WebDavStore URI"

    invoke-direct {v9, v10, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 130
    .end local v6    # "use":Ljava/net/URISyntaxException;
    .restart local v5    # "scheme":Ljava/lang/String;
    :cond_3
    const-string v9, "webdav+ssl"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 132
    const/4 v9, 0x3

    iput-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    goto/16 :goto_0

    .line 134
    :cond_4
    const-string v9, "webdav+ssl+"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    const/4 v9, 0x4

    iput-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string v9, "webdav+tls"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 140
    const/4 v9, 0x1

    iput-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v9, "webdav+tls+"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    const/4 v9, 0x2

    iput-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    goto/16 :goto_0

    .line 148
    :cond_7
    new-instance v9, Lcom/fsck/k9/mail/MessagingException;

    const-string v10, "Unsupported protocol"

    invoke-direct {v9, v10}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 175
    .restart local v7    # "userInfoParts":[Ljava/lang/String;
    .restart local v8    # "userParts":[Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAlias:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 182
    .end local v7    # "userInfoParts":[Ljava/lang/String;
    .end local v8    # "userParts":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "enc":Ljava/io/UnsupportedEncodingException;
    const-string v9, "k9"

    const-string v10, "Couldn\'t urldecode username or password."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 201
    .end local v1    # "enc":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "pathParts":[Ljava/lang/String;
    :cond_9
    const/4 v9, 0x1

    if-ne v3, v9, :cond_a

    .line 203
    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 206
    const/4 v9, 0x1

    aget-object v9, v4, v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    goto :goto_4

    .line 209
    :cond_a
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2

    .line 211
    const/4 v9, 0x2

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 214
    const/4 v9, 0x2

    aget-object v9, v4, v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    goto/16 :goto_4

    .line 219
    :cond_b
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 221
    :cond_c
    const-string v9, "/Exchange"

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    .line 228
    :cond_d
    :goto_5
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 230
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAlias:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    .line 237
    :cond_f
    :goto_6
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    .line 246
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getRoot()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    .line 248
    iget-short v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    const/4 v10, 0x4

    if-ne v9, v10, :cond_13

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mSecure:Z

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Basic "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;

    .line 250
    return-void

    .line 223
    :cond_11
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mPath:Ljava/lang/String;

    goto/16 :goto_5

    .line 232
    :cond_12
    iget-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mMailboxPath:Ljava/lang/String;

    goto/16 :goto_6

    .line 248
    :cond_13
    const/4 v9, 0x0

    goto :goto_7
.end method

.method static synthetic access$100(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/mail/store/WebDavStore;)Lorg/apache/http/protocol/HttpContext;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->PERMANENT_FLAGS:[Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/WebDavStore;->getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/WebDavStore;->getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/HashMap;
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessagesXml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/fsck/k9/mail/store/WebDavStore;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/mail/store/WebDavStore;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/mail/store/WebDavStore;)S
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/WebDavStore;

    .prologue
    .line 61
    iget-short v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    return v0
.end method

.method private doInitialConnection()Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x12c

    .line 623
    new-instance v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;-><init>(Lcom/fsck/k9/mail/store/WebDavStore$1;)V

    .line 625
    .local v1, "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    move-result-object v0

    .line 627
    .local v0, "httpClient":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
    new-instance v4, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 628
    .local v4, "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    const-string v6, "GET"

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 632
    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v4, v6}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 633
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    iput v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    .line 635
    iget v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    const/16 v7, 0x191

    if-ne v6, v7, :cond_1

    .line 639
    const/4 v6, 0x1

    iput-short v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->requiredAuthType:S

    .line 683
    :cond_0
    :goto_0
    return-object v1

    .line 641
    :cond_1
    iget v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_2

    iget v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    if-lt v6, v8, :cond_4

    :cond_2
    iget v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    if-lt v6, v8, :cond_3

    iget v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    const/16 v7, 0x190

    if-lt v6, v7, :cond_4

    :cond_3
    iget v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    const/16 v7, 0x1b8

    if-ne v6, v7, :cond_6

    .line 651
    :cond_4
    const/4 v6, 0x2

    iput-short v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->requiredAuthType:S

    .line 653
    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getRoot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->guessedAuthUrl:Ljava/lang/String;

    .line 665
    :goto_1
    const-string v6, "Location"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 666
    .local v3, "location":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    .line 668
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->redirectUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    .end local v3    # "location":Lorg/apache/http/Header;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 679
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOException: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nTrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "IOException"

    invoke-direct {v6, v7, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 661
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getRoot()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/exchweb/bin/auth/owaauth.dll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->guessedAuthUrl:Ljava/lang/String;

    goto :goto_1

    .line 673
    :cond_6
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error with code "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->statusCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " during request processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private findFormAction(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11
    .param p1, "istream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 822
    const/4 v2, 0x0

    .line 824
    .local v2, "formAction":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x1000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 829
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "tempText":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    .line 831
    const-string v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 833
    const-string v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "actionParts":[Ljava/lang/String;
    array-length v7, v0

    if-le v7, v9, :cond_0

    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_0

    .line 836
    aget-object v7, v0, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 837
    .local v3, "openQuote":C
    aget-object v7, v0, v9

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 838
    .local v1, "closePos":I
    if-le v1, v9, :cond_0

    .line 840
    aget-object v7, v0, v9

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 842
    const/16 v7, 0x3f

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 843
    .local v4, "quesPos":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 845
    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 852
    .end local v0    # "actionParts":[Ljava/lang/String;
    .end local v1    # "closePos":I
    .end local v3    # "openQuote":C
    .end local v4    # "quesPos":I
    :cond_1
    return-object v2
.end method

.method private getFolderListXml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 377
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v1, "SELECT \"DAV:uid\", \"DAV:ishidden\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v1, " FROM SCOPE(\'hierarchical traversal of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"\')\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v1, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=True\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v1, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMarkMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "read"    # Z

    .prologue
    .line 497
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v5, 0x258

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 498
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v5, "<?xml version=\'1.0\' ?>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    const-string v5, "<a:propertyupdate xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v5, "<a:target>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 503
    .local v4, "url":Ljava/lang/String;
    const-string v5, " <a:href>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</a:href>\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    const-string v5, "</a:target>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    const-string v5, "<a:set>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v5, " <a:prop>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    const-string v5, "  <b:read>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string v5, "1"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</b:read>\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    const-string v5, " </a:prop>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v5, "</a:set>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v5, "</a:propertyupdate>\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 508
    :cond_1
    const-string v5, "0"

    goto :goto_1
.end method

.method private getMessageCountXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "messageState"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 389
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v1, "SELECT \"DAV:visiblecount\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v1, " FROM \"\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v1, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND \"urn:schemas:httpmail:read\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v1, " GROUP BY \"DAV:ishidden\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v1, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMessageEnvelopeXml([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 403
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v3, "SELECT \"DAV:uid\", \"DAV:getcontentlength\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const-string v3, " \"urn:schemas:mailheader:mime-version\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v3, " \"urn:schemas:mailheader:content-type\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v3, " \"urn:schemas:mailheader:subject\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v3, " \"urn:schemas:mailheader:date\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    const-string v3, " \"urn:schemas:mailheader:thread-topic\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const-string v3, " \"urn:schemas:mailheader:thread-index\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v3, " \"urn:schemas:mailheader:from\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const-string v3, " \"urn:schemas:mailheader:to\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const-string v3, " \"urn:schemas:mailheader:in-reply-to\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v3, " \"urn:schemas:mailheader:cc\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v3, " \"urn:schemas:httpmail:read\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v3, " \r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const-string v3, " FROM \"\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 422
    if-eqz v2, :cond_0

    .line 424
    const-string v3, "  OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    :cond_0
    const-string v3, " \"DAV:uid\"=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v3, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMessageFlagsXml([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 470
    array-length v3, p1

    if-nez v3, :cond_0

    .line 472
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Attempt to get flags on 0 length array for uids"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 476
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    const-string v3, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v3, " FROM \"\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 484
    if-eqz v2, :cond_1

    .line 486
    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    :cond_1
    const-string v3, " \"DAV:uid\"=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    :cond_2
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string v3, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMessageUrlsXml([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x258

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 448
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    const-string v3, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    const-string v3, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    const-string v3, " FROM \"\"\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v3, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 455
    if-eqz v2, :cond_0

    .line 457
    const-string v3, "  OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :cond_0
    const-string v3, " \"DAV:uid\"=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    const-string v3, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMessagesXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 436
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v1, "SELECT \"DAV:uid\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v1, " FROM \"\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v1, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v1, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMoveOrCopyMessagesReadXml([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "urls"    # [Ljava/lang/String;
    .param p2, "isMove"    # Z

    .prologue
    .line 522
    if-eqz p2, :cond_0

    const-string v0, "move"

    .line 523
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v6, 0x258

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 524
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const-string v6, "<?xml version=\'1.0\' ?>\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    const-string v6, "<a:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    const-string v6, "<a:target>\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, p1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 529
    .local v5, "url":Ljava/lang/String;
    const-string v6, " <a:href>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</a:href>\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "copy"

    goto :goto_0

    .line 531
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    const-string v6, "</a:target>\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    const-string v6, "</a:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ">\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getRoot()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    iget-short v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mConnectionSecurity:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 260
    :cond_0
    const-string v0, "https"

    .line 266
    .local v0, "root":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    return-object v1

    .line 264
    .end local v0    # "root":Ljava/lang/String;
    :cond_1
    const-string v0, "http"

    .restart local v0    # "root":Ljava/lang/String;
    goto :goto_0
.end method

.method private processException(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1090
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1091
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1093
    .local v1, "ps":Ljava/io/PrintStream;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1094
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 1096
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/mail/store/WebDavStore$DataSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1009
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v0

    return-object v0
.end method

.method private processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .param p5, "needsParsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fsck/k9/mail/store/WebDavStore$DataSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1016
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1017
    .local v7, "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_WEBDAV:Z

    if-eqz v1, :cond_0

    .line 1019
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processRequest url = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', method = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', messageBody = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v8, v7

    .line 1082
    .end local v7    # "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .local v8, "dataset":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 1029
    .end local v8    # "dataset":Ljava/lang/Object;
    .restart local v7    # "dataset":Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    .line 1033
    const/4 v4, 0x0

    .line 1034
    .local v4, "messageEntity":Lorg/apache/http/entity/StringEntity;
    if-eqz p3, :cond_3

    .line 1036
    :try_start_0
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1037
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .local v11, "messageEntity":Lorg/apache/http/entity/StringEntity;
    :try_start_1
    const-string v1, "text/xml"

    invoke-virtual {v11, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v11

    .line 1039
    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :cond_3
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v10

    .line 1040
    .local v10, "istream":Ljava/io/InputStream;
    if-eqz v10, :cond_4

    if-eqz p5, :cond_4

    .line 1045
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 1046
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 1047
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v16

    .line 1048
    .local v16, "xr":Lorg/xml/sax/XMLReader;
    new-instance v12, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 1050
    .local v12, "myHandler":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1052
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1054
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->getDataSet()Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 1068
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .end local v12    # "myHandler":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;
    .end local v16    # "xr":Lorg/xml/sax/XMLReader;
    :cond_4
    move-object v8, v7

    .line 1082
    .restart local v8    # "dataset":Ljava/lang/Object;
    goto :goto_0

    .line 1056
    .end local v8    # "dataset":Ljava/lang/Object;
    :catch_0
    move-exception v14

    .line 1058
    .local v14, "se":Lorg/xml/sax/SAXException;
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAXException in processRequest() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "SAXException in processRequest() "

    invoke-direct {v1, v2, v14}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1071
    .end local v10    # "istream":Ljava/io/InputStream;
    .end local v14    # "se":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v15

    .line 1073
    .local v15, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "UnsupportedEncodingException in processRequest() "

    invoke-direct {v1, v2, v15}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1061
    .end local v15    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "istream":Ljava/io/InputStream;
    :catch_2
    move-exception v13

    .line 1063
    .local v13, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParserConfigurationException in processRequest() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "ParserConfigurationException in processRequest() "

    invoke-direct {v1, v2, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1076
    .end local v10    # "istream":Ljava/io/InputStream;
    .end local v13    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v9

    .line 1078
    .local v9, "ioe":Ljava/io/IOException;
    :goto_2
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "IOException in processRequest() "

    invoke-direct {v1, v2, v9}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1076
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v9

    move-object v4, v11

    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    goto :goto_2

    .line 1071
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :catch_5
    move-exception v15

    move-object v4, v11

    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    goto/16 :goto_1
.end method

.method private sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Lorg/apache/http/entity/StringEntity;
    .param p5, "tryAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/StringEntity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 907
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 909
    .local v14, "istream":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 911
    :cond_0
    const/4 v2, 0x0

    .line 993
    :goto_0
    return-object v2

    .line 914
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    move-result-object v10

    .line 918
    .local v10, "httpclient":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
    :try_start_0
    new-instance v11, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 923
    .local v11, "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    if-eqz p3, :cond_2

    .line 925
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 928
    :cond_2
    if-eqz p4, :cond_3

    .line 930
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 932
    .local v9, "headerName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v9, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 982
    .end local v9    # "headerName":Ljava/lang/String;
    .end local v11    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v12    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v17

    .line 984
    .local v17, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnsupportedEncodingException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nTrace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "UnsupportedEncodingException"

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 936
    .end local v17    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    if-nez v2, :cond_5

    .line 938
    if-eqz p5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->authenticate()Z

    move-result v2

    if-nez v2, :cond_6

    .line 940
    :cond_4
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Unable to authenticate in sendRequest()."

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 987
    .end local v11    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :catch_1
    move-exception v13

    .line 989
    .local v13, "ioe":Ljava/io/IOException;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nTrace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "IOException"

    invoke-direct {v2, v3, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 943
    .end local v13    # "ioe":Ljava/io/IOException;
    .restart local v11    # "httpmethod":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 945
    const-string v2, "Authorization"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v10, v11, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 950
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 952
    .local v16, "statusCode":I
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 954
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    const/16 v2, 0x191

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 956
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Invalid username or password for Basic authentication."

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    :cond_7
    const/16 v2, 0x1b8

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 960
    if-eqz p5, :cond_a

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 963
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->doFBA(Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;)V

    .line 964
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/mail/store/WebDavStore;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;

    .line 977
    :cond_8
    if-eqz v8, :cond_9

    .line 979
    invoke-static {v8}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v14

    :cond_9
    move-object v2, v14

    .line 993
    goto/16 :goto_0

    .line 968
    :cond_a
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Authentication failure in sendRequest()."

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 971
    :cond_b
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-lt v0, v2, :cond_c

    const/16 v2, 0x12c

    move/from16 v0, v16

    if-lt v0, v2, :cond_8

    .line 973
    :cond_c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error with code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " during request processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method


# virtual methods
.method public authenticate()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 551
    :try_start_0
    iget-short v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    if-nez v6, :cond_4

    .line 553
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->doInitialConnection()Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;

    move-result-object v0

    .line 555
    .local v0, "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    iget-short v6, v0, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->requiredAuthType:S

    if-ne v6, v5, :cond_3

    .line 557
    new-instance v2, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    invoke-direct {v2, p0, v6}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 558
    .local v2, "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    const-string v6, "GET"

    invoke-virtual {v2, v6}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 559
    const-string v6, "Authorization"

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v6, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    invoke-direct {v6}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;-><init>()V

    .line 562
    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v6, v2, v7}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 564
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 565
    .local v4, "statusCode":I
    const/16 v6, 0xc8

    if-lt v4, v6, :cond_1

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_1

    .line 567
    const/4 v6, 0x1

    iput-short v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    .end local v2    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusCode":I
    :cond_0
    :goto_0
    iget-short v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    if-eqz v6, :cond_5

    :goto_1
    return v5

    .line 569
    .restart local v0    # "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    .restart local v2    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "statusCode":I
    :cond_1
    const/16 v5, 0x191

    if-ne v4, v5, :cond_2

    .line 571
    :try_start_1
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Invalid username or password for authentication."

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    .end local v0    # "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    .end local v2    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusCode":I
    :catch_0
    move-exception v1

    .line 597
    .local v1, "ioe":Ljava/io/IOException;
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error during authentication: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nStack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    const-string v6, "Error during authentication"

    invoke-direct {v5, v6, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 575
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    .restart local v2    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "statusCode":I
    :cond_2
    :try_start_2
    new-instance v5, Lcom/fsck/k9/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error with code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during request processing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 578
    .end local v2    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusCode":I
    :cond_3
    iget-short v6, v0, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->requiredAuthType:S

    if-ne v6, v7, :cond_0

    .line 581
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->doFBA(Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;)V

    goto :goto_0

    .line 584
    .end local v0    # "info":Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    :cond_4
    iget-short v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    if-eq v6, v5, :cond_0

    .line 589
    iget-short v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    if-ne v6, v7, :cond_0

    .line 592
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/WebDavStore;->doFBA(Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 601
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public checkSettings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->authenticate()Z

    .line 274
    return-void
.end method

.method public doFBA(Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;)V
    .locals 24
    .param p1, "info"    # Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    move-result-object v15

    .line 699
    .local v15, "httpClient":Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
    if-eqz p1, :cond_3

    .line 702
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->guessedAuthUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 713
    .local v18, "loginUrl":Ljava/lang/String;
    :goto_0
    new-instance v20, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 714
    .local v20, "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    const-string v3, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 717
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v19, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "destination"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "username"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mUsername:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "password"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mPassword:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "flags"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "SubmitCreds"

    const-string v5, "Log+On"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "forcedownlevel"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "trusted"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 727
    .local v14, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 730
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    .line 732
    .local v23, "statusCode":I
    const/16 v3, 0xc8

    move/from16 v0, v23

    if-lt v0, v3, :cond_0

    const/16 v3, 0x12c

    move/from16 v0, v23

    if-ge v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    :cond_0
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore;->findFormAction(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 741
    .local v12, "formAction":Ljava/lang/String;
    if-nez v12, :cond_8

    .line 744
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->redirectUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->redirectUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 746
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$ConnectionInfo;->redirectUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 748
    new-instance v20, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    .end local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 749
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    const-string v3, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 752
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore;->findFormAction(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v20

    .line 755
    .end local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .local v21, "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :goto_1
    if-eqz v12, :cond_7

    .line 759
    :try_start_0
    new-instance v13, Ljava/net/URI;

    invoke-direct {v13, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 760
    .local v13, "formActionUri":Ljava/net/URI;
    new-instance v17, Ljava/net/URI;

    invoke-direct/range {v17 .. v18}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 762
    .local v17, "loginUri":Ljava/net/URI;
    invoke-virtual {v13}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 765
    move-object/from16 v18, v12

    .line 790
    :goto_2
    new-instance v20, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v21    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :try_start_1
    const-string v3, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setMethod(Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 807
    .end local v12    # "formAction":Ljava/lang/String;
    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v17    # "loginUri":Ljava/net/URI;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 809
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthentication:S

    .line 810
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/mail/store/WebDavStore;->mCachedLoginUrl:Ljava/lang/String;

    .line 812
    :cond_2
    return-void

    .line 704
    .end local v14    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v18    # "loginUrl":Ljava/lang/String;
    .end local v19    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "statusCode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mCachedLoginUrl:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mCachedLoginUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore;->mCachedLoginUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "loginUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 710
    .end local v18    # "loginUrl":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "No valid login URL available for form-based authentication."

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 770
    .restart local v12    # "formAction":Ljava/lang/String;
    .restart local v13    # "formActionUri":Ljava/net/URI;
    .restart local v14    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v17    # "loginUri":Ljava/net/URI;
    .restart local v18    # "loginUrl":Ljava/lang/String;
    .restart local v19    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v21    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "statusCode":I
    :cond_5
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 771
    .local v8, "urlPath":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 772
    .local v16, "lastPathPos":I
    if-ltz v16, :cond_6

    .line 774
    const/4 v3, 0x0

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 775
    invoke-virtual {v3, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 779
    :cond_6
    new-instance v3, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    goto/16 :goto_2

    .line 795
    .end local v8    # "urlPath":Ljava/lang/String;
    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v16    # "lastPathPos":I
    .end local v17    # "loginUri":Ljava/net/URI;
    :catch_0
    move-exception v11

    move-object/from16 v20, v21

    .line 797
    .end local v21    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .local v11, "e":Ljava/net/URISyntaxException;
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :goto_3
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URISyntaxException caught "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nTrace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "URISyntaxException caught"

    invoke-direct {v3, v4, v11}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 803
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .end local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v21    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :cond_7
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "A valid URL for Exchange authentication could not be found."

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 795
    .end local v21    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v13    # "formActionUri":Ljava/net/URI;
    .restart local v17    # "loginUri":Ljava/net/URI;
    .restart local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    :catch_1
    move-exception v11

    goto :goto_3

    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v17    # "loginUri":Ljava/net/URI;
    :cond_8
    move-object/from16 v21, v20

    .end local v20    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    .restart local v21    # "request":Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
    goto/16 :goto_1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCookies()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    return-object v0
.end method

.method public getAuthString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthString:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    .local v0, "folder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    .end local v0    # "folder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    invoke-direct {v0, p0, p0, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 351
    .restart local v0    # "folder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    :cond_0
    return-object v0
.end method

.method public getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    if-nez v4, :cond_0

    .line 874
    new-instance v4, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    invoke-direct {v4}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    .line 876
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.handle-redirects"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 879
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    .line 880
    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    .line 881
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "http.cookie-store"

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mAuthCookies:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 886
    .local v2, "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :try_start_0
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    new-instance v5, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHost:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mSecure:Z

    invoke-direct {v5, v6, v7}, Lcom/fsck/k9/mail/transport/TrustedSocketFactory;-><init>(Ljava/lang/String;Z)V

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 887
    .local v3, "s":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 900
    .end local v2    # "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "s":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mHttpClient:Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    return-object v4

    .line 889
    .restart local v2    # "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v1

    .line 891
    .local v1, "nsa":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NoSuchAlgorithmException in getHttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NoSuchAlgorithmException in getHttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 894
    .end local v1    # "nsa":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 896
    .local v0, "kme":Ljava/security/KeyManagementException;
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KeyManagementException in getHttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v4, Lcom/fsck/k9/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KeyManagementException in getHttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 14
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
    .line 279
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 280
    .local v1, "folderList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/fsck/k9/mail/Folder;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    invoke-direct {v12, p0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    .line 289
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getHttpClient()Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;

    .line 290
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolderListXml()Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, "messageBody":Ljava/lang/String;
    const-string v12, "Brief"

    const-string v13, "t"

    invoke-virtual {v5, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v12, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    const-string v13, "SEARCH"

    invoke-direct {p0, v12, v13, v8, v5}, Lcom/fsck/k9/mail/store/WebDavStore;->processRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    move-result-object v12

    .line 294
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->getHrefs()[Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "folderUrls":[Ljava/lang/String;
    array-length v9, v3

    .line 297
    .local v9, "urlLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_3

    .line 299
    aget-object v12, v3, v6

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 300
    .local v10, "urlParts":[Ljava/lang/String;
    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    aget-object v2, v10, v12

    .line 301
    .local v2, "folderName":Ljava/lang/String;
    const-string v4, ""

    .line 304
    .local v4, "fullPathName":Ljava/lang/String;
    const-string v12, "INBOX"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 306
    const-string v2, "INBOX"

    .line 332
    :goto_1
    new-instance v11, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    invoke-direct {v11, p0, p0, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V

    .line 333
    .local v11, "wdFolder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    aget-object v12, v3, v6

    invoke-virtual {v11, v12}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->setUrl(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v12, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v12, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 310
    .end local v11    # "wdFolder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    :cond_0
    const/4 v7, 0x5

    .local v7, "j":I
    array-length v0, v10

    .local v0, "count":I
    :goto_2
    if-ge v7, v0, :cond_2

    .line 312
    const/4 v12, 0x5

    if-eq v7, v12, :cond_1

    .line 314
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 318
    :cond_1
    aget-object v4, v10, v7

    goto :goto_3

    .line 323
    :cond_2
    :try_start_0
    const-string v12, "UTF-8"

    invoke-static {v4, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 328
    :catch_0
    move-exception v12

    move-object v2, v4

    goto :goto_1

    .line 338
    .end local v0    # "count":I
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v4    # "fullPathName":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v10    # "urlParts":[Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public getSendSpoolFolder()Lcom/fsck/k9/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v0, "##DavMailSubmissionURI##"

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public isSendCapable()Z
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    return v0
.end method

.method public sendMessages([Lcom/fsck/k9/mail/Message;)V
    .locals 3
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1108
    const-string v2, "drafts"

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    .line 1111
    .local v1, "tmpFolder":Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;
    :try_start_0
    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1112
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->appendWebDavMessages([Lcom/fsck/k9/mail/Message;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 1114
    .local v0, "retMessages":[Lcom/fsck/k9/mail/Message;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore;->getSendSpoolFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    if-eqz v1, :cond_0

    .line 1120
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->close()V

    .line 1123
    :cond_0
    return-void

    .line 1118
    .end local v0    # "retMessages":[Lcom/fsck/k9/mail/Message;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 1120
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->close()V

    :cond_1
    throw v2
.end method
