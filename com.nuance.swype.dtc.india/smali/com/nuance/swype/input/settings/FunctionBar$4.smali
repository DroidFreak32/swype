.class Lcom/nuance/swype/input/settings/FunctionBar$4;
.super Ljava/lang/Object;
.source "FunctionBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/FunctionBar;->setFuctionItemClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/FunctionBar;

.field final synthetic val$qucikToggle:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/FunctionBar;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/nuance/swype/input/settings/FunctionBar$4;->this$0:Lcom/nuance/swype/input/settings/FunctionBar;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/FunctionBar$4;->val$qucikToggle:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    iget-object v4, p0, Lcom/nuance/swype/input/settings/FunctionBar$4;->this$0:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/FunctionBar;->access$000(Lcom/nuance/swype/input/settings/FunctionBar;)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 146
    iget-object v4, p0, Lcom/nuance/swype/input/settings/FunctionBar$4;->val$qucikToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    iget-object v4, p0, Lcom/nuance/swype/input/settings/FunctionBar$4;->this$0:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/FunctionBar;->showMaxCountdialog()V

    .line 150
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/settings/FunctionBar$4;->this$0:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/FunctionBar;->access$100(Lcom/nuance/swype/input/settings/FunctionBar;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 151
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_2

    .line 152
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 153
    .local v0, "checked":Z
    const-string/jumbo v4, "quicktoggle"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v0, :cond_1

    move v2, v3

    .line 154
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 153
    invoke-interface {v1, v4, v5, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .end local v0    # "checked":Z
    :cond_2
    return v3
.end method
