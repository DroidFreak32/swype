.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;
.super Landroid/app/DialogFragment;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowEraseUdbDialg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 227
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->createEraseUdbConfirmationDlg()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
