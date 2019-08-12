.class public Lcom/nuance/swype/input/about/AboutConnectActivity;
.super Landroid/app/Activity;
.source "AboutConnectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lcom/nuance/swype/input/about/AboutConnectActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/about/AboutConnectActivity$1;-><init>(Lcom/nuance/swype/input/about/AboutConnectActivity;)V

    invoke-static {p0, v0}, Lcom/nuance/swype/input/about/AboutBuilders;->buildAboutConnect(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/AboutConnectActivity;->setContentView(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method protected showTermsOfService()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/swype/input/about/TermsOfServiceConnect;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/AboutConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
