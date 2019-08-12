.class public Lcom/nuance/swype/input/settings/ThemesPrefsFragment$CandidateSizeDialog;
.super Landroid/app/DialogFragment;
.source "ThemesPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateSizeDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$CandidateSizeDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->access$000(Lcom/nuance/swype/input/settings/ThemesPrefsFragment;)Lcom/nuance/swype/input/settings/ThemesPrefs;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$CandidateSizeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
