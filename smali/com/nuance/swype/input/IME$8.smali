.class Lcom/nuance/swype/input/IME$8;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0

    .prologue
    .line 3175
    iput-object p1, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3178
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 3179
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 3180
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v5

    .line 3181
    invoke-virtual {v5}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3182
    :cond_0
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->startScrapingServices()V

    .line 3185
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 3186
    .local v3, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v3, :cond_2

    .line 3187
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 3190
    :cond_2
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isLowEndDeviceBuild()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3191
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->releaseInstances()V

    .line 3194
    :cond_3
    const/4 v4, 0x0

    .line 3195
    .local v4, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3196
    .local v1, "enterKeySelected":Z
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v5

    instance-of v5, v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v5, :cond_4

    .line 3197
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-virtual {v5}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->getHideWindowInput()Ljava/lang/String;

    move-result-object v4

    .line 3198
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-virtual {v5}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->isEnterSent()Z

    move-result v1

    .line 3200
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/nuance/swype/connect/Connect;->onFinishInput(Ljava/lang/String;Z)V

    .line 3201
    return-void
.end method
