.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;
.super Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;
.source "LanguageOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v0, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 223
    .local v0, "delegate":Lcom/nuance/swype/input/settings/LanguageOptions;
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->createKeyboardDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method
