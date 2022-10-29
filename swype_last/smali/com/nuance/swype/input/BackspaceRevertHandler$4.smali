.class Lcom/nuance/swype/input/BackspaceRevertHandler$4;
.super Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BackspaceRevertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    const-string/jumbo v0, "recap-suggetions-pending"

    return-object v0
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 6
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onImplicitSelect(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->dlog(Ljava/lang/Object;)V

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 339
    if-nez p1, :cond_14

    .line 340
    const-string/jumbo v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->dlog(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 355
    :goto_13
    return-void

    .line 344
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSetSuggestions(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->dlog(Ljava/lang/Object;)V

    .line 345
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_13

    .line 353
    :cond_45
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$4;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_13
.end method
