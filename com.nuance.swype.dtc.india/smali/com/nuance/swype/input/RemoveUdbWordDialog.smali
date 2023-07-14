.class public Lcom/nuance/swype/input/RemoveUdbWordDialog;
.super Lcom/nuance/swype/input/SwypeDialog;
.source "RemoveUdbWordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;

.field private final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nuance/swype/input/SwypeDialog;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog;->listener:Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;

    .line 21
    iput-object p2, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog;->word:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/RemoveUdbWordDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog;->word:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/RemoveUdbWordDialog;)Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog;->listener:Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;

    return-object v0
.end method


# virtual methods
.method protected onCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030132

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->dialog_udb_delete_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->dialog_udb_delete_body:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/swype/input/RemoveUdbWordDialog;->word:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 30
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 31
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v3, Lcom/nuance/swype/input/RemoveUdbWordDialog$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/RemoveUdbWordDialog$1;-><init>(Lcom/nuance/swype/input/RemoveUdbWordDialog;)V

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
