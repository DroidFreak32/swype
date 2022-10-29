.class Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$5;
.super Ljava/lang/Object;
.source "SymbolInputController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$5;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 504
    # getter for: Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "run(): resetting show on start flag"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$5;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    # setter for: Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showOnStart:Z
    invoke-static {v0, v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$702(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;Z)Z

    .line 506
    return-void
.end method
