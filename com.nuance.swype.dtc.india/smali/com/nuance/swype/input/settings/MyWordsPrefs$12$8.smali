.class Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

.field final synthetic val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

.field final synthetic val$activationCodeView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;->val$activationCodeView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 834
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 835
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 840
    .local v0, "positive":Landroid/widget/Button;
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    sget v2, Lcom/nuance/swype/input/R$id;->editText_activation_code:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 841
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 842
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 844
    :cond_0
    return-void

    .line 837
    .end local v0    # "positive":Landroid/widget/Button;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;->val$activationCodeView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->confirm_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .restart local v0    # "positive":Landroid/widget/Button;
    goto :goto_0
.end method
