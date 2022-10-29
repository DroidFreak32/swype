.class Lcom/nuance/swype/input/settings/InputPrefs$7;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createRecognitionSpeedDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;

.field final synthetic val$defaultValue:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->val$defaultValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 627
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    const-string/jumbo v2, "hwr_auto_recpgnize_delay"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    # getter for: Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I
    invoke-static {v3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v3

    # invokes: Lcom/nuance/swype/input/settings/InputPrefs;->saveAutoDelay(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$300(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V

    .line 628
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    # getter for: Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/InputPrefs;->access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 629
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_30

    .line 630
    const-string/jumbo v1, "hwr_auto_recpgnize_delay"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    .line 631
    # getter for: Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I
    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$7;->val$defaultValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 630
    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    :cond_30
    return-void
.end method
