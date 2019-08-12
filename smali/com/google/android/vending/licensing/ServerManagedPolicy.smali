.class public final Lcom/google/android/vending/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;
.source "ServerManagedPolicy.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ServerManagedPolicy"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obfuscator"    # Lcom/google/android/vending/licensing/Obfuscator;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 79
    const-string v1, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-direct {v1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    .line 81
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "lastResponse"

    const/16 v3, 0x123

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 83
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 85
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 86
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 87
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryCount"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 88
    return-void
.end method

.method private static decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "extras"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 269
    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 270
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 271
    .local v1, "item":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/android/vending/licensing/ServerManagedPolicy;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "Invalid syntax error while decoding extras data from server."

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 276
    :cond_0
    return-object v2
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 4
    .param p1, "maxRetries"    # Ljava/lang/String;

    .prologue
    .line 222
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    .local v0, "lMaxRetries":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 231
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 225
    .end local v0    # "lMaxRetries":Ljava/lang/Long;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/android/vending/licensing/ServerManagedPolicy;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Licence retry count (GR) missing, grace period disabled"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 226
    const-string p1, "0"

    .line 227
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .restart local v0    # "lMaxRetries":Ljava/lang/Long;
    goto :goto_0
.end method

.method private setRetryCount(J)V
    .locals 3
    .param p1, "c"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 153
    iget-object v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 4
    .param p1, "retryUntil"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    .local v0, "lRetryUntil":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 205
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 199
    .end local v0    # "lRetryUntil":Ljava/lang/Long;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/android/vending/licensing/ServerManagedPolicy;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "License retry timestamp (GT) missing, grace period disabled"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 200
    const-string p1, "0"

    .line 201
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .restart local v0    # "lRetryUntil":Ljava/lang/Long;
    goto :goto_0
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 6
    .param p1, "validityTimestamp"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 179
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 173
    .end local v0    # "lValidityTimestamp":Ljava/lang/Long;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/android/vending/licensing/ServerManagedPolicy;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "License validity timestamp (VT) missing, caching for a minute"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 175
    .restart local v0    # "lValidityTimestamp":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final allowAccess()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    .local v0, "ts":J
    iget v4, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 252
    iget-wide v4, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 256
    :cond_1
    iget v4, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_2

    iget-wide v4, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 260
    iget-wide v4, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-wide v6, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    .line 262
    goto :goto_0
.end method

.method public final denyAccess()Z
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v1, 0x231

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 6
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 108
    const/16 v1, 0x123

    if-eq p1, v1, :cond_1

    .line 109
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryCount(J)V

    .line 114
    :goto_0
    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    .line 116
    iget-object v1, p2, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 117
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 118
    const-string v1, "VT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 119
    const-string v1, "GT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 120
    const-string v1, "GR"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 128
    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    iput p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    .line 130
    return-void

    .line 111
    :cond_1
    iget-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 121
    :cond_2
    const/16 v1, 0x231

    if-ne p1, v1, :cond_0

    .line 123
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 124
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 125
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1
.end method
