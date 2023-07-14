.class final Lcom/nuance/swype/startup/ConnectTOSDelegate$3;
.super Ljava/lang/Object;
.source "ConnectTOSDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ConnectTOSDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ConnectTOSDelegate;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->acceptTos()V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1620
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mShowTos:Z

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->isNextScreenNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACTIVITY_RESULT_OK_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->access$100(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->ACCEPT_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->access$100(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$3;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->access$100(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    goto :goto_0
.end method
