.class Lcom/nuance/swype/input/settings/SettingsPrefs$18;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$defaultValue:I

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/content/res/Resources;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->val$res:Landroid/content/res/Resources;

    iput p3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->val$defaultValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string/jumbo v3, "hwr_auto_recognize_delay_alpha"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I
    invoke-static {v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v4

    # invokes: Lcom/nuance/swype/input/settings/SettingsPrefs;->saveAutoDelay(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$200(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;I)V

    .line 1002
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->screen:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "hwr_auto_recognize_delay_alpha"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1003
    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->val$res:Landroid/content/res/Resources;

    sget v4, Lcom/nuance/swype/input/R$string;->second:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I
    invoke-static {v7}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1005
    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$400(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 1006
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_5c

    .line 1007
    const-string/jumbo v2, "hwr_auto_recognize_delay_alpha"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 1008
    # getter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I
    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->val$defaultValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1007
    invoke-interface {v0, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1010
    :cond_5c
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    # invokes: Lcom/nuance/swype/input/settings/SettingsPrefs;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1011
    .local v1, "sp":Lcom/nuance/swype/input/UserPreferences;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string/jumbo v3, "hwr_auto_recognize_delay_alpha"

    iget v4, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$18;->val$defaultValue:I

    # invokes: Lcom/nuance/swype/input/settings/SettingsPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    invoke-static {v1, v3, v4}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$600(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/nuance/swype/input/settings/SettingsPrefs;->mValue:I
    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$002(Lcom/nuance/swype/input/settings/SettingsPrefs;I)I

    .line 1012
    return-void
.end method
