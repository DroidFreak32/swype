.class final Lcom/nuance/swype/startup/UsageOptInActivity$2;
.super Ljava/lang/Object;
.source "UsageOptInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/UsageOptInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/UsageOptInActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/UsageOptInActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/startup/UsageOptInActivity$2;->this$0:Lcom/nuance/swype/startup/UsageOptInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInActivity$2;->this$0:Lcom/nuance/swype/startup/UsageOptInActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/UsageOptInActivity;->enableUsageOptin()V

    .line 85
    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInActivity$2;->this$0:Lcom/nuance/swype/startup/UsageOptInActivity;

    iget v1, v1, Lcom/nuance/swype/startup/UsageOptInActivity;->startFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/UsageOptInActivity$2;->this$0:Lcom/nuance/swype/startup/UsageOptInActivity;

    iget-object v2, v2, Lcom/nuance/swype/startup/UsageOptInActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInActivity$2;->this$0:Lcom/nuance/swype/startup/UsageOptInActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/startup/UsageOptInActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/startup/UsageOptInActivity$2;->this$0:Lcom/nuance/swype/startup/UsageOptInActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/UsageOptInActivity;->startNextActivity()V

    .line 91
    return-void
.end method
