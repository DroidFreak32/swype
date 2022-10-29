.class Lcom/nuance/swype/input/settings/SettingsV11$4;
.super Ljava/lang/Object;
.source "SettingsV11.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsV11;->showGoogleAccountLoginFailedDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$4;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$4;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    # getter for: Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->access$600(Lcom/nuance/swype/input/settings/SettingsV11;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 469
    return-void
.end method
