.class Lcom/nuance/swype/input/settings/HelpFragment$1;
.super Lcom/nuance/swype/input/settings/Help;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/HelpFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/HelpFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/HelpFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/HelpFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HelpFragment$1;->this$0:Lcom/nuance/swype/input/settings/HelpFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/Help;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HelpFragment$1;->this$0:Lcom/nuance/swype/input/settings/HelpFragment;

    sget v1, Lcom/nuance/swype/input/settings/Help;->HELP_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/HelpFragment;->addPreferencesFromResource(I)V

    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HelpFragment$1;->this$0:Lcom/nuance/swype/input/settings/HelpFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HelpFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method
