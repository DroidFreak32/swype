.class Lcom/nuance/swype/input/settings/AccountPrefs$8;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;->createDeleteAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$8;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 457
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$8;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/Connect$Accounts;->deleteActiveAccount(Z)V

    .line 458
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$8;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->showMyWordsPrefs()V

    .line 459
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$8;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    .line 460
    invoke-static {v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 461
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 462
    const-string/jumbo v1, "pref_account_delete"

    const-string/jumbo v2, "account deleted"

    const-string/jumbo v3, "account existing"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    :cond_0
    return-void
.end method
