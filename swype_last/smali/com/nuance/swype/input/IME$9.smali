.class Lcom/nuance/swype/input/IME$9;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->connectLearnContextBuffer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;

.field final synthetic val$contextBuffer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 3447
    iput-object p1, p0, Lcom/nuance/swype/input/IME$9;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$9;->val$contextBuffer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3450
    const/4 v0, 0x0

    .line 3451
    .local v0, "enterKeySelected":Z
    iget-object v1, p0, Lcom/nuance/swype/input/IME$9;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;
    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/nuance/swype/input/IME$9;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;
    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v1

    instance-of v1, v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v1, :cond_1f

    .line 3452
    iget-object v1, p0, Lcom/nuance/swype/input/IME$9;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->mEditState:Lcom/nuance/swype/input/EditState;
    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$800(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/EditState;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-virtual {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->isEnterSent()Z

    move-result v0

    .line 3454
    :cond_1f
    iget-object v1, p0, Lcom/nuance/swype/input/IME$9;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/IME$9;->val$contextBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/Connect;->learnContextBuffer(Ljava/lang/String;Z)V

    .line 3455
    return-void
.end method
