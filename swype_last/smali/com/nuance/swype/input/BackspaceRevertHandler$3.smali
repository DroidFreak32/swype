.class Lcom/nuance/swype/input/BackspaceRevertHandler$3;
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
    .line 256
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    const-string/jumbo v0, "reverted"

    return-object v0
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 6
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onImplicitSelect(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 305
    const-string/jumbo v0, "onPreSpace()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 306
    if-nez p1, :cond_1a

    .line 307
    const-string/jumbo v0, "onPreSpace(): candidates null"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 313
    :goto_19
    return-void

    .line 311
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreSpace(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->onPreSpaceOverrideOrReverted(Lcom/nuance/input/swypecorelib/Candidates;)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_19
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 284
    if-nez p1, :cond_14

    .line 285
    const-string/jumbo v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 301
    :cond_13
    :goto_13
    return-void

    .line 289
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

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 296
    const-string/jumbo v0, "onSetSuggestions(): expected RECAPTURE_BY_TEXT_SELECTION before this!"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 297
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateOverride:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->doAutoCorrectOverride(Lcom/nuance/input/swypecorelib/Candidates;)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_13
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onWordRecapture(): (reverting) last candidates default word: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    .line 275
    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->candidates:Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 276
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->recaptureAcWordCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$800(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 278
    .local v0, "out":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateRecapSuggestionsPending:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$900(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 279
    return-object v0
.end method
