.class public Lcom/nuance/input/swypecorelib/Candidates;
.super Ljava/lang/Object;
.source "Candidates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/Candidates$Source;
    }
.end annotation


# static fields
.field public static final ATTR_FILL_SCREEN:I = 0x1

.field public static final ATTR_JOIN_CANDIDATES:I = 0x2


# instance fields
.field private attrs:I

.field public mDefaultIndex:I

.field public mExactIndex:I

.field public mSmartSelectionIndex:I

.field private mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field private mWordCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 2
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 37
    iput v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 39
    iput v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 101
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 102
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 103
    iget-object v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget-object v1, p1, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 5
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_4

    .end local p1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    :goto_0
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 55
    iput v3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 56
    iput v3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 57
    iput v3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 60
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 62
    .local v1, "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isExact()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 70
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isSmartSuggestion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 74
    :cond_2
    iget v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    if-ne v2, v3, :cond_5

    .line 75
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "i":I
    .end local v1    # "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    .restart local p1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 79
    .restart local v0    # "i":I
    :cond_5
    iget v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    if-ne v2, v3, :cond_6

    .line 80
    iput v4, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 83
    :cond_6
    iget v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    if-ne v2, v3, :cond_7

    .line 84
    iput v4, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 86
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;I)V
    .locals 5
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p3, "defaultIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 90
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 91
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 92
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    new-instance v3, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v4, v4, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;II)V
    .locals 1
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p3, "defaultIndex"    # I
    .param p4, "exactIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 46
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 48
    iput p4, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
    .param p1, "defaultWordIndex"    # I
    .param p2, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")",
            "Lcom/nuance/input/swypecorelib/Candidates;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Ljava/util/List;Lcom/nuance/input/swypecorelib/Candidates$Source;I)V

    return-object v0
.end method

.method public static createCandidates([Ljava/lang/String;[I)Ljava/util/List;
    .locals 15
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "packedFields"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v7, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .local v7, "candidateList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v8, 0x0

    .line 293
    .local v8, "fieldIndex":I
    move-object v6, p0

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, p0

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v9, v8

    .end local v8    # "fieldIndex":I
    .local v9, "fieldIndex":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v12, v6, v10

    .line 294
    .local v12, "word":Ljava/lang/String;
    const/4 v2, 0x0

    .line 295
    .local v2, "contextPredict":Ljava/lang/String;
    const-string v1, "[\u001f]"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, "wordPieces":[Ljava/lang/String;
    array-length v1, v13

    const/4 v14, 0x1

    if-le v1, v14, :cond_0

    .line 297
    const/4 v1, 0x1

    aget-object v2, v13, v1

    .line 299
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    aget v3, p1, v9

    .line 300
    .local v3, "completionLength":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v9    # "fieldIndex":I
    aget v4, p1, v8

    .line 301
    .local v4, "attr":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    aget v5, p1, v9

    .line 302
    .local v5, "id":I
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 303
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8    # "fieldIndex":I
    .restart local v9    # "fieldIndex":I
    goto :goto_0

    .line 305
    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v2    # "contextPredict":Ljava/lang/String;
    .end local v3    # "completionLength":I
    .end local v4    # "attr":I
    .end local v5    # "id":I
    .end local v12    # "word":Ljava/lang/String;
    .end local v13    # "wordPieces":[Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public static varargs match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 1
    .param p0, "cand"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p1, "states"    # [Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/Candidates;->match([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 1
    .param p1, "location"    # I
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(ILjava/util/List;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 243
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-void
.end method

.method public addAttribute(I)V
    .locals 1
    .param p1, "attribute"    # I

    .prologue
    .line 273
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    .line 274
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    goto :goto_0
.end method

.method public getCandidateString(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 258
    const-string v0, ""

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    goto :goto_0
.end method

.method public getDefaultCandidateIndex()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    return v0
.end method

.method public getDefaultCandidateString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 198
    const-string v0, ""

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    goto :goto_0
.end method

.method public getExactCandidateIndex()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    return v0
.end method

.method public getExactCandidateString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 184
    const-string v0, ""

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSmartSelectionIndex()I
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->hasSmartSelectionIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    goto :goto_0
.end method

.method public hasAttribute(I)Z
    .locals 1
    .param p1, "attribute"    # I

    .prologue
    .line 269
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmartSelectionIndex()Z
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExactADictionaryWord()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->isExactADictionaryWord()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDBEditing()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs match([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 5
    .param p1, "types"    # [Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 134
    move-object v0, p1

    .local v0, "arr$":[Lcom/nuance/input/swypecorelib/Candidates$Source;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 135
    .local v3, "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/input/swypecorelib/Candidates$Source;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const/4 v4, 0x1

    .line 139
    .end local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :goto_1
    return v4

    .line 134
    .restart local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public remove(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public removeAttribute(I)V
    .locals 2
    .param p1, "attribute"    # I

    .prologue
    .line 277
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    .line 278
    return-void
.end method

.method public setDefaultIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 116
    return-void
.end method

.method public setExactIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 120
    return-void
.end method

.method public setSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 0
    .param p1, "src"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 149
    return-void
.end method

.method public source()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    return-object v0
.end method

.method public sublist(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mInlineIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
