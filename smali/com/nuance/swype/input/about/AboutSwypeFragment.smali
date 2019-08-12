.class public Lcom/nuance/swype/input/about/AboutSwypeFragment;
.super Lcom/nuance/swype/input/settings/ActionbarFragment;
.source "AboutSwypeFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutSwypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/about/AboutSwypeFragment$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/about/AboutSwypeFragment$1;-><init>(Lcom/nuance/swype/input/about/AboutSwypeFragment;)V

    invoke-static {v0, v1}, Lcom/nuance/swype/input/about/AboutBuilders;->buildAboutSwype(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected showOpenSourceAttribution(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/swype/input/about/OpenSourceAttribution;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
