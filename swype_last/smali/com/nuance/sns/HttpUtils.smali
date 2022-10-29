.class final Lcom/nuance/sns/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final TWITTER_CALLBACK:Ljava/lang/String; = "twitter://callback"

.field private static final TWITTER_OAUTH_AUTHORIZE_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field private static final URL_TWITTER:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final oauth_callback:Ljava/lang/String; = "oauth_callback"

.field private static final oauth_consumer_key:Ljava/lang/String; = "oauth_consumer_key"

.field private static final oauth_nonce:Ljava/lang/String; = "oauth_nonce"

.field private static final oauth_signature:Ljava/lang/String; = "oauth_signature"

.field private static final oauth_signature_method:Ljava/lang/String; = "oauth_signature_method"

.field private static final oauth_timestamp:Ljava/lang/String; = "oauth_timestamp"

.field private static final oauth_token:Ljava/lang/String; = "oauth_token"

.field private static final oauth_token_secret:Ljava/lang/String; = "oauth_token_secret"

.field private static final oauth_verifier:Ljava/lang/String; = "oauth_verifier"

.field private static final oauth_version:Ljava/lang/String; = "oauth_version"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string/jumbo v0, "HttpUtils"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .registers 2
    .param p0, "array"    # [B

    .prologue
    .line 150
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "HmacSHA1"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 155
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 156
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 157
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 158
    invoke-static {v2}, Lcom/nuance/sns/HttpUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 24
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "verifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    sget-object v15, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "getAuthorization"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 327
    :try_start_14
    sget-object v15, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Get the access token"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 328
    const-string/jumbo v5, "POST"

    .line 329
    .local v5, "method":Ljava/lang/String;
    sget-object v15, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Generate the nonce / timestamp"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 330
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "-"

    const-string/jumbo v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/sns/HttpUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, "nonce":Ljava/lang/String;
    const-string/jumbo v12, "HMAC-SHA1"

    .line 332
    .local v12, "signatureMethod":Ljava/lang/String;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 333
    .local v13, "timeStamp":Ljava/lang/String;
    const-string/jumbo v14, "1.0"

    .line 335
    .local v14, "version":Ljava/lang/String;
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 336
    .local v8, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "oauth_consumer_key"

    move-object/from16 v0, p0

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v15, "oauth_nonce"

    invoke-interface {v8, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v15, "oauth_signature_method"

    invoke-interface {v8, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v15, "oauth_timestamp"

    invoke-interface {v8, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v15, "oauth_token"

    move-object/from16 v0, p2

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v15, "oauth_version"

    invoke-interface {v8, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {v8}, Lcom/nuance/sns/HttpUtils;->getParametersString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "parametersString":Ljava/lang/String;
    sget-object v15, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Parameter String: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 347
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "https://api.twitter.com/oauth/access_token"

    invoke-static/range {v16 .. v16}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 348
    invoke-static {v9}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 351
    .local v11, "signatureBaseString":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "&"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 354
    invoke-static {v15, v11}, Lcom/nuance/sns/HttpUtils;->generateHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, "signature":Ljava/lang/String;
    const-string/jumbo v15, "oauth_signature"

    invoke-interface {v8, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {v8}, Lcom/nuance/sns/HttpUtils;->getOAuthHeaderString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "oauthHeader":Ljava/lang/String;
    sget-object v15, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Authorization Header: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 361
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "oauth_verifier"

    invoke-static/range {v16 .. v16}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "body":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "Authorization"

    invoke-interface {v4, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v15, "Content-Type"

    const-string/jumbo v16, "application/x-www-form-urlencoded"

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v15, "https://api.twitter.com/oauth/access_token"

    invoke-static {v15, v4, v2}, Lcom/nuance/sns/HttpUtils;->getPostResultAsString(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 367
    invoke-static {v15}, Lcom/nuance/sns/HttpUtils;->parseTokenResponse(Ljava/lang/String;)Landroid/util/Pair;
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_181} :catch_183

    move-result-object v15

    .line 372
    .end local v2    # "body":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "nonce":Ljava/lang/String;
    .end local v7    # "oauthHeader":Ljava/lang/String;
    .end local v8    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "parametersString":Ljava/lang/String;
    .end local v10    # "signature":Ljava/lang/String;
    .end local v11    # "signatureBaseString":Ljava/lang/String;
    .end local v12    # "signatureMethod":Ljava/lang/String;
    .end local v13    # "timeStamp":Ljava/lang/String;
    .end local v14    # "version":Ljava/lang/String;
    :goto_182
    return-object v15

    .line 368
    :catch_183
    move-exception v3

    .line 369
    .local v3, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 372
    const/4 v15, 0x0

    goto :goto_182
.end method

.method public static getAuthorizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://api.twitter.com/oauth/authorize?oauth_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOAuthHeaderString(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 206
    .local v1, "first":Z
    const-string/jumbo v3, "OAuth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_28

    .line 209
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "=\""

    .line 212
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\""

    .line 214
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v1, 0x0

    .line 216
    goto :goto_14

    .line 217
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getParametersString(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 190
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_22

    .line 192
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v1, 0x0

    .line 198
    goto :goto_e

    .line 199
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getPostResult(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)[B
    .registers 11
    .param p0, "urlString"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 85
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz p1, :cond_30

    .line 86
    :try_start_d
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "header":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2b

    goto :goto_15

    .line 102
    .end local v1    # "header":Ljava/lang/String;
    :catchall_2b
    move-exception v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3

    .line 92
    :cond_30
    :try_start_30
    invoke-static {v0, p2}, Lcom/nuance/sns/HttpUtils;->preparePostBody(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 95
    .local v2, "resCode":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_47

    .line 97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/sns/HttpUtils;->readResponse(Ljava/io/InputStream;)[B
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_2b

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    .line 99
    :cond_47
    :try_start_47
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Response code %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_2b
.end method

.method public static getPostResultAsString(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "urlString"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/nuance/sns/HttpUtils;->getPostResult(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getRequestToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 233
    sget-object v16, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "getRequestToken"

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 235
    :try_start_14
    sget-object v16, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "Get the request token"

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 238
    const-string/jumbo v14, "https://api.twitter.com/oauth/request_token"

    .line 239
    .local v14, "url":Ljava/lang/String;
    const-string/jumbo v4, "POST"

    .line 241
    .local v4, "method":Ljava/lang/String;
    sget-object v16, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "Generate the nonce / timestamp"

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "-"

    const-string/jumbo v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "UTF-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/nuance/sns/HttpUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "nonce":Ljava/lang/String;
    const-string/jumbo v11, "HMAC-SHA1"

    .line 244
    .local v11, "signatureMethod":Ljava/lang/String;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 245
    .local v12, "timeStamp":Ljava/lang/String;
    const-string/jumbo v15, "1.0"

    .line 247
    .local v15, "version":Ljava/lang/String;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 248
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "oauth_callback"

    const-string/jumbo v17, "twitter://callback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v16, "oauth_consumer_key"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v16, "oauth_nonce"

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v16, "oauth_signature_method"

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v16, "oauth_timestamp"

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v16, "oauth_version"

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {v7}, Lcom/nuance/sns/HttpUtils;->getParametersString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "parametersString":Ljava/lang/String;
    sget-object v16, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Parameter String: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 259
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v14}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 260
    invoke-static {v8}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "signatureBaseString":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/nuance/sns/HttpUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 266
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/nuance/sns/HttpUtils;->generateHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "signature":Ljava/lang/String;
    const-string/jumbo v16, "oauth_signature"

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {v7}, Lcom/nuance/sns/HttpUtils;->getOAuthHeaderString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "oauthHeader":Ljava/lang/String;
    sget-object v16, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Authorization Header: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 273
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "Authorization"

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v16, "Content-Type"

    const-string/jumbo v17, "application/x-www-form-urlencoded"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v3, v0}, Lcom/nuance/sns/HttpUtils;->getPostResultAsString(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 278
    invoke-static/range {v16 .. v16}, Lcom/nuance/sns/HttpUtils;->parseTokenResponse(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    .line 279
    .local v13, "token":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v13, :cond_17f

    const-string/jumbo v16, ""

    .line 284
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "nonce":Ljava/lang/String;
    .end local v6    # "oauthHeader":Ljava/lang/String;
    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parametersString":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v10    # "signatureBaseString":Ljava/lang/String;
    .end local v11    # "signatureMethod":Ljava/lang/String;
    .end local v12    # "timeStamp":Ljava/lang/String;
    .end local v13    # "token":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "version":Ljava/lang/String;
    :goto_17e
    return-object v16

    .line 279
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "method":Ljava/lang/String;
    .restart local v5    # "nonce":Ljava/lang/String;
    .restart local v6    # "oauthHeader":Ljava/lang/String;
    .restart local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "parametersString":Ljava/lang/String;
    .restart local v9    # "signature":Ljava/lang/String;
    .restart local v10    # "signatureBaseString":Ljava/lang/String;
    .restart local v11    # "signatureMethod":Ljava/lang/String;
    .restart local v12    # "timeStamp":Ljava/lang/String;
    .restart local v13    # "token":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "url":Ljava/lang/String;
    .restart local v15    # "version":Ljava/lang/String;
    :cond_17f
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_185} :catch_186

    goto :goto_17e

    .line 280
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "nonce":Ljava/lang/String;
    .end local v6    # "oauthHeader":Ljava/lang/String;
    .end local v7    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parametersString":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v10    # "signatureBaseString":Ljava/lang/String;
    .end local v11    # "signatureMethod":Ljava/lang/String;
    .end local v12    # "timeStamp":Ljava/lang/String;
    .end local v13    # "token":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "url":Ljava/lang/String;
    .end local v15    # "version":Ljava/lang/String;
    :catch_186
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    sget-object v16, Lcom/nuance/sns/HttpUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 284
    const-string/jumbo v16, ""

    goto :goto_17e
.end method

.method private static getValueFromResponseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "responseString"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string/jumbo v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_32

    aget-object v0, v2, v1

    .line 163
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 164
    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "="

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .end local v0    # "s":Ljava/lang/String;
    :goto_2e
    return-object v1

    .line 162
    .restart local v0    # "s":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 167
    .end local v0    # "s":Ljava/lang/String;
    :cond_32
    const-string/jumbo v1, ""

    goto :goto_2e
.end method

.method private static parseTokenResponse(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p0, :cond_16

    .line 174
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "oauth_token"

    .line 175
    invoke-static {p0, v1}, Lcom/nuance/sns/HttpUtils;->getValueFromResponseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oauth_token_secret"

    .line 176
    invoke-static {p0, v2}, Lcom/nuance/sns/HttpUtils;->getValueFromResponseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static percentEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 142
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%20"

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    const-string/jumbo v2, "%2A"

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%7E"

    const-string/jumbo v2, "~"

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static preparePostBody(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 4
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 131
    if-eqz p1, :cond_26

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 133
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 134
    .local v0, "out":Ljava/io/OutputStream;
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 135
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 138
    .end local v0    # "out":Ljava/io/OutputStream;
    :cond_26
    return-void
.end method

.method private static readResponse(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 116
    .local v0, "buffer":[B
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_14

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 119
    :cond_14
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 120
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
