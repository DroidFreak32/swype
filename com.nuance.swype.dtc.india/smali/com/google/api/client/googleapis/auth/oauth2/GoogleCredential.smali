.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.super Lcom/google/api/client/auth/oauth2/Credential;
.source "GoogleCredential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    }
.end annotation


# static fields
.field private static defaultCredentialProvider:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;


# instance fields
.field private serviceAccountId:Ljava/lang/String;

.field private serviceAccountPrivateKey:Ljava/security/PrivateKey;

.field private serviceAccountPrivateKeyId:Ljava/lang/String;

.field private serviceAccountScopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceAccountUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->defaultCredentialProvider:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V

    .line 307
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$Builder;)V

    .line 316
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountUser:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1037
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 326
    :goto_1
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountId:Ljava/lang/String;

    .line 1127
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    .line 322
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 323
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKeyId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKeyId:Ljava/lang/String;

    .line 324
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected final executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    .line 361
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v8, :cond_0

    .line 362
    invoke-super {p0}, Lcom/google/api/client/auth/oauth2/Credential;->executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v8

    .line 384
    :goto_0
    return-object v8

    .line 365
    :cond_0
    new-instance v5, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    invoke-direct {v5}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;-><init>()V

    .line 366
    .local v5, "header":Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    const-string/jumbo v8, "RS256"

    invoke-virtual {v5, v8}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setAlgorithm(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 367
    const-string/jumbo v8, "JWT"

    invoke-virtual {v5, v8}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 368
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKeyId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setKeyId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 369
    new-instance v6, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    invoke-direct {v6}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;-><init>()V

    .line 1332
    .local v6, "payload":Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    .line 370
    invoke-interface {v8}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 371
    .local v2, "currentTime":J
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 1350
    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 372
    invoke-virtual {v6, v8}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 373
    div-long v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 374
    div-long v8, v2, v10

    const-wide/16 v10, 0xe10

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 375
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 376
    const-string/jumbo v8, "scope"

    .line 2039
    new-instance v9, Lcom/google/api/client/util/Joiner;

    .line 2078
    new-instance v10, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    const-string/jumbo v11, " "

    invoke-direct {v10, v11}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 2039
    invoke-direct {v9, v10}, Lcom/google/api/client/util/Joiner;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)V

    .line 376
    iget-object v10, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    .line 3054
    iget-object v9, v9, Lcom/google/api/client/util/Joiner;->wrapped:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    .line 3183
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3193
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11, v10}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 376
    invoke-virtual {v6, v8, v9}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :try_start_0
    iget-object v8, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 3345
    iget-object v9, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 378
    invoke-static {v8, v9, v5, v6}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signUsingRsaSha256(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "assertion":Ljava/lang/String;
    new-instance v7, Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 4337
    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 4345
    iget-object v9, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 380
    new-instance v10, Lcom/google/api/client/http/GenericUrl;

    .line 4350
    iget-object v11, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 380
    invoke-direct {v10, v11}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/api/client/auth/oauth2/TokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 383
    .local v7, "request":Lcom/google/api/client/auth/oauth2/TokenRequest;
    const-string/jumbo v8, "assertion"

    invoke-virtual {v7, v8, v0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {v7}, Lcom/google/api/client/auth/oauth2/TokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 385
    .end local v0    # "assertion":Ljava/lang/String;
    .end local v7    # "request":Lcom/google/api/client/auth/oauth2/TokenRequest;
    :catch_0
    move-exception v4

    .line 386
    .local v4, "exception":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 387
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 388
    throw v1
.end method

.method public final bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 168
    .line 9330
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 168
    return-object v0
.end method

.method public final bridge synthetic setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 168
    .line 6345
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 168
    return-object v0
.end method

.method public final bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 168
    .line 5350
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 168
    return-object v0
.end method

.method public final bridge synthetic setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/auth/oauth2/TokenResponse;

    .prologue
    .line 168
    .line 4355
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 168
    return-object v0
.end method

.method public final bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 168
    .line 7335
    if-eqz p1, :cond_0

    .line 7345
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 7336
    if-eqz v0, :cond_1

    .line 8337
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 7336
    if-eqz v0, :cond_1

    .line 8455
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 7336
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Please use the Builder and call setJsonFactory, setTransport and setClientSecrets"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7340
    :cond_0
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 168
    return-object v0

    .line 7336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
