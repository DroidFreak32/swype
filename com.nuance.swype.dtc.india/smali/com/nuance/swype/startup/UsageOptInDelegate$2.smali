.class final Lcom/nuance/swype/startup/UsageOptInDelegate$2;
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
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/UsageOptInDelegate;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->getShowRegistrationWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v1}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$100(Lcom/nuance/swype/startup/UsageOptInDelegate;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/UsageOptInDelegate;->showDialog(Landroid/app/Dialog;)V

    .line 102
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->CANCEL_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$2;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    goto :goto_0
.end method
