.class final Lcom/nuance/swype/startup/StartupActivity$1;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Lcom/nuance/swype/startup/StartupActivity$DialogCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/StartupActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/StartupActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupActivity$1;->this$0:Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->agree_to_terms:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->startup_tos_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->skip_button:I

    new-instance v2, Lcom/nuance/swype/startup/StartupActivity$1$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/StartupActivity$1$1;-><init>(Lcom/nuance/swype/startup/StartupActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->ok_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
