.class public Lcom/nuance/swype/input/about/AboutDragonFragment;
.super Lcom/nuance/swype/input/settings/ActionbarFragment;
.source "AboutDragonFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nuance/swype/input/about/AboutDragonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/about/AboutBuilders;->buildAboutDragon(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
