.class Lcom/nuance/swype/input/IME$15;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 4020
    iput-object p1, p0, Lcom/nuance/swype/input/IME$15;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 4023
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4024
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "ThirdPartyLicense"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "User canceled the invalid third party license dialog"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4025
    return-void
.end method
