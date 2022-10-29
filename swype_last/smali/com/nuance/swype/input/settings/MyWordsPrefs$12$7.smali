.class Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .registers 4
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;->val$activationCodeView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 812
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_19

    .line 813
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 818
    .local v0, "positive":Landroid/widget/Button;
    :goto_d
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_24

    .line 819
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 824
    :goto_18
    return-void

    .line 815
    .end local v0    # "positive":Landroid/widget/Button;
    :cond_19
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;->val$activationCodeView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->confirm_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .restart local v0    # "positive":Landroid/widget/Button;
    goto :goto_d

    .line 822
    :cond_24
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_18
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 799
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 806
    return-void
.end method
