.class public Lcom/nuance/swype/input/keyboard/ResizableIntArray;
.super Ljava/lang/Object;
.source "ResizableIntArray.java"


# instance fields
.field private array:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->reset(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 17
    iget v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->resize(I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    iget v1, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    aput p1, v0, v1

    .line 21
    return-void
.end method

.method public add(Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V
    .locals 2
    .param p1, "array"    # Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    .prologue
    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    if-ge v0, v1, :cond_0

    .line 25
    iget-object v1, p1, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(I)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public getLast()I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    iget v1, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRawArray()[I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    iget v1, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method reset(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 44
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    .line 46
    return-void
.end method

.method resize(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 38
    new-array v0, p1, [I

    .line 39
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    iget v2, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->array:[I

    .line 41
    return-void
.end method
