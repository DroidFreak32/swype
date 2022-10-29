.class public abstract Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
.super Lcom/nuance/swype/input/BackspaceRevertHandler$State;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BackspaceRevertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "RevertState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "base-state"

    return-object v0
.end method

.method public onBackToWordBegin()V
    .registers 2

    .prologue
    .line 139
    const-string/jumbo v0, "onBackToWordBegin()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .registers 7
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v2, 0x0

    .line 76
    if-nez p1, :cond_15

    .line 77
    const-string/jumbo v0, "onImplicitSelect(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 83
    :goto_14
    return v2

    .line 81
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onImplicitSelect(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_14
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 124
    const-string/jumbo v0, "onPreSpace()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 125
    if-nez p1, :cond_1a

    .line 126
    const-string/jumbo v0, "onPreSpace(): candidates null"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 131
    :goto_19
    return-void

    .line 130
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

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public onSendBackspace(I)Z
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSendBackspace(): count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 115
    if-nez p1, :cond_14

    .line 116
    const-string/jumbo v0, "onSetSuggestions(): bad candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    # getter for: Lcom/nuance/swype/input/BackspaceRevertHandler;->stateDefault:Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/BackspaceRevertHandler;->changeState(Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 121
    :goto_13
    return-void

    .line 120
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

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onWordRecapture(): word: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method
