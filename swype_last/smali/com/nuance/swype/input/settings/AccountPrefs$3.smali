.class Lcom/nuance/swype/input/settings/AccountPrefs$3;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "pref_backup_enabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 148
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AccountPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->toggleSyncEnabled(Z)V

    .line 149
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 150
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_3d

    .line 151
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 152
    .local v1, "value":Z
    const-string/jumbo v4, "pref_backup_enabled"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v1, :cond_3e

    move v2, v3

    :goto_36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v4, v5, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .end local v1    # "value":Z
    :cond_3d
    return v3

    .line 152
    .restart local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local v1    # "value":Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_36
.end method
