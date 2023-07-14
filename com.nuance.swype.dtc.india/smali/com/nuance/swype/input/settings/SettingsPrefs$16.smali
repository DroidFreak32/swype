.class Lcom/nuance/swype/input/settings/SettingsPrefs$16;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createLongPressDurationDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$oldValue:I

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;Landroid/content/res/Resources;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->val$res:Landroid/content/res/Resources;

    iput p3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->val$oldValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 911
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string/jumbo v2, "long_press_delay"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$200(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;I)V

    .line 912
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "long_press_delay"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 913
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->val$res:Landroid/content/res/Resources;

    sget v3, Lcom/nuance/swype/input/R$string;->millisecond:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 915
    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$400(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 916
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 917
    const-string/jumbo v1, "long_press_delay"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    .line 918
    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$16;->val$oldValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 917
    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 921
    :cond_0
    return-void
.end method
