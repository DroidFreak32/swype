.class public Lcom/nuance/swype/input/OOVWordHistory;
.super Ljava/lang/Object;
.source "OOVWordHistory.java"


# instance fields
.field log:Lcom/nuance/swype/util/LogManager$Log;

.field private final oovWords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/nuance/swype/input/OOVWordHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/OOVWordHistory;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/OOVWordHistory;->oovWords:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/OOVWordHistory;->oovWords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19
    return-void
.end method

.method public overrideDefault(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 7
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 33
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "cand":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/OOVWordHistory;->oovWords:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 35
    iget-object v1, p0, Lcom/nuance/swype/input/OOVWordHistory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "overrideDefault(): setting default to exact to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 39
    .end local v0    # "cand":Ljava/lang/String;
    :cond_38
    return-void
.end method
