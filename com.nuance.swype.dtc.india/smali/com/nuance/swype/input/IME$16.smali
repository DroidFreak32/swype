.class Lcom/nuance/swype/input/IME$16;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->showThirdPartyNonLicenseAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 3998
    iput-object p1, p0, Lcom/nuance/swype/input/IME$16;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4002
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4003
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "ThirdPartyLicense"

    aput-object v3, v2, v4

    const-string/jumbo v3, "User selected OK in the invalid third party license dialog"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4005
    iget-object v1, p0, Lcom/nuance/swype/input/IME$16;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$1500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ThirdPartyLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4006
    iget-object v1, p0, Lcom/nuance/swype/input/IME$16;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$1500(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/ThirdPartyLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThirdPartyLicense;->getActivityIntentForInvalidLicense()Landroid/content/Intent;

    move-result-object v0

    .line 4007
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 4008
    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "ThirdPartyLicense"

    aput-object v3, v2, v4

    const-string/jumbo v3, "User selected OK and show the page of third party"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4009
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4011
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/IME$16;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4018
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 4014
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "ThirdPartyLicense"

    aput-object v3, v2, v4

    const-string/jumbo v3, "not found the page of third party"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method
