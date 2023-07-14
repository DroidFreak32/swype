.class Lcom/nuance/swype/input/settings/ChinesePrefs$10;
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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$10;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$10;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$1500(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
