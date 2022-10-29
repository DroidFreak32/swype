.class final Lcom/facebook/internal/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/Utility;->loadAppSettingsAsync(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$settingsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 812
    iput-object p1, p0, Lcom/facebook/internal/Utility$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/Utility$1;->val$settingsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/Utility$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 816
    iget-object v6, p0, Lcom/facebook/internal/Utility$1;->val$context:Landroid/content/Context;

    const-string/jumbo v7, "com.facebook.internal.preferences.APP_SETTINGS"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 819
    .local v5, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/facebook/internal/Utility$1;->val$settingsKey:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, "settingsJSONString":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 821
    const/4 v2, 0x0

    .line 823
    .local v2, "settingsJSON":Lorg/json/JSONObject;
    :try_start_18
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1d} :catch_4b

    .end local v2    # "settingsJSON":Lorg/json/JSONObject;
    .local v3, "settingsJSON":Lorg/json/JSONObject;
    move-object v2, v3

    .line 827
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    .restart local v2    # "settingsJSON":Lorg/json/JSONObject;
    :goto_1e
    if-eqz v2, :cond_25

    .line 828
    iget-object v6, p0, Lcom/facebook/internal/Utility$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/Utility;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    invoke-static {v6, v2}, Lcom/facebook/internal/Utility;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    .line 832
    .end local v2    # "settingsJSON":Lorg/json/JSONObject;
    :cond_25
    iget-object v6, p0, Lcom/facebook/internal/Utility$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/Utility;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/facebook/internal/Utility;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 833
    .local v1, "resultJSON":Lorg/json/JSONObject;
    if-eqz v1, :cond_43

    .line 834
    iget-object v6, p0, Lcom/facebook/internal/Utility$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/internal/Utility;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    invoke-static {v6, v1}, Lcom/facebook/internal/Utility;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    .line 836
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/internal/Utility$1;->val$settingsKey:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 841
    :cond_43
    # getter for: Lcom/facebook/internal/Utility;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/Utility;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 842
    return-void

    .line 824
    .end local v1    # "resultJSON":Lorg/json/JSONObject;
    .restart local v2    # "settingsJSON":Lorg/json/JSONObject;
    :catch_4b
    move-exception v0

    .line 825
    .local v0, "je":Lorg/json/JSONException;
    const-string/jumbo v6, "FacebookSDK"

    invoke-static {v6, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1e
.end method
