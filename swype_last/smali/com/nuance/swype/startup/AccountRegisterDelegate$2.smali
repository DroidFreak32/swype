.class final Lcom/nuance/swype/startup/AccountRegisterDelegate$2;
.super Ljava/lang/Object;
.source "AccountRegisterDelegate.java"

# interfaces
.implements Lcom/nuance/swype/startup/StartupDelegate$StartupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/AccountRegisterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/AccountRegisterDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/AccountRegisterDelegate;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAcceptListener(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    # getter for: Lcom/nuance/swype/startup/AccountRegisterDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onAcceptListener"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setHotWordsStatus$1385ff()V

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->register(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->unregisterListener()V

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 46
    :cond_35
    return-void
.end method

.method public final onCancelListener()V
    .registers 5

    .prologue
    .line 34
    # getter for: Lcom/nuance/swype/startup/AccountRegisterDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCancelListener"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public final onSkipListener()V
    .registers 5

    .prologue
    .line 28
    # getter for: Lcom/nuance/swype/startup/AccountRegisterDelegate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/startup/AccountRegisterDelegate;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSkipListener"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$2;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 30
    return-void
.end method
