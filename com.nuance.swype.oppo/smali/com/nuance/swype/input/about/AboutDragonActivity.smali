.class public Lcom/nuance/swype/input/about/AboutDragonActivity;
.super Landroid/app/Activity;
.source "AboutDragonActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-static {p0}, Lcom/nuance/swype/input/about/AboutBuilders;->buildAboutDragon(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/about/AboutDragonActivity;->setContentView(Landroid/view/View;)V

    .line 12
    return-void
.end method
