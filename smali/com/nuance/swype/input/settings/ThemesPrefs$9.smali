.class Lcom/nuance/swype/input/settings/ThemesPrefs$9;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 421
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 423
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_0

    .line 424
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string v3, "Candidates_Size"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 427
    .local v0, "defaultValue":F
    const-string v2, "Word Choice Size"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .end local v0    # "defaultValue":F
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    const-string v3, "Candidates_Size"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$500(Lcom/nuance/swype/input/settings/ThemesPrefs;Ljava/lang/String;F)V

    .line 431
    return-void
.end method
