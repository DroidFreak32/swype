.class Lcom/nuance/swype/input/IME$1;
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
    .line 470
    iput-object p1, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 473
    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->hasNewWordsScanning()Z

    move-result v0

    if-nez v0, :cond_32

    .line 474
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "running hibernation task."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    .line 477
    sget v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_HIBERNATE:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->setRunningState(I)V

    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    # invokes: Lcom/nuance/swype/input/IME;->checkPackageUpdate()V
    invoke-static {v0}, Lcom/nuance/swype/input/IME;->access$100(Lcom/nuance/swype/input/IME;)V

    .line 481
    :cond_32
    return-void
.end method
