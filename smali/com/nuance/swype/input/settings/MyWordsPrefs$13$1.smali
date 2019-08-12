.class Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;
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

.field final synthetic val$activationCodeView:Landroid/view/View;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->val$activationCodeView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$13;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;->val$activationCodeView:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$600(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    .line 786
    return-void
.end method
