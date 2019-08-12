.class public Lcom/nuance/swype/input/about/TermsOfServiceConnect;
.super Landroid/app/Activity;
.source "TermsOfServiceConnect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcom/nuance/swype/input/R$layout;->terms_of_service_connect:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/TermsOfServiceConnect;->setContentView(I)V

    .line 18
    sget v0, Lcom/nuance/swype/input/R$string;->pref_connect_title:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/TermsOfServiceConnect;->setTitle(I)V

    .line 20
    sget v0, Lcom/nuance/swype/input/R$id;->tos_connect:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/TermsOfServiceConnect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21
    sget v1, Lcom/nuance/swype/input/R$string;->eula_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    sget v0, Lcom/nuance/swype/input/R$id;->ok_button:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/TermsOfServiceConnect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    new-instance v1, Lcom/nuance/swype/input/about/TermsOfServiceConnect$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/about/TermsOfServiceConnect$1;-><init>(Lcom/nuance/swype/input/about/TermsOfServiceConnect;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
