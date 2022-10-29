.class final Lcom/nuance/swype/startup/AccountRegisterDelegate$1;
.super Ljava/lang/Object;
.source "AccountRegisterDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$1;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$1;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$1;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterDelegate$1;->this$0:Lcom/nuance/swype/startup/AccountRegisterDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/AccountRegisterDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    .line 21
    return-void
.end method
