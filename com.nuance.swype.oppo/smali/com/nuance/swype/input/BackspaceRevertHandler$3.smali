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
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, "reverted"

    return-object v0
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onImplicitSelect(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 306
    const-string v0, "onPreSpace()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 307
    if-nez p1, :cond_0

    .line 308
    const-string v0, "onPreSpace(): candidates null"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreSpace(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1400(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 286
    const-string v0, "onSetSuggestions(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetSuggestions(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$300(Lcom/nuance/input/swypecorelib/Candidates;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 297
    const-string v0, "onSetSuggestions(): expected RECAPTURE_BY_TEXT_SELECTION before this!"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1200(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1300(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWordRecapture(): (reverting) last candidates default word: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->dlog(Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 279
    .local v0, "out":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$3;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$1100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 280
    return-object v0
.end method
