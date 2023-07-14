.class Lcom/nuance/swype/input/settings/ChinesePrefs$3;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->rebuildSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 241
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 242
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v4

    if-nez v4, :cond_1

    .line 245
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v4, v3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$002(Lcom/nuance/swype/input/settings/ChinesePrefs;Z)Z

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showNetworkNotificationDialog()V

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, "requestData":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v4, v3, v3, v3, v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefs;IZZLandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 257
    invoke-static {v4, v3, v3, v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$200(Lcom/nuance/swype/input/settings/ChinesePrefs;IZLandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showCloudNetworkOpt()V

    move v2, v3

    .line 263
    goto :goto_0
.end method
