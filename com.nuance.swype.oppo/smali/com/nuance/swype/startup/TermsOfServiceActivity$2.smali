.class final Lcom/nuance/swype/startup/TermsOfServiceActivity$2;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/TermsOfServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/TermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptTos()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    const-class v3, Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/startup/TermsOfServiceActivity$2;->this$0:Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/TermsOfServiceActivity;->finish()V

    .line 87
    return-void

    .line 81
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method
