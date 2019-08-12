.class Lcom/nuance/swype/input/settings/SettingsPrefs$5;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->createVibrationDurationDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

.field final synthetic val$defaultValue:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;I)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->val$defaultValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 420
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string v2, "vibration_duration"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;I)V

    .line 421
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$200(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "vibration_duration"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 425
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 426
    const-string v1, "vibration_duration"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$5;->val$defaultValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    :cond_0
    return-void
.end method
