.class Lcom/nuance/swype/input/settings/SettingsPrefs$7;
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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;I)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->val$oldValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 488
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const-string v2, "long_press_delay"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$100(Lcom/nuance/swype/input/settings/SettingsPrefs;Ljava/lang/String;I)V

    .line 489
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$300(Lcom/nuance/swype/input/settings/SettingsPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 491
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 492
    const-string v1, "long_press_delay"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/SettingsPrefs;->access$000(Lcom/nuance/swype/input/settings/SettingsPrefs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$7;->val$oldValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    :cond_0
    return-void
.end method
