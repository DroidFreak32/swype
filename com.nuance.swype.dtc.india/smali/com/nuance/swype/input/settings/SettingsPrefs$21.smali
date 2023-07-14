.class Lcom/nuance/swype/input/settings/SettingsPrefs$21;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 1109
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    .line 1113
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1114
    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 1115
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 1116
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v1, :cond_0

    .line 1117
    const-string/jumbo v3, "Keyboard Height"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Portrait:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1119
    invoke-static {v5}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$700(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Landscape:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1120
    invoke-static {v5}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$800(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Portrait:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Landscape:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1123
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1117
    invoke-interface {v1, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 1127
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_1

    .line 1128
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 1130
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$700(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardScalePortrait(F)V

    .line 1131
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$800(Lcom/nuance/swype/input/settings/SettingsPrefs;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardScaleLandscape(F)V

    .line 1132
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$21;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->keyboardHeightSummaryUpdate()V

    .line 1134
    return-void
.end method
