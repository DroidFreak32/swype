.class Lcom/nuance/swype/input/settings/HelpActivity$1;
.super Lcom/nuance/swype/input/settings/Help;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/HelpActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/HelpActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HelpActivity$1;->this$0:Lcom/nuance/swype/input/settings/HelpActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/Help;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HelpActivity$1;->this$0:Lcom/nuance/swype/input/settings/HelpActivity;

    sget v1, Lcom/nuance/swype/input/settings/Help;->HELP_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/HelpActivity;->addPreferencesFromResource(I)V

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HelpActivity$1;->this$0:Lcom/nuance/swype/input/settings/HelpActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HelpActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method
