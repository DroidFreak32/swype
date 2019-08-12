.class public final Lcom/nuance/swype/input/settings/SettingsLauncher;
.super Ljava/lang/Object;
.source "SettingsLauncher.java"

# interfaces
.implements Lcom/nuance/swype/input/settings/ShowSettings;


# static fields
.field private static final HELP_URL:Ljava/lang/String; = "help_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method


# virtual methods
.method public final showAddonDictionaries(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "i":Landroid/content/Intent;
    const/high16 v3, 0x34000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, p1, v3, v4, v5}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntentForIntent(Landroid/content/Intent;Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 143
    .local v2, "start":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 149
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_0

    .line 150
    const-string v3, "Add-On Dictionary"

    const-string v4, "entered"

    const-string v5, "not enter"

    invoke-interface {v1, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public final showChineseSettings(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-class v1, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 129
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 131
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 132
    const-string v1, "Swype Chinese"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final showFunctionBar(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-class v1, Lcom/nuance/swype/input/settings/FunctionBarActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 104
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 106
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "Function bar"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final showGestures(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "help_url"

    sget v3, Lcom/nuance/swype/input/R$string;->fullhelp_gestures_file:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-class v2, Lcom/nuance/swype/input/settings/TutorialActivity;

    invoke-static {p1, v2, v0}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 39
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 41
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_0

    .line 42
    const-string v2, "Gestures"

    const-string v3, "entered"

    const-string v4, "not enter"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final showLanguageDownloads(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v1, Lcom/nuance/swype/input/settings/LanguageUpdateActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 59
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 61
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 62
    const-string v1, "LanguageDownloads"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final showLanguages(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v1, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 49
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 51
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "Languages"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method

.method public final showMain(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v0, Lcom/nuance/swype/input/settings/Settings;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public final showMyWordsPrefs(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-class v1, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 69
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 71
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "MyWords"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final showThemes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-boolean v1, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v1, :cond_1

    .line 114
    const-class v1, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 118
    :goto_0
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 120
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 121
    const-string v1, "Theme category"

    const-string v2, "used"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-void

    .line 116
    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_1
    const-class v1, Lcom/nuance/swype/input/settings/ThemesActivity;

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final showTutorial(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v1, Lcom/nuance/swype/input/settings/TutorialActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 27
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 29
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "Help"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method

.method public final showUpdates(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v1, Lcom/nuance/swype/input/settings/UpdatesActivity;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/input/settings/SettingsLauncher;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 79
    invoke-static {p1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 81
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 82
    const-string v1, "Updates"

    const-string v2, "entered"

    const-string v3, "not enter"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method
