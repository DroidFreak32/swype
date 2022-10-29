.class final Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;
.super Ljava/lang/Object;
.source "EulaGooglePlayDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/EulaGooglePlayDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/EulaGooglePlayDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/EulaGooglePlayDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    # invokes: Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->removeFlag()V
    invoke-static {v0}, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->access$000(Lcom/nuance/swype/startup/EulaGooglePlayDelegate;)V

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/EulaGooglePlayDelegate$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->restartSequence(ILandroid/os/Bundle;)V

    .line 46
    return-void
.end method
