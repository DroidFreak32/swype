.class Lcom/nuance/swype/input/ThemeManager$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ThemeManager;->fetchThemeDetailsFromStore(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ThemeManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/ThemeManager;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$1;->this$0:Lcom/nuance/swype/input/ThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/nuance/swype/inapp/util/IabResult;)V
    .locals 5
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;

    .prologue
    const/4 v4, 0x1

    .line 448
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/measure/Usecases;->GET_PRICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch;->stop(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V

    .line 449
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    sget-object v0, Lcom/nuance/swype/measure/Usecases;->GET_PRICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mStartTime:J

    .line 450
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->access$000()V

    .line 453
    invoke-static {v4}, Lcom/nuance/swype/service/impl/AccountUtil;->setIsGoogleAccountSignedIn(Z)V

    .line 461
    :goto_0
    return-void

    .line 2040
    :cond_0
    iget-object v0, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    .line 455
    const-string/jumbo v1, "inapp_not_supported"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "fetchThemeDetailsFromStore failure."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method
