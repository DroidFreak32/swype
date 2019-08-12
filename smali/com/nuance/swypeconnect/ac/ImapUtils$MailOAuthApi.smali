.class public abstract Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ImapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MailOAuthApi"
.end annotation


# static fields
.field public static final ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private consumer:Loauth/signpost/OAuthConsumer;

.field private provider:Loauth/signpost/OAuthProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, p1, p2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-virtual {p0, p3, p4}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->getAuthRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->getAuthAccessUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->getAuthAuthorizeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->provider:Loauth/signpost/OAuthProvider;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->provider:Loauth/signpost/OAuthProvider;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Loauth/signpost/OAuthProvider;->setOAuth10a(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->provider:Loauth/signpost/OAuthProvider;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;-><init>(Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;)V

    invoke-interface {v0, v1}, Loauth/signpost/OAuthProvider;->setListener(Loauth/signpost/OAuthProviderListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;Ljava/lang/String;Loauth/signpost/http/HttpRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->dumpRequest(Ljava/lang/String;Loauth/signpost/http/HttpRequest;)V

    return-void
.end method

.method private dumpRequest(Ljava/lang/String;Loauth/signpost/http/HttpRequest;)V
    .locals 5

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ImapUtils;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Loauth/signpost/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ImapUtils;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    invoke-interface {p2}, Loauth/signpost/http/HttpRequest;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ImapUtils;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "entry key: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " value : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logError(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ImapUtils;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method abstract getAuthAccessUrl()Ljava/lang/String;
.end method

.method abstract getAuthAuthorizeUrl()Ljava/lang/String;
.end method

.method abstract getAuthRequestUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public getAuthorizationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->provider:Loauth/signpost/OAuthProvider;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->provider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getConsumer()Loauth/signpost/OAuthConsumer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method abstract getRequestUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract getStoreUri(Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidSession()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retrieveAccessToken(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->provider:Loauth/signpost/OAuthProvider;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    :goto_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0, v4, v4}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->logError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0, p1, p2}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
