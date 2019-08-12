.class final Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;
.super Ljava/lang/Object;
.source "EulaGooglePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/EulaGooglePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/EulaGooglePlayActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptEula()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    const-class v3, Lcom/nuance/swype/startup/TracePathActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TracePath:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/startup/EulaGooglePlayActivity$1;->this$0:Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/EulaGooglePlayActivity;->finish()V

    .line 80
    return-void

    .line 72
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method
