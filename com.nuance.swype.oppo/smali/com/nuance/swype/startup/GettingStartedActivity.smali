.class public Lcom/nuance/swype/startup/GettingStartedActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "GettingStartedActivity.java"


# instance fields
.field private gesturesButtonListener:Landroid/view/View$OnClickListener;

.field private helpButtonListener:Landroid/view/View$OnClickListener;

.field private settingsButtonListener:Landroid/view/View$OnClickListener;

.field private startSwypingButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedActivity$1;-><init>(Lcom/nuance/swype/startup/GettingStartedActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->startSwypingButtonListener:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedActivity$2;-><init>(Lcom/nuance/swype/startup/GettingStartedActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->helpButtonListener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedActivity$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedActivity$3;-><init>(Lcom/nuance/swype/startup/GettingStartedActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->gesturesButtonListener:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lcom/nuance/swype/startup/GettingStartedActivity$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/GettingStartedActivity$4;-><init>(Lcom/nuance/swype/startup/GettingStartedActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->settingsButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_getting_started:I

    sget v1, Lcom/nuance/swype/input/R$string;->startup_header_1:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/GettingStartedActivity;->loadTemplateToContentView(II)V

    sget v0, Lcom/nuance/swype/input/R$id;->gs_help:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/GettingStartedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->helpButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->gs_gestures:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/GettingStartedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->gesturesButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->gs_start_swyping:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/GettingStartedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->startSwypingButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->gs_settings:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/GettingStartedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nuance/swype/startup/GettingStartedActivity;->settingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 25
    return-void
.end method
