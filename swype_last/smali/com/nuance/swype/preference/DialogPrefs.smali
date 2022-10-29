.class public abstract Lcom/nuance/swype/preference/DialogPrefs;
.super Ljava/lang/Object;
.source "DialogPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;
    }
.end annotation


# instance fields
.field private final activeDialogRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/preference/DialogPrefs;->dialogs:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/preference/DialogPrefs;->activeDialogRefs:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public cancelAllActiveDialogs()V
    .registers 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/nuance/swype/preference/DialogPrefs;->activeDialogRefs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 84
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 85
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a

    .line 89
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_28
    return-void
.end method

.method public doCreateDialog(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "id"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 104
    if-nez p3, :cond_7

    .line 105
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "args":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 107
    .restart local p3    # "args":Landroid/os/Bundle;
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/preference/DialogPrefs;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 108
    iget-object v1, p0, Lcom/nuance/swype/preference/DialogPrefs;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 109
    invoke-interface {v1, p2, p3}, Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 110
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v1, p0, Lcom/nuance/swype/preference/DialogPrefs;->activeDialogRefs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v0    # "dialog":Landroid/app/Dialog;
    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public getActiveDialog(I)Landroid/app/Dialog;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/nuance/swype/preference/DialogPrefs;->activeDialogRefs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 72
    .local v0, "dialogRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    if-eqz v0, :cond_15

    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 75
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V
    .registers 4
    .param p1, "dialogId"    # I
    .param p2, "creator"    # Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/preference/DialogPrefs;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/preference/DialogPrefs;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    :cond_f
    return-void
.end method

.method public removeActiveRef(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/preference/DialogPrefs;->activeDialogRefs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
