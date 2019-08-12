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
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->hasNewWordsScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    .line 471
    sget v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_HIBERNATE:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->setRunningState(I)V

    .line 473
    iget-object v0, p0, Lcom/nuance/swype/input/IME$1;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IME;->access$100(Lcom/nuance/swype/input/IME;)V

    .line 475
    :cond_0
    return-void
.end method
