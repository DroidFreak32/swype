.class Lcom/nuance/swype/input/settings/ThemesPrefs$7;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 349
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 351
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 352
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v0, :cond_0

    .line 353
    const-string v2, "Keyboard Height"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Portrait:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$100(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v4

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Landscape:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v4

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Portrait:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Landscape:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$100(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardScalePortrait(F)V

    .line 362
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardScaleLandscape(F)V

    .line 363
    return-void
.end method
