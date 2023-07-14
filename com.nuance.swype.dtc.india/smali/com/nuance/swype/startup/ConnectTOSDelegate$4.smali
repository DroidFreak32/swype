.class final Lcom/nuance/swype/startup/ConnectTOSDelegate$4;
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
    .line 130
    iput-object p1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ConnectTOSDelegate;->access$100(Lcom/nuance/swype/startup/ConnectTOSDelegate;)V

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/ConnectTOSDelegate$4;->this$0:Lcom/nuance/swype/startup/ConnectTOSDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/ConnectTOSDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 135
    return-void
.end method
