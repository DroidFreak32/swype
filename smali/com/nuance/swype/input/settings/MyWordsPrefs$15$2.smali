.class Lcom/nuance/swype/input/settings/MyWordsPrefs$15$2;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$15;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$15;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15$2;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 888
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15$2;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$15;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 889
    return-void
.end method
