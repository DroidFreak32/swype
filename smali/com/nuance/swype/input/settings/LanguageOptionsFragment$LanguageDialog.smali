.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;
.super Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;
.source "LanguageOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v0, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 224
    .local v0, "delegate":Lcom/nuance/swype/input/settings/LanguageOptions;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->createLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
