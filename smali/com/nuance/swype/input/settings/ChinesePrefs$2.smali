.class Lcom/nuance/swype/input/settings/ChinesePrefs$2;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->rebuildSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 197
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 198
    .local v0, "check":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 199
    .local v1, "currentVaule":Z
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 202
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v5, v6, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    :cond_0
    return v4

    .line 203
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
