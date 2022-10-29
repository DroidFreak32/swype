.class final Lcom/nuance/swype/startup/EnableSwypeDelegate$1;
.super Ljava/lang/Object;
.source "EnableSwypeDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/EnableSwypeDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/EnableSwypeDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/EnableSwypeDelegate;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    iget-object v1, v1, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeEnabled()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    invoke-static {v1}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->access$002$32f5abfe(Lcom/nuance/swype/startup/EnableSwypeDelegate;)Z

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    # getter for: Lcom/nuance/swype/startup/EnableSwypeDelegate;->mSettingsHandler:Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;
    invoke-static {v1}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->access$100(Lcom/nuance/swype/startup/EnableSwypeDelegate;)Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;

    move-result-object v1

    .line 1138
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2c
    return-void

    .line 71
    :cond_2d
    iget-object v1, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    iget-object v1, v1, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    iget-object v2, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    iget v2, v2, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mFlags:I

    iget-object v3, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$1;->this$0:Lcom/nuance/swype/startup/EnableSwypeDelegate;

    iget-object v3, v3, Lcom/nuance/swype/startup/EnableSwypeDelegate;->mResultData:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->startNextScreen(ILandroid/os/Bundle;)V

    goto :goto_2c
.end method
