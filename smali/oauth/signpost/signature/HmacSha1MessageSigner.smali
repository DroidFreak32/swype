.class public Loauth/signpost/signature/HmacSha1MessageSigner;
.super Loauth/signpost/signature/OAuthMessageSigner;
.source "HmacSha1MessageSigner.java"


# static fields
.field private static final MAC_NAME:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Loauth/signpost/signature/OAuthMessageSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "HMAC-SHA1"

    return-object v0
.end method

.method public sign(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 8
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .param p2, "requestParams"    # Loauth/signpost/http/HttpParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Loauth/signpost/signature/HmacSha1MessageSigner;->getConsumerSecret()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Loauth/signpost/signature/HmacSha1MessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 47
    .local v2, "keyBytes":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "HmacSHA1"

    invoke-direct {v1, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 48
    .local v1, "key":Ljavax/crypto/SecretKey;
    const-string v6, "HmacSHA1"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 49
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 51
    new-instance v6, Loauth/signpost/signature/SignatureBaseString;

    invoke-direct {v6, p1, p2}, Loauth/signpost/signature/SignatureBaseString;-><init>(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    invoke-virtual {v6}, Loauth/signpost/signature/SignatureBaseString;->generate()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "sbs":Ljava/lang/String;
    const-string v6, "SBS"

    invoke-static {v6, v4}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 55
    .local v5, "text":[B
    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Loauth/signpost/signature/HmacSha1MessageSigner;->base64Encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 56
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    .end local v2    # "keyBytes":[B
    .end local v3    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "sbs":Ljava/lang/String;
    .end local v5    # "text":[B
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v6, v0}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 58
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v6, v0}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method
