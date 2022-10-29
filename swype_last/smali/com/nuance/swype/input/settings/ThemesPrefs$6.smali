.class Lcom/nuance/swype/input/settings/ThemesPrefs$6;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardModeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

.field final synthetic val$currentMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field final synthetic val$orientation:I

.field final synthetic val$validDockModes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Ljava/util/List;ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .registers 5
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$validDockModes:Ljava/util/List;

    iput p3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$orientation:I

    iput-object p4, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$currentMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$000(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$validDockModes:Ljava/util/List;

    .line 277
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$orientation:I

    .line 276
    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;I)V

    .line 279
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    # invokes: Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes()V
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$100(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 281
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 282
    # getter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$000(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 283
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_5d

    .line 284
    iget v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    const-string/jumbo v1, "Portrait keyboard"

    move-object v2, v1

    :goto_34
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$validDockModes:Ljava/util/List;

    .line 287
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 288
    # getter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$000(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 287
    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->val$currentMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$6;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 289
    # getter for: Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$000(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-interface {v0, v2, v1, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    :cond_5d
    return-void

    .line 284
    :cond_5e
    const-string/jumbo v1, "Landscape keyboard"

    move-object v2, v1

    goto :goto_34
.end method
