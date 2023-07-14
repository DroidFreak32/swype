.class Lcom/nuance/swype/input/settings/SettingsV11$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "SettingsV11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsV11;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;
    .param p2, "arg0"    # Landroid/app/Activity;
    .param p3, "arg1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 222
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->access$200(Lcom/nuance/swype/input/settings/SettingsV11;)Lcom/nuance/swype/usagedata/UsageData$Screen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->access$200(Lcom/nuance/swype/input/settings/SettingsV11;)Lcom/nuance/swype/usagedata/UsageData$Screen;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->access$300(Lcom/nuance/swype/input/settings/SettingsV11;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    invoke-static {}, Lcom/nuance/swype/input/settings/SettingsV11;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "ActionBarDrawerToggle...onDrawerClosed...getActionBar().setTitle: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsV11;->access$300(Lcom/nuance/swype/input/settings/SettingsV11;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->invalidateOptionsMenu()V

    .line 233
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->getActiveScreen()Lcom/nuance/swype/usagedata/UsageData$Screen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->access$202(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/usagedata/UsageData$Screen;)Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 238
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->SETTINGS_DRAWER:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$1;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->invalidateOptionsMenu()V

    .line 240
    return-void
.end method
