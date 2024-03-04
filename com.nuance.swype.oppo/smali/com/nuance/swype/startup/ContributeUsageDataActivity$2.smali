.class final Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;
.super Ljava/lang/Object;
.source "ContributeUsageDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ContributeUsageDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ContributeUsageDataActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->enableUsageOptin()V

    .line 88
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    invoke-static {v3}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->access$000(Lcom/nuance/swype/startup/ContributeUsageDataActivity;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceAcountEmail()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    .line 90
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    .line 91
    .local v0, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v3

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->isTablet(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->buildDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/nuance/swype/connect/Connect$Accounts;->createAccount(Ljava/lang/String;ZLjava/lang/String;Z)Z

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 95
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    const-class v6, Lcom/nuance/swype/startup/GettingStartedActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataActivity$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/ContributeUsageDataActivity;->finish()V

    .line 97
    return-void
.end method
