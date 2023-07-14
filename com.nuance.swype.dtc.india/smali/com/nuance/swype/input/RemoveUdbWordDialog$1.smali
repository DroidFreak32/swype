.class Lcom/nuance/swype/input/RemoveUdbWordDialog$1;
.super Ljava/lang/Object;
.source "RemoveUdbWordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/RemoveUdbWordDialog;->onCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/RemoveUdbWordDialog;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/RemoveUdbWordDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog$1;->this$0:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog$1;->this$0:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-static {v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->access$100(Lcom/nuance/swype/input/RemoveUdbWordDialog;)Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog$1;->this$0:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-static {v1}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->access$000(Lcom/nuance/swype/input/RemoveUdbWordDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;->onHandleUdbWordRemoval(Ljava/lang/String;)V

    .line 38
    return-void
.end method
