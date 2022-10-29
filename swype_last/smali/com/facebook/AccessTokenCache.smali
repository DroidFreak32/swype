.class Lcom/facebook/AccessTokenCache;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;
    }
.end annotation


# static fields
.field static final CACHED_ACCESS_TOKEN_KEY:Ljava/lang/String; = "com.facebook.AccessTokenManager.CachedAccessToken"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

.field private final tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 47
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    invoke-direct {v1}, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/facebook/AccessTokenCache;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V
    .registers 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "tokenCachingStrategyFactory"    # Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    iput-object p2, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    .line 44
    return-void
.end method

.method private getCachedAccessToken()Lcom/facebook/AccessToken;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 101
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {v2}, Lcom/facebook/AccessToken;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_14} :catch_16

    move-result-object v1

    .line 107
    :cond_15
    :goto_15
    return-object v1

    .line 104
    :catch_16
    move-exception v2

    goto :goto_15
.end method

.method private getLegacyAccessToken()Lcom/facebook/AccessToken;
    .registers 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/LegacyTokenHelper;->load()Landroid/os/Bundle;

    move-result-object v1

    .line 118
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_15

    invoke-static {v1}, Lcom/facebook/LegacyTokenHelper;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 119
    invoke-static {v1}, Lcom/facebook/AccessToken;->createFromLegacyCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 121
    :cond_15
    return-object v0
.end method

.method private getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    if-nez v0, :cond_12

    .line 126
    monitor-enter p0

    .line 127
    :try_start_5
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    if-nez v0, :cond_11

    .line 128
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;->create()Lcom/facebook/LegacyTokenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    .line 130
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_15

    .line 132
    :cond_12
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategy:Lcom/facebook/LegacyTokenHelper;

    return-object v0

    .line 130
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private hasCachedAccessToken()Z
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldCheckLegacyToken()Z
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->shouldCheckLegacyToken()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 89
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/LegacyTokenHelper;->clear()V

    .line 91
    :cond_1d
    return-void
.end method

.method public load()Lcom/facebook/AccessToken;
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->hasCachedAccessToken()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 60
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getCachedAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 70
    :cond_b
    :goto_b
    return-object v0

    .line 61
    :cond_c
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->shouldCheckLegacyToken()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getLegacyAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {p0, v0}, Lcom/facebook/AccessTokenCache;->save(Lcom/facebook/AccessToken;)V

    .line 66
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/LegacyTokenHelper;->clear()V

    goto :goto_b
.end method

.method public save(Lcom/facebook/AccessToken;)V
    .registers 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 74
    const-string/jumbo v1, "accessToken"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :try_start_6
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 84
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_1e
    return-void

    :catch_1f
    move-exception v1

    goto :goto_1e
.end method
