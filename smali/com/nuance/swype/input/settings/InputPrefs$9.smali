.class Lcom/nuance/swype/input/settings/InputPrefs$9;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createStrokeWidthDialog()Landroid/app/Dialog;
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
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->val$defaultValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 746
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    const-string v2, "hwr_pen_size"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$300(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V

    .line 747
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/InputPrefs;->access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 748
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 749
    const-string v1, "hwr_pen_size"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$9;->val$defaultValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 753
    :cond_0
    return-void
.end method
