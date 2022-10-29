.class final Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;
.super Ljava/lang/Object;
.source "LegalDocsSplashDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/LegalDocsSplashDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showEulaLink()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1501
    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "acceptEula"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1502
    iget-object v0, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptEula()V

    .line 42
    :cond_23
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showTosLink()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->acceptTos()V

    .line 45
    :cond_32
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowSplash(Z)V

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;->this$0:Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 48
    return-void
.end method
