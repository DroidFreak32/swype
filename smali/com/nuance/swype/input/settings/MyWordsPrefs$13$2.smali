.class Lcom/nuance/swype/input/settings/MyWordsPrefs$13$2;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$2;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$2;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$700(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V

    .line 795
    return-void
.end method
