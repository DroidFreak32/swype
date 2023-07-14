.class Lcom/nuance/swype/input/BackspaceRevertHandler$1;
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
    .param p1, "this$0"    # Lcom/nuance/swype/input/BackspaceRevertHandler;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;-><init>(Lcom/nuance/swype/input/BackspaceRevertHandler;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string/jumbo v0, "default"

    return-object v0
.end method

.method public onEnter(Lcom/nuance/swype/input/BackspaceRevertHandler$State;)V
    .locals 2
    .param p1, "last"    # Lcom/nuance/swype/input/BackspaceRevertHandler$State;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$402(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 175
    return-void
.end method

.method public onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z
    .locals 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-nez p1, :cond_1

    .line 156
    const-string/jumbo v1, "onImplicitSelect(): null candidates"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->dlog(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$000(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onImplicitSelect(): cand: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->dlog(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v3

    .line 162
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v4

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 163
    .local v0, "isAutoCorrected":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onImplicitSelect(): auto corrected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; exact word: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->dlog(Ljava/lang/Object;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onImplicitSelect(): type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->dlog(Ljava/lang/Object;)V

    .line 165
    new-array v1, v1, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1, p3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$300(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v1, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$402(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 167
    iget-object v1, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/BackspaceRevertHandler$1;->this$0:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$500(Lcom/nuance/swype/input/BackspaceRevertHandler;)Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nuance/swype/input/BackspaceRevertHandler;->access$100(Lcom/nuance/swype/input/BackspaceRevertHandler;Lcom/nuance/swype/input/BackspaceRevertHandler$RevertState;)V

    goto/16 :goto_0

    .end local v0    # "isAutoCorrected":Z
    :cond_2
    move v0, v2

    .line 161
    goto :goto_1
.end method
