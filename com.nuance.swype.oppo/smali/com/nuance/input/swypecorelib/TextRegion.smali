.class public Lcom/nuance/input/swypecorelib/TextRegion;
.super Lcom/nuance/input/swypecorelib/TextSpan;
.source "TextRegion.java"


# instance fields
.field private corrections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/Correction;",
            ">;"
        }
    .end annotation
.end field

.field private hasTerminator:Z

.field private hash:I

.field private rendered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "hasTerminator"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p2, p3}, Lcom/nuance/input/swypecorelib/TextSpan;-><init>(II)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    .line 55
    invoke-direct {p0, p1}, Lcom/nuance/input/swypecorelib/TextRegion;->calcHash(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hash:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->rendered:Z

    .line 57
    iput-boolean p4, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hasTerminator:Z

    .line 58
    return-void
.end method

.method private calcHash(Ljava/lang/String;)I
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static hasSameString(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;)Z
    .locals 2
    .param p0, "region1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p1, "region2"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    .line 71
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hash:I

    iget v1, p1, Lcom/nuance/input/swypecorelib/TextRegion;->hash:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCorrection(Lcom/nuance/input/swypecorelib/Correction;)V
    .locals 1
    .param p1, "corr"    # Lcom/nuance/input/swypecorelib/Correction;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public applyCorrection(Lcom/nuance/input/swypecorelib/Correction;ILjava/lang/String;)V
    .locals 5
    .param p1, "currCorrection"    # Lcom/nuance/input/swypecorelib/Correction;
    .param p2, "newCorrLen"    # I
    .param p3, "newVal"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v3

    sub-int v2, p2, v3

    .line 140
    .local v2, "sizeChange":I
    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {p0, v2}, Lcom/nuance/input/swypecorelib/TextRegion;->grow(I)V

    .line 147
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/Correction;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Correction;

    .line 150
    .local v0, "correction":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 151
    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/Correction;->move(I)V

    goto :goto_0

    .line 157
    .end local v0    # "correction":Lcom/nuance/input/swypecorelib/Correction;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/Correction;>;"
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0, p3}, Lcom/nuance/input/swypecorelib/TextRegion;->calcHash(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hash:I

    .line 161
    return-void
.end method

.method public clearCorrections()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    return-void
.end method

.method public extractString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    add-int v0, v1, v2

    .line 84
    .local v0, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public findCorrections(II)Ljava/util/List;
    .locals 6
    .param p1, "start"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/Correction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getCorrectionCount()I

    move-result v2

    .line 241
    .local v2, "corrCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "corr":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    const/4 v3, 0x0

    .local v3, "index1":I
    :goto_0
    if-eq v3, v2, :cond_1

    .line 243
    invoke-virtual {p0, v3}, Lcom/nuance/input/swypecorelib/TextRegion;->getCorrection(I)Lcom/nuance/input/swypecorelib/Correction;

    move-result-object v0

    .line 244
    .local v0, "c":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v4

    if-lt v4, p1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v4

    add-int v5, p1, p2

    if-ge v4, v5, :cond_1

    .line 248
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "c":Lcom/nuance/input/swypecorelib/Correction;
    :cond_1
    return-object v1
.end method

.method public getCorrection(I)Lcom/nuance/input/swypecorelib/Correction;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Correction;

    goto :goto_0
.end method

.method public getCorrectionCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCorrectionFromPosition(I)Lcom/nuance/input/swypecorelib/Correction;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v3

    sub-int v2, p1, v3

    .line 217
    .local v2, "relativePos":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 218
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/Correction;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Correction;

    .line 220
    .local v0, "correction":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/Correction;->doesContain(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    .end local v0    # "correction":Lcom/nuance/input/swypecorelib/Correction;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTerminator()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hasTerminator:Z

    return v0
.end method

.method public isRendered()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->rendered:Z

    return v0
.end method

.method public markRendered()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/TextRegion;->rendered:Z

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v3, "res":Ljava/lang/StringBuilder;
    const-string v4, "Offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v4, ", Length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v4, ", Hash= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget v4, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hash:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v4, ", State= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-boolean v4, p0, Lcom/nuance/input/swypecorelib/TextRegion;->rendered:Z

    if-eqz v4, :cond_0

    const-string v4, "rendered"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v4, ", Terminated= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-boolean v4, p0, Lcom/nuance/input/swypecorelib/TextRegion;->hasTerminator:Z

    if-eqz v4, :cond_1

    const-string v4, "T"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, ",Corrections = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/TextRegion;->corrections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 271
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/Correction;>;"
    const/4 v1, 0x1

    .line 272
    .local v1, "first":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Correction;

    .line 274
    .local v0, "correction":Lcom/nuance/input/swypecorelib/Correction;
    if-eqz v1, :cond_2

    .line 275
    const/4 v1, 0x0

    .line 279
    :goto_3
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Correction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 266
    .end local v0    # "correction":Lcom/nuance/input/swypecorelib/Correction;
    .end local v1    # "first":Z
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/Correction;>;"
    :cond_0
    const-string v4, "unrendered"

    goto :goto_0

    .line 268
    :cond_1
    const-string v4, "F"

    goto :goto_1

    .line 277
    .restart local v0    # "correction":Lcom/nuance/input/swypecorelib/Correction;
    .restart local v1    # "first":Z
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/input/swypecorelib/Correction;>;"
    :cond_2
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 281
    .end local v0    # "correction":Lcom/nuance/input/swypecorelib/Correction;
    :cond_3
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
