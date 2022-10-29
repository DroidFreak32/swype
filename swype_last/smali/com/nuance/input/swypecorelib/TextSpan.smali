.class public Lcom/nuance/input/swypecorelib/TextSpan;
.super Ljava/lang/Object;
.source "TextSpan.java"


# instance fields
.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    .line 31
    iput p2, p0, Lcom/nuance/input/swypecorelib/TextSpan;->length:I

    .line 33
    return-void
.end method


# virtual methods
.method public doesContain(I)Z
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    iget v1, p0, Lcom/nuance/input/swypecorelib/TextSpan;->length:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getEnd()I
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    iget v1, p0, Lcom/nuance/input/swypecorelib/TextSpan;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->length:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    return v0
.end method

.method public grow(I)V
    .registers 3
    .param p1, "amountToGrowOrShrink"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->length:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->length:I

    .line 90
    return-void
.end method

.method public move(I)V
    .registers 3
    .param p1, "distanceToMove"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    add-int/2addr v0, p1

    if-gez v0, :cond_6

    .line 79
    :goto_5
    return-void

    .line 78
    :cond_6
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nuance/input/swypecorelib/TextSpan;->offset:I

    goto :goto_5
.end method
