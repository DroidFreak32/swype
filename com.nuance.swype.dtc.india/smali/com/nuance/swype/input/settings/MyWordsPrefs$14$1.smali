.class Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 908
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 909
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 910
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 911
    invoke-static {v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 912
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 913
    const-string/jumbo v1, "pref_connect_contribute_usage_data"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    .line 914
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 913
    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 916
    :cond_0
    return-void
.end method
