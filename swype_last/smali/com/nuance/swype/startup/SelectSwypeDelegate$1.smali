.class final Lcom/nuance/swype/startup/SelectSwypeDelegate$1;
.super Ljava/lang/Object;
.source "SelectSwypeDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/SelectSwypeDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/SelectSwypeDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/SelectSwypeDelegate;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->access$002$11ff5da5(Lcom/nuance/swype/startup/SelectSwypeDelegate;)Z

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeSelected()Z

    move-result v0

    if-nez v0, :cond_22

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/SelectSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 48
    :goto_21
    return-void

    .line 46
    :cond_22
    iget-object v0, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v1, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    iget v1, v1, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mFlags:I

    iget-object v2, p0, Lcom/nuance/swype/startup/SelectSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/SelectSwypeDelegate;

    iget-object v2, v2, Lcom/nuance/swype/startup/SelectSwypeDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    goto :goto_21
.end method
