.class Lcom/nuance/swype/input/settings/ChinesePrefs$7;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$1000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialogNoButtons(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
