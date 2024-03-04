.class public Lcom/nuance/input/swypecorelib/Correction;
.super Lcom/nuance/input/swypecorelib/TextSpan;
.source "Correction.java"


# instance fields
.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "relativeOffset"    # I
    .param p2, "len"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/nuance/input/swypecorelib/TextSpan;-><init>(II)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/Correction;->suggestions:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public addSuggestion(Ljava/lang/String;)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Correction;->suggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public doesContain(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumSuggestions()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Correction;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestion(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Correction;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/Correction;->suggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSugg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/Correction;->getNumSuggestions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method
