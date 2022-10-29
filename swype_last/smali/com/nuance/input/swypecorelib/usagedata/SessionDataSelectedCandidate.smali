.class public Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;
.super Ljava/lang/Object;
.source "SessionDataSelectedCandidate.java"


# instance fields
.field public autoAccepted:Z

.field public candidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public defaultCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

.field public exactCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

.field public final selectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/WordCandidate;)V
    .registers 2
    .param p1, "selectedCandidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->selectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 15
    return-void
.end method


# virtual methods
.method public getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->candidatesSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    return-object v0
.end method

.method getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->defaultCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    return-object v0
.end method

.method public getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->exactCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    return-object v0
.end method

.method public getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->selectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    return-object v0
.end method

.method isAutoAccepted()Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->autoAccepted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x2c

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->isAutoAccepted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataSelectedCandidate;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
