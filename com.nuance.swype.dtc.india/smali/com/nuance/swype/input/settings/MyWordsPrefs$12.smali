.class Lcom/nuance/swype/input/settings/MyWordsPrefs$12;
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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 713
    const-string/jumbo v0, ""

    .line 714
    .local v0, "accountIdentifier":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 715
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_0
    const-string/jumbo v4, "invalid_account_key"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 720
    .local v3, "invalidCode":Z
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 722
    sget v5, Lcom/nuance/swype/input/R$layout;->activation_code_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 723
    .local v2, "activationCodeView":Landroid/view/View;
    sget v4, Lcom/nuance/swype/input/R$id;->activation_email:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    if-eqz v3, :cond_1

    .line 726
    sget v4, Lcom/nuance/swype/input/R$id;->incorrect_code:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 727
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_1
    new-instance v1, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-direct {v1, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;-><init>(Landroid/content/Context;)V

    .line 731
    .local v1, "activateDialog":Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setView(Landroid/view/View;)V

    .line 736
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_2

    .line 737
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 738
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->ok_button:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$1;

    invoke-direct {v6, p0, p1, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    .line 737
    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 745
    const/4 v4, -0x2

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 746
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->change_email_button:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$2;

    invoke-direct {v6, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    .line 745
    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 754
    const/4 v4, -0x3

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 755
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->resend_code_button:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$3;

    invoke-direct {v6, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$3;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    .line 754
    invoke-virtual {v1, v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 791
    :goto_0
    sget v4, Lcom/nuance/swype/input/R$id;->editText_activation_code:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 792
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;

    invoke-direct {v5, p0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$7;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 828
    new-instance v4, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;

    invoke-direct {v4, p0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$8;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 847
    return-object v1

    .line 764
    :cond_2
    sget v4, Lcom/nuance/swype/input/R$id;->change_email:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 765
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;

    invoke-direct {v5, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    sget v4, Lcom/nuance/swype/input/R$id;->resend_code:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 774
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$5;

    invoke-direct {v5, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$5;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    sget v4, Lcom/nuance/swype/input/R$id;->confirm_ok:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 782
    new-instance v5, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;

    invoke-direct {v5, p0, p1, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
