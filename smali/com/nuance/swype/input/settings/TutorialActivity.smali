.class public Lcom/nuance/swype/input/settings/TutorialActivity;
.super Landroid/app/Activity;
.source "TutorialActivity.java"


# instance fields
.field private tutorial:Lcom/nuance/swype/input/settings/Tutorial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getHelpUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v1, "help_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "helpUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->fullhelp_file:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    invoke-static {v0, p0}, Lcom/nuance/swype/util/LocalizationUtils;->getHtmlFileUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/nuance/swype/input/settings/Tutorial;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Tutorial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/TutorialActivity;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialActivity;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Tutorial;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/TutorialActivity;->setContentView(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialActivity;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/TutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/TutorialActivity;->getHelpUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/Tutorial;->load(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/TutorialActivity;->tutorial:Lcom/nuance/swype/input/settings/Tutorial;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/TutorialActivity;->getHelpUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/Tutorial;->load(Ljava/lang/String;)V

    .line 31
    return-void
.end method
