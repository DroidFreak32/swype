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
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatNextPredictionCandidates(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 7
    .param p1, "wordCandidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 812
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 813
    invoke-virtual {p1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 814
    invoke-virtual {p1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 815
    move-object v1, p1

    .line 829
    .local v1, "newCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_0
    return-object v1

    .line 818
    .end local v1    # "newCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 819
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-virtual {p1, v4}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 820
    invoke-virtual {p1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 821
    invoke-virtual {p1, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 826
    new-instance v1, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;II)V

    .restart local v1    # "newCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    goto :goto_0
.end method


# virtual methods
.method public createCandidates(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
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
    .line 834
    .local p1, "wordCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p2, v1, :cond_0

    .line 835
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v0, p1, p2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 836
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput$DefaultCandidateFactory;->formatNextPredictionCandidates(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 838
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v1, p1, p2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_0
.end method
