.class Lcom/nuance/swype/input/BackspaceRevertHandler$5;
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
    .line 361
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    const-string/jumbo v0, "override"

    return-object v0
.end method

.method public onBackToWordBegin()V
    .registers 2

    .prologue
    .line 370
    const-string/jumbo v0, "onBackToWordBegin()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 9
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 380
    if-nez p1, :cond_17

    .line 381
    const-string/jumbo v2, "onImplicitSelect(): null candidates"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 382
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v3

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v2, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    move v0, v1

    .line 399
    :goto_16
    return v0

    .line 385
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onImplicitSelect(): cand: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "treatAsExplicit":Z
    new-array v2, v4, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->lastTapAutoSelectedWord(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    invoke-static {v2, p3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$300(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 388
    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "onImplicitSelect(): implicit select in override state (treat as explicit)"

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 390
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # setter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v1, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$402(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 391
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRevertable:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 394
    const/4 v0, 0x1

    goto :goto_16

    .line 396
    :cond_63
    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "onImplicitSelect(): wrong state for candidates"

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_16
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 425
    const-string/jumbo v0, "onPreSpace()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 426
    if-nez p1, :cond_1a

    .line 427
    const-string/jumbo v0, "onPreSpace(): candidates null"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 433
    :goto_19
    return-void

    .line 431
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreSpace(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->desc(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->onPreSpaceOverrideOrReverted(Lcom/nuance/input/swypecorelib/Candidates;)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_19
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 414
    if-nez p1, :cond_14

    .line 415
    const-string/jumbo v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 421
    :goto_13
    return-void

    .line 419
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

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->doAutoCorrectOverride(Lcom/nuance/input/swypecorelib/Candidates;)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_13
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onWordRecapture(): word: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 407
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->recaptureAcWordCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$800(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 409
    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method
