.class public abstract Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;
.super Lcom/nuance/swype/input/BackspaceRevertHandler$State;
.source "BackspaceRevertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/BackspaceRevertHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "RevertState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$State;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "base-state"

    return-object v0
.end method

.method public onBackToWordBegin()V
    .locals 1

    .prologue
    .line 141
    const-string v0, "onBackToWordBegin()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    const-string v0, "onImplicitSelect(): null candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 84
    :goto_0
    return v2

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onImplicitSelect(): cand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto :goto_0
.end method

.method public onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 126
    const-string v0, "onPreSpace()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "onPreSpace(): candidates null"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 133
    :goto_0
    return-void

    .line 132
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

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSendBackspace(I)Z
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSendBackspace(): count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string v0, "onSetSuggestions(): bad candidates"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$200(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 123
    :goto_0
    return-void

    .line 122
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

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWordRecapture(): word: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;->dlog(Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method
