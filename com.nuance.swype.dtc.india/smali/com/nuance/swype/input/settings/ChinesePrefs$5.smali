.class Lcom/nuance/swype/input/settings/ChinesePrefs$5;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->showCloudNetworkOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

.field final synthetic val$cloudNetworkAdapter:Lcom/nuance/swype/input/CloudNetworkAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Lcom/nuance/swype/input/CloudNetworkAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->val$cloudNetworkAdapter:Lcom/nuance/swype/input/CloudNetworkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 328
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->val$cloudNetworkAdapter:Lcom/nuance/swype/input/CloudNetworkAdapter;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/CloudNetworkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    .local v0, "itemKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    .line 334
    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 335
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_1

    .line 336
    const-string/jumbo v2, "cloud input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    .line 337
    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    .line 338
    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->getChineseCloudNetworkOption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-interface {v1, v2, v0, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/AppPreferences;->setChineseCloudNetworkOption(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$300(Lcom/nuance/swype/input/settings/ChinesePrefs;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "cloud_input"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 344
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$5;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$400(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
