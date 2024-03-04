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
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "override"

    return-object v0
.end method

.method public onBackToWordBegin()V
    .locals 1

    .prologue
    .line 371
    const-string v0, "onBackToWordBegin()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v1, 0x0

    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string v2, "onImplicitSelect(): null candidates"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 383
    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    move v0, v1

    .line 400
    :goto_0
    return v0

    .line 386
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onImplicitSelect(): cand: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "treatAsExplicit":Z
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1, p3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$400(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    sget-object v1, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "onImplicitSelect(): implicit select in override state (treat as explicit)"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 391
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$502(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 392
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$600(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 395
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/BackspaceRevertHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "onImplicitSelect(): wrong state for candidates"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_0
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 426
    const-string v0, "onPreSpace()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 427
    if-nez p1, :cond_0

    .line 428
    const-string v0, "onPreSpace(): candidates null"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreSpace(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$300(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1400(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    const-string v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetSuggestions(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$300(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1300(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWordRecapture(): word: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->dlog(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$5;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
