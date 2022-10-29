.class Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "SettingsV11.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SettingsV11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .registers 2

    .prologue
    .line 855
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/input/settings/SettingsV11$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;
    .param p2, "x1"    # Lcom/nuance/swype/input/settings/SettingsV11$1;

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 859
    # getter for: Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/SettingsV11;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onItemClick, position: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 861
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    # setter for: Lcom/nuance/swype/input/settings/SettingsV11;->mPreviousScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;
    invoke-static {v1, v5}, Lcom/nuance/swype/input/settings/SettingsV11;->access$202(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/usagedata/UsageData$Screen;)Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 863
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/DrawerItem;

    .line 864
    .local v0, "item":Lcom/nuance/swype/widget/DrawerItem;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    add-int/lit8 v3, p3, -0x1

    # invokes: Lcom/nuance/swype/input/settings/SettingsV11;->drawerIndexToArrayIndex(I)I
    invoke-static {v2, v3}, Lcom/nuance/swype/input/settings/SettingsV11;->access$700(Lcom/nuance/swype/input/settings/SettingsV11;I)I

    move-result v2

    # invokes: Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V
    invoke-static {v1, v0, v2, v5}, Lcom/nuance/swype/input/settings/SettingsV11;->access$800(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 865
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v2

    # setter for: Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z
    invoke-static {v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->access$902(Lcom/nuance/swype/input/settings/SettingsV11;Z)Z

    .line 866
    return-void
.end method
