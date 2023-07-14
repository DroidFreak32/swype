.class final Lcom/nuance/swype/startup/ConnectTOSDelegate$1;
.super Ljava/lang/Object;
.source "ConnectTOSDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ConnectTOSDelegate;->onCreate(Landroid/os/Bundle;)V
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
    .line 35
    iput-object p1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1620
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mShowTos:Z

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$1;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 40
    return-void
.end method
