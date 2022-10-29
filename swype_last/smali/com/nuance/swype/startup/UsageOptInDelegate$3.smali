.class final Lcom/nuance/swype/startup/UsageOptInDelegate$3;
.super Ljava/lang/Object;
.source "UsageOptInDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/UsageOptInDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/UsageOptInDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/UsageOptInDelegate;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->enableUsageOption()V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_43

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->isNextScreenNull()Z

    move-result v0

    if-nez v0, :cond_30

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 126
    :goto_2f
    return-void

    .line 115
    :cond_30
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_OK_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    goto :goto_2f

    .line 119
    :cond_43
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACCEPT_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    goto :goto_2f

    .line 123
    :cond_56
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$3;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    goto :goto_2f
.end method
