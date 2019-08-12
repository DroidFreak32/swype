.class Lcom/nuance/swype/input/settings/MyWordsPrefs$18;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;->createAskBeforeAddCheckDlg()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 955
    if-nez p2, :cond_1

    move v1, v2

    .line 956
    .local v1, "value":Z
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/UserPreferences;->setAskBeforeAdd(Z)V

    .line 957
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 958
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$18;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 960
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 961
    const-string v4, "Change Dictionary Behavior"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v4, v5, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 963
    :cond_0
    return-void

    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .end local v1    # "value":Z
    :cond_1
    move v1, v3

    .line 955
    goto :goto_0

    .restart local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local v1    # "value":Z
    :cond_2
    move v2, v3

    .line 961
    goto :goto_1
.end method
