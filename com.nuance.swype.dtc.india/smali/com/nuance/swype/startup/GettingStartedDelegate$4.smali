.class final Lcom/nuance/swype/startup/GettingStartedDelegate$4;
.super Ljava/lang/Object;
.source "GettingStartedDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/GettingStartedDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/GettingStartedDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/GettingStartedDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/GettingStartedDelegate;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/swype/startup/GettingStartedDelegate$4;->this$0:Lcom/nuance/swype/startup/GettingStartedDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate$4;->this$0:Lcom/nuance/swype/startup/GettingStartedDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/GettingStartedDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->finishSequence(Z)V

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/startup/GettingStartedDelegate$4;->this$0:Lcom/nuance/swype/startup/GettingStartedDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/GettingStartedDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 81
    return-void
.end method
