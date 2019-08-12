.class public Lcom/nuance/sns/OAuthPreference;
.super Ljava/lang/Object;
.source "OAuthPreference.java"


# instance fields
.field private final pref:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static getFacebookOAuthPreference()Lcom/nuance/sns/OAuthPreference;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/nuance/sns/OAuthPreference;

    const-string v1, "facebook"

    invoke-direct {v0, v1}, Lcom/nuance/sns/OAuthPreference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTwitterOAuthPreference()Lcom/nuance/sns/OAuthPreference;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/nuance/sns/OAuthPreference;

    const-string v1, "twitter"

    invoke-direct {v0, v1}, Lcom/nuance/sns/OAuthPreference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {}, Lcom/nuance/sns/OAuthPreference;->getFacebookOAuthPreference()Lcom/nuance/sns/OAuthPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/sns/OAuthPreference;->clear(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/nuance/sns/OAuthPreference;->getTwitterOAuthPreference()Lcom/nuance/sns/OAuthPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/sns/OAuthPreference;->clear(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 61
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 63
    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 31
    return-void
.end method

.method public getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 40
    return-void
.end method

.method public putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 26
    return-void
.end method
