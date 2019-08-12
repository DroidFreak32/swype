.class Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;
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

.field final synthetic val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$800(Lcom/nuance/swype/input/settings/MyWordsPrefs;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    .line 804
    return-void
.end method
