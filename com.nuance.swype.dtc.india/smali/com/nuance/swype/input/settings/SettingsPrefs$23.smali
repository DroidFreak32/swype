.class Lcom/nuance/swype/input/settings/SettingsPrefs$23;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1203
    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 1204
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 1206
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string/jumbo v3, "Candidates_Size"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1207
    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1208
    .local v0, "defaultValue":F
    const-string/jumbo v2, "Word Choice Size"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$900(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1209
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1208
    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1211
    .end local v0    # "defaultValue":F
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string/jumbo v3, "Candidates_Size"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$900(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$1100(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;F)V

    .line 1212
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string/jumbo v3, "Candidates_summary"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$1000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->setCandidateFontSize(Ljava/lang/String;I)V

    .line 1213
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$23;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$1200(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->wordChoiceListFontSummary(Landroid/preference/Preference;)V

    .line 1214
    return-void
.end method
