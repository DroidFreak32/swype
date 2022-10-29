.class final Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;
.super Ljava/lang/Object;
.source "ContributeUsageDataDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->wasOptInAccepted()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 83
    # getter for: Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "declineButtonListener: disabling CUD features"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/connect/Connect;->setContributeUsageData(Z)V

    .line 86
    :cond_2b
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1586
    iget-object v0, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->resetOptInChangedFlag()V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowCud(Z)V

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v1, v1, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1$1;->this$1:Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;

    iget-object v2, v2, Lcom/nuance/swype/startup/ContributeUsageDataDelegate$1;->this$0:Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 89
    return-void
.end method
