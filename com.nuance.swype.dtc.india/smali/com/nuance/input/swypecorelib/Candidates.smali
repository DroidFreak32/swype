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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 107
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 108
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 109
    iget-object v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    iget-object v1, p1, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget v0, p1, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    .line 114
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

    .line 59
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

    .line 87
    :cond_7
    iget v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    if-lez v2, :cond_8

    .line 88
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p2, v2, :cond_8

    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/Candidates;->isAllUpperCaseFirstWord()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 89
    iput v4, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 92
    :cond_8
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

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 96
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 97
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSmartSelectionIndex:I

    .line 98
    iput p3, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    new-instance v3, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v4, v4, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
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
    .line 268
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
    .line 293
    new-instance v7, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v7, "candidateList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v8, 0x0

    .line 296
    .local v8, "fieldIndex":I
    array-length v13, p0

    const/4 v1, 0x0

    move v12, v1

    move v9, v8

    .end local v8    # "fieldIndex":I
    .local v9, "fieldIndex":I
    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v10, p0, v12

    .line 297
    .local v10, "word":Ljava/lang/String;
    const/4 v2, 0x0

    .line 298
    .local v2, "contextPredict":Ljava/lang/String;
    const-string/jumbo v1, "[\u001f]"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, "wordPieces":[Ljava/lang/String;
    array-length v1, v11

    const/4 v14, 0x1

    if-le v1, v14, :cond_0

    .line 300
    const/4 v1, 0x1

    aget-object v2, v11, v1

    .line 302
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    aget v3, p1, v9

    .line 303
    .local v3, "completionLength":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v9    # "fieldIndex":I
    aget v4, p1, v8

    .line 304
    .local v4, "attr":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "fieldIndex":I
    .restart local v8    # "fieldIndex":I
    aget v5, p1, v9

    .line 305
    .local v5, "id":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "fieldIndex":I
    .restart local v9    # "fieldIndex":I
    aget v6, p1, v8

    .line 306
    .local v6, "contextKillLen":I
    new-instance v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 307
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    .line 309
    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v2    # "contextPredict":Ljava/lang/String;
    .end local v3    # "completionLength":I
    .end local v4    # "attr":I
    .end local v5    # "id":I
    .end local v6    # "contextKillLen":I
    .end local v10    # "word":Ljava/lang/String;
    .end local v11    # "wordPieces":[Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method private isAllUpperCaseFirstWord()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v2, v3

    .line 326
    :goto_0
    return v2

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "word":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 321
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 322
    goto :goto_0

    .line 319
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static varargs match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 1
    .param p0, "cand"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p1, "states"    # [Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 129
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/Candidates;->match([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .line 229
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    const/4 v0, 0x1

    .line 233
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
    .line 237
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const/4 v0, 0x1

    .line 241
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
    .line 245
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 246
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
    .line 249
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    return-void
.end method

.method public addAttribute(I)V
    .locals 1
    .param p1, "attribute"    # I

    .prologue
    .line 276
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    .line 277
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 217
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
    .line 260
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 261
    const-string/jumbo v0, ""

    .line 263
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
    .line 161
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
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
    .line 169
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    return v0
.end method

.method public getDefaultCandidateString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 201
    const-string/jumbo v0, ""

    .line 203
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
    .line 193
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
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
    .line 165
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    return v0
.end method

.method public getExactCandidateString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 187
    const-string/jumbo v0, ""

    .line 189
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
    .line 173
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
    .line 272
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
    .line 177
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
    .line 117
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
    .line 284
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
    .line 288
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
    const/4 v1, 0x0

    .line 137
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 138
    .local v0, "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nuance/input/swypecorelib/Candidates$Source;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const/4 v1, 0x1

    .line 142
    .end local v0    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_0
    return v1

    .line 137
    .restart local v0    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public removeAttribute(I)V
    .locals 2
    .param p1, "attribute"    # I

    .prologue
    .line 280
    iget v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->attrs:I

    .line 281
    return-void
.end method

.method public setDefaultIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    .line 122
    return-void
.end method

.method public setExactIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    .line 126
    return-void
.end method

.method public setSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 0
    .param p1, "src"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 152
    return-void
.end method

.method public source()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 1

    .prologue
    .line 147
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
    .line 253
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 256
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
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mInlineIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mExactIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mDefaultIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mDefaultIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/Candidates;->mWordCandidates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
