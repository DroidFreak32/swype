.class Lcom/nuance/swype/input/settings/ChinesePrefs$4;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->showCloudNetworkOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$4;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 315
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$4;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    .line 316
    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 317
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_1c

    .line 318
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$4;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getChineseCloudNetworkOption()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "option":Ljava/lang/String;
    const-string/jumbo v2, "cloud input"

    invoke-interface {v1, v2, v0, v0}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .end local v0    # "option":Ljava/lang/String;
    :cond_1c
    return-void
.end method
