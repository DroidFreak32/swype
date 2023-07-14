.class final Lcom/nuance/swype/startup/UsageOptInDelegate$1;
.super Ljava/lang/Object;
.source "UsageOptInDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/UsageOptInDelegate;->onCreate(Landroid/os/Bundle;)V
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
    .line 34
    iput-object p1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    sget-object v1, Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;->SKIP_LISTENER_KEY:Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->notifyStartupListener(Lcom/nuance/swype/startup/StartupDelegate$StartupListener$LISTENER_KEY;Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->cancelSequence()V

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/UsageOptInDelegate;->access$000(Lcom/nuance/swype/startup/UsageOptInDelegate;)V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/UsageOptInDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/UsageOptInDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInDelegate$1;->this$0:Lcom/nuance/swype/startup/UsageOptInDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
