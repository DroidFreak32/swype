.class Lcom/nuance/swype/input/settings/InputPrefs$5;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/InputPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$5;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 617
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 618
    .local v0, "list":Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$5;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setHandwritingInputArea(I)V

    .line 620
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$5;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 621
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
