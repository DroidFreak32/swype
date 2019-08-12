.class public Lcom/fsck/k9/preferences/CheckBoxListPreference;
.super Landroid/preference/DialogPreference;
.source "CheckBoxListPreference.java"


# instance fields
.field private mPendingItems:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/preferences/CheckBoxListPreference;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/preferences/CheckBoxListPreference;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    iget-object v1, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    array-length v1, v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_0
    iput-object v3, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    .line 67
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    array-length v0, v2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    .line 45
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    array-length v1, v2

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v0, p0, Lcom/fsck/k9/preferences/CheckBoxListPreference;->mPendingItems:[Z

    new-instance v1, Lcom/fsck/k9/preferences/CheckBoxListPreference$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/preferences/CheckBoxListPreference$1;-><init>(Lcom/fsck/k9/preferences/CheckBoxListPreference;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    return-void
.end method
