.class final Lcom/nuance/swype/startup/TracePathActivity$1;
.super Ljava/lang/Object;
.source "TracePathActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/TracePathActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/TracePathActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/TracePathActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TracePathActivity;->isSwypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TracePathActivity;->isSwypeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    const-class v3, Lcom/nuance/swype/startup/SelectSwypeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/TracePathActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TracePathActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TracePathActivity;->isSwypeSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    const-class v3, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/TracePathActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TracePathActivity;->finish()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    const-class v3, Lcom/nuance/swype/startup/EnableSwypeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/TracePathActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->EnableSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity$1;->this$0:Lcom/nuance/swype/startup/TracePathActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TracePathActivity;->finish()V

    goto :goto_0
.end method
