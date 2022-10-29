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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 3423
    iput-object p1, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3426
    iget-object v2, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3427
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->setWCLMessage(Z)V

    .line 3428
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    .line 3429
    iget-object v2, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    .line 3430
    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3431
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowStartup(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 3432
    :cond_2d
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->startScrapingServices()V

    .line 3435
    :cond_30
    iget-object v2, p0, Lcom/nuance/swype/input/IME$8;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 3436
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_3b

    .line 3437
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 3440
    :cond_3b
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isLowEndDeviceBuild()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3441
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->releaseInstances()V

    .line 3443
    :cond_44
    return-void
.end method
