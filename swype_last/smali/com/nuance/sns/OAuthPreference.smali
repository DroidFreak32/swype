.class public Lcom/nuance/sns/OAuthPreference;
.super Ljava/lang/Object;
.source "OAuthPreference.java"


# instance fields
.field private final pref:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/sns/OAuthPreference;->pref:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private clear(Landroid/content/Context;)V
    .registers 4
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

.method private static getTwitterOAuthPreference()Lcom/nuance/sns/OAuthPreference;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/nuance/sns/OAuthPreference;

    const-string/jumbo v1, "twitter"

    invoke-direct {v0, v1}, Lcom/nuance/sns/OAuthPreference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static reset(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {}, Lcom/nuance/sns/OAuthPreference;->getTwitterOAuthPreference()Lcom/nuance/sns/OAuthPreference;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/nuance/sns/OAuthPreference;->clear(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 48
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 51
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
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

.method public putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
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
