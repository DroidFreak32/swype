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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Help;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/nuance/swype/input/settings/Help;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/settings/Help$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/nuance/swype/input/settings/Help;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Help$1;->this$0:Lcom/nuance/swype/input/settings/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 65
    sget-boolean v2, Lcom/nuance/swype/input/settings/Help$1;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 66
    :cond_0
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 67
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Help$1;->this$0:Lcom/nuance/swype/input/settings/Help;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/Help;->access$000(Lcom/nuance/swype/input/settings/Help;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/AppPreferences;->setshowToolTip(Z)V

    .line 69
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Help$1;->this$0:Lcom/nuance/swype/input/settings/Help;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/Help;->access$000(Lcom/nuance/swype/input/settings/Help;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 71
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_1

    .line 72
    const-string v4, "Show tips"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v5, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    :cond_1
    return v3

    .line 72
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
