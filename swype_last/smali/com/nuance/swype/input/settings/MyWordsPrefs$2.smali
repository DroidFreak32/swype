.class Lcom/nuance/swype/input/settings/MyWordsPrefs$2;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field accepted:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->accepted:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public accepted()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->accepted:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->accepted:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 177
    :cond_f
    return-void
.end method

.method public presentLegalRequirements(ZZLjava/lang/Runnable;)Z
    .registers 11
    .param p1, "tosRequired"    # Z
    .param p2, "optInRequired"    # Z
    .param p3, "accepted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 157
    iput-object p3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->accepted:Ljava/lang/Runnable;

    .line 158
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->getActiveDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 159
    .local v0, "activationDialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 160
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 161
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 162
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 163
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v2, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 168
    :cond_3b
    :goto_3b
    return v4

    .line 167
    :cond_3c
    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$2;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v3, 0x3

    # invokes: Lcom/nuance/swype/input/settings/MyWordsPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z
    invoke-static {v2, v3, p1, p2, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;IZZLandroid/os/Bundle;)Z

    goto :goto_3b
.end method
