.class final Lcom/google/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "LicenseValidator"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p2, "deviceLimiter"    # Lcom/google/android/vending/licensing/DeviceLimiter;
    .param p3, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .param p4, "nonce"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 62
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 63
    iput-object p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 64
    iput p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    .line 65
    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private handleApplicationError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    const/16 v1, 0x231

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 227
    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 231
    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public final getNonce()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "responseCode"    # I
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, "data":Lcom/google/android/vending/licensing/ResponseData;
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_0

    const/4 v4, 0x2

    if-ne p2, v4, :cond_b

    .line 99
    :cond_0
    :try_start_0
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 100
    .local v3, "sig":Ljava/security/Signature;
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 101
    if-nez p3, :cond_1

    .line 102
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "signedData is null."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 203
    .end local v3    # "sig":Ljava/security/Signature;
    .end local p3    # "signedData":Ljava/lang/String;
    :goto_0
    return-void

    .line 106
    .restart local v3    # "sig":Ljava/security/Signature;
    .restart local p3    # "signedData":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 108
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Signature verification failed."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 113
    .end local v3    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 117
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_0

    .line 119
    :catch_2
    move-exception v2

    .line 120
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 122
    .end local v2    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v4

    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Could not Base64-decode signature."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 129
    .restart local v3    # "sig":Ljava/security/Signature;
    :cond_2
    const/16 v4, 0x3a

    :try_start_1
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_3

    const-string v4, ""

    .end local p3    # "signedData":Ljava/lang/String;
    :goto_1
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x6

    if-ge v6, v7, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Wrong number of fields."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 131
    :catch_4
    move-exception v4

    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Could not parse response."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 129
    .restart local p3    # "signedData":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_4

    const-string v4, ""

    move-object p3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object p3, v5

    goto :goto_1

    .end local p3    # "signedData":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/google/android/vending/licensing/ResponseData;

    invoke-direct {v1}, Lcom/google/android/vending/licensing/ResponseData;-><init>()V

    iput-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    const/4 v4, 0x1

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    const/4 v4, 0x2

    aget-object v4, v5, v4

    iput-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v5, v4

    iput-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v4, v5, v4

    iput-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    .line 136
    .end local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .local v1, "data":Lcom/google/android/vending/licensing/ResponseData;
    iget v4, v1, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq v4, p2, :cond_6

    .line 137
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Response codes don\'t match."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    move-object v0, v1

    .line 139
    .end local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    goto/16 :goto_0

    .line 142
    .end local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    :cond_6
    iget v4, v1, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    if-eq v4, v5, :cond_7

    .line 143
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Nonce doesn\'t match."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    move-object v0, v1

    .line 145
    .end local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    goto/16 :goto_0

    .line 148
    .end local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    :cond_7
    iget-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 149
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Package name doesn\'t match."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    move-object v0, v1

    .line 151
    .end local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    goto/16 :goto_0

    .line 154
    .end local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    :cond_8
    iget-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 155
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Version codes don\'t match."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    move-object v0, v1

    .line 157
    .end local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    goto/16 :goto_0

    .line 161
    .end local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    :cond_9
    iget-object v4, v1, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 162
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 163
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "User identifier is empty."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    move-object v0, v1

    .line 165
    .end local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    goto/16 :goto_0

    .end local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .restart local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    :cond_a
    move-object v0, v1

    .line 169
    .end local v1    # "data":Lcom/google/android/vending/licensing/ResponseData;
    .end local v3    # "sig":Ljava/security/Signature;
    .restart local v0    # "data":Lcom/google/android/vending/licensing/ResponseData;
    :cond_b
    sparse-switch p2, :sswitch_data_0

    .line 200
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Unknown response code for license check."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_0

    .line 172
    :sswitch_0
    iget-object v4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 173
    const/16 v4, 0x100

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 176
    :sswitch_1
    const/16 v4, 0x231

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 179
    :sswitch_2
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Error contacting licensing server."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 180
    const/16 v4, 0x123

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 183
    :sswitch_3
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "An error has occurred on the licensing server."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 184
    const/16 v4, 0x123

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 187
    :sswitch_4
    sget-object v4, Lcom/google/android/vending/licensing/LicenseValidator;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Licensing server is refusing to talk to this device, over quota."

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 188
    const/16 v4, 0x123

    invoke-direct {p0, v4, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 191
    :sswitch_5
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 194
    :sswitch_6
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 197
    :sswitch_7
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method
