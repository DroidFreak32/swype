.class Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;
.super Ljava/lang/Object;
.source "SocialIntegrationPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->showNoNetworkDialog()V

    .line 125
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 127
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;->val$prefKey:Ljava/lang/String;

    const-string v2, "Sign in:Yes"

    const-string v3, "Sign in:No"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    :cond_0
    const/4 v1, 0x1

    .line 132
    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
