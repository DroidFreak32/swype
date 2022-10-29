.class Lcom/nuance/swype/input/settings/MyWordsPrefs$14$2;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$14;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$2;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 902
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14$2;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$14;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$14;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 903
    return-void
.end method
