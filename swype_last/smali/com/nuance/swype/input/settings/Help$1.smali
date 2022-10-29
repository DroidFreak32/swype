.class Lcom/nuance/swype/input/settings/Help$1;
.super Ljava/lang/Object;
.source "Help.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Help;->rebuildSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Help;

.field final synthetic val$appPrefs:Lcom/nuance/swype/input/AppPreferences;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Help;Lcom/nuance/swype/input/AppPreferences;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Help;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Help$1;->this$0:Lcom/nuance/swype/input/settings/Help;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/Help$1;->val$appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 72
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 73
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Help$1;->val$appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/AppPreferences;->setshowToolTip(Z)V

    .line 74
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Help$1;->this$0:Lcom/nuance/swype/input/settings/Help;

    .line 75
    # getter for: Lcom/nuance/swype/input/settings/Help;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/Help;->access$000(Lcom/nuance/swype/input/settings/Help;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 76
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_29

    .line 77
    const-string/jumbo v4, "Show tips"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v0, :cond_2a

    move v2, v3

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v5, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :cond_29
    return v3

    .line 77
    :cond_2a
    const/4 v2, 0x0

    goto :goto_22
.end method
