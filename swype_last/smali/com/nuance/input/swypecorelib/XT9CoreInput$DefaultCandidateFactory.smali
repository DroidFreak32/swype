.class public Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;
.super Ljava/lang/Object;
.source "XT9CoreInput.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/XT9CoreInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultCandidateFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatNextPredictionCandidates(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 9
    .param p1, "wordCandidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 920
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-ge v2, v6, :cond_12

    .line 921
    invoke-virtual {p1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 922
    invoke-virtual {p1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 923
    move-object v1, p1

    .line 937
    .local v1, "newCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_11
    return-object v1

    .line 926
    .end local v1    # "newCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 927
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-virtual {p1, v4}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 928
    invoke-virtual {p1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 929
    invoke-virtual {p1, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 934
    new-instance v1, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;II)V

    .restart local v1    # "newCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    goto :goto_11
.end method


# virtual methods
.method public createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 5
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")",
            "Lcom/nuance/input/swypecorelib/Candidates;"
        }
    .end annotation

    .prologue
    .line 942
    .local p1, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p2, v1, :cond_e

    .line 943
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v0, p1, p2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 944
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;->formatNextPredictionCandidates(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 946
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_d
    return-object v1

    :cond_e
    new-instance v1, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v1, p1, p2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_d
.end method
