.class Lcom/nuance/swype/input/settings/MyWordsPrefs$13;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 756
    const-string v0, ""

    .line 757
    .local v0, "accountIdentifier":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$400(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 758
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$400(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 761
    :cond_0
    const-string v4, "invalid_account_key"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 763
    .local v3, "invalidCode":Z
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 764
    sget v5, Lcom/nuance/swype/input/R$layout;->activation_code_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 765
    .local v2, "activationCodeView":Landroid/view/View;
    sget v4, Lcom/nuance/swype/input/R$id;->activation_email:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    if-eqz v3, :cond_1

    .line 768
    sget v4, Lcom/nuance/swype/input/R$id;->incorrect_code:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 769
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_1
    new-instance v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-direct {v1, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;-><init>(Landroid/content/Context;)V

    .line 772
    .local v1, "activateDialog":Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    sget v4, Lcom/nuance/swype/input/R$string;->pref_connect_activation_code:I

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setTitle(I)V

    .line 774
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setView(Landroid/view/View;)V

    .line 776
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_2

    .line 780
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->ok_button:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;

    invoke-direct {v6, p0, p1, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 788
    const/4 v4, -0x2

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->change_email_button:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$2;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;)V

    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 797
    const/4 v4, -0x3

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$13;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->resend_code_button:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;

    invoke-direct {v6, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$3;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 834
    :goto_0
    return-object v1

    .line 807
    :cond_2
    sget v4, Lcom/nuance/swype/input/R$id;->change_email:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 808
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$4;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$4;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    sget v4, Lcom/nuance/swype/input/R$id;->resend_code:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 817
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$5;

    invoke-direct {v5, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$5;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    sget v4, Lcom/nuance/swype/input/R$id;->confirm_ok:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 825
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$6;

    invoke-direct {v5, p0, p1, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$13$6;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$13;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
