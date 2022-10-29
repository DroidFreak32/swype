.class Lcom/nuance/swype/input/settings/MyWordsPrefs$14;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 896
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->usage_statistics_log_title:I

    .line 897
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->usage_data_opt_out_disclaimer:I

    .line 898
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$14;)V

    .line 899
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$14;)V

    .line 905
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
