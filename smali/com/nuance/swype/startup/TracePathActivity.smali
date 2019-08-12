.class public Lcom/nuance/swype/startup/TracePathActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "TracePathActivity.java"


# instance fields
.field private continueButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/nuance/swype/startup/TracePathActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/TracePathActivity$1;-><init>(Lcom/nuance/swype/startup/TracePathActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/TracePathActivity;->continueButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nuance/swype/startup/TracePathActivity;->showSelectSwypeDialog()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_one_button_dtc:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_trace_path:I

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/TracePathActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    sget v0, Lcom/nuance/swype/input/R$id;->swype_label:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/TracePathActivity;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/TracePathActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->continue_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/startup/TracePathActivity;->continueButtonListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/TracePathActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    .line 22
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TracePath:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 65
    return-void
.end method
