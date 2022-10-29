.class public final Lcom/fasterxml/jackson/core/sym/NameN;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "NameN.java"


# instance fields
.field final mQuadLen:I

.field final mQuads:[I


# direct methods
.method constructor <init>(Ljava/lang/String;I[II)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "quads"    # [I
    .param p4, "quadLen"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 19
    const/4 v0, 0x3

    if-ge p4, v0, :cond_f

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Qlen must >= 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_f
    iput-object p3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuads:[I

    .line 23
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuadLen:I

    .line 24
    return-void
.end method


# virtual methods
.method public final equals(I)Z
    .registers 3
    .param p1, "quad"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(II)Z
    .registers 4
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final equals([II)Z
    .registers 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuadLen:I

    if-eq p2, v2, :cond_6

    .line 66
    :cond_5
    :goto_5
    return v1

    .line 61
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, p2, :cond_14

    .line 62
    aget v2, p1, v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->mQuads:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_5

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 66
    :cond_14
    const/4 v1, 0x1

    goto :goto_5
.end method
