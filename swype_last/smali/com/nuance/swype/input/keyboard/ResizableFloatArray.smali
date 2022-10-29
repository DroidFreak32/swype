.class public Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
.super Ljava/lang/Object;
.source "ResizableFloatArray.java"


# instance fields
.field private array:[F

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->reset(I)V

    .line 14
    return-void
.end method

.method private reset(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 44
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    .line 46
    return-void
.end method

.method private resize(I)V
    .registers 6
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 38
    new-array v0, p1, [F

    .line 39
    .local v0, "temp":[F
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    iget v2, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    .line 41
    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 5
    .param p1, "x"    # F

    .prologue
    .line 17
    iget v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    array-length v1, v1

    if-ne v0, v1, :cond_f

    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->resize(I)V

    .line 20
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    iget v1, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    aput p1, v0, v1

    .line 21
    return-void
.end method

.method public add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V
    .registers 4
    .param p1, "array"    # Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    .prologue
    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p1, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    if-ge v0, v1, :cond_f

    .line 25
    iget-object v1, p1, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_f
    return-void
.end method

.method public getLast()F
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    iget v1, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRawArray()[F
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->array:[F

    iget v1, p0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method
