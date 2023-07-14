.class final Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;
.super Ljava/lang/Object;
.source "ContributeUsageDataDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ContributeUsageDataDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ContributeUsageDataDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->enableUsageOption()V

    .line 103
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceAccountEmail()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v3}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 106
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    .line 107
    .local v0, "connect":Lcom/nuance/swype/connect/Connect;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v3

    .line 108
    invoke-static {v1}, Lcom/nuance/swype/service/impl/AccountUtil;->isTablet(Landroid/content/Context;)Z

    move-result v4

    .line 109
    invoke-static {v1}, Lcom/nuance/swype/service/impl/AccountUtil;->buildDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 107
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/nuance/swype/connect/Connect$Accounts;->createAccount(Ljava/lang/String;ZLjava/lang/String;Z)Z

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 111
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v3, v3, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowCud(Z)V

    .line 112
    iget-object v3, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v3, v3, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v4, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget v4, v4, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mFlags:I

    iget-object v5, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$2;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v5, v5, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 113
    return-void
.end method
