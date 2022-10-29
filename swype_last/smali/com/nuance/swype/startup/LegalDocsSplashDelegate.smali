.class public Lcom/nuance/swype/startup/LegalDocsSplashDelegate;
.super Lcom/nuance/swype/startup/StartupDelegate;
.source "LegalDocsSplashDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupDelegate;-><init>()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/nuance/swype/startup/LegalDocsSplashDelegate;
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    new-instance v0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-direct {v0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;-><init>()V

    .line 19
    .local v0, "f":Lcom/nuance/swype/startup/LegalDocsSplashDelegate;
    invoke-virtual {v0, p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 27
    sget v5, Lcom/nuance/swype/input/R$layout;->startup_template_splash:I

    sget v7, Lcom/nuance/swype/input/R$layout;->startup_legaldocs_splash:I

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v5, v7, v8}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->loadTemplateToContentView(Landroid/view/LayoutInflater;IILjava/lang/String;)V

    .line 29
    iget-object v5, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->view:Landroid/view/View;

    sget v7, Lcom/nuance/swype/input/R$id;->accept_arrow:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 30
    .local v0, "acceptArrow":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->view:Landroid/view/View;

    sget v7, Lcom/nuance/swype/input/R$id;->docs_changed:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 31
    .local v2, "docsChanged":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->view:Landroid/view/View;

    sget v7, Lcom/nuance/swype/input/R$id;->docs_acceptance:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, "docsAcceptance":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->view:Landroid/view/View;

    sget v7, Lcom/nuance/swype/input/R$id;->doc_bullet_eula:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 33
    .local v3, "eulaLink":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->view:Landroid/view/View;

    sget v7, Lcom/nuance/swype/input/R$id;->doc_bullet_tos:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 35
    .local v4, "tosLink":Landroid/widget/TextView;
    new-instance v5, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$1;-><init>(Lcom/nuance/swype/startup/LegalDocsSplashDelegate;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    invoke-virtual {p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showEulaLink()Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-virtual {p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showTosLink()Z

    move-result v5

    if-eqz v5, :cond_9c

    :cond_4f
    const/4 v5, 0x1

    .line 51
    :goto_50
    if-eqz v5, :cond_92

    .line 52
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showChangedNotice()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 55
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_5e
    invoke-virtual {p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showEulaLink()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 59
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 62
    new-instance v5, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$2;

    invoke-direct {v5, p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$2;-><init>(Lcom/nuance/swype/startup/LegalDocsSplashDelegate;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_78
    invoke-virtual {p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->showTosLink()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 78
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 81
    new-instance v5, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$3;

    invoke-direct {v5, p0}, Lcom/nuance/swype/startup/LegalDocsSplashDelegate$3;-><init>(Lcom/nuance/swype/startup/LegalDocsSplashDelegate;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_92
    iget-object v5, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v5}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->showKeyboardOnFinish$1385ff()V

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    return-object v5

    :cond_9c
    move v5, v6

    .line 1113
    goto :goto_50
.end method

.method protected showChangedNotice()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 1552
    iget-object v0, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaChanged()Z

    move-result v0

    .line 117
    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 118
    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosChanged()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected showEulaLink()Z
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected showTosLink()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;->mStartupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
