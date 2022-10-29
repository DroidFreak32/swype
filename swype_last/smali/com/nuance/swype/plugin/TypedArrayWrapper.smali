.class public final Lcom/nuance/swype/plugin/TypedArrayWrapper;
.super Ljava/lang/Object;
.source "TypedArrayWrapper.java"


# instance fields
.field public final delegateTypedArray:Landroid/content/res/TypedArray;

.field public tValsStyledByApk:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Landroid/util/SparseArray;)V
    .registers 3
    .param p1, "innerTypedArray"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/TypedValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "innerArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/TypedValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    .line 17
    iput-object p2, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    .line 18
    return-void
.end method


# virtual methods
.method public final getBoolean(IZ)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v1, :cond_16

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 72
    .local v0, "tVal":Landroid/util/TypedValue;
    if-eqz v0, :cond_16

    .line 73
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedBoolean(Landroid/util/TypedValue;)Z

    move-result v1

    .line 77
    .end local v0    # "tVal":Landroid/util/TypedValue;
    :goto_15
    return v1

    :cond_16
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    goto :goto_15
.end method

.method public final getColor(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v1, :cond_16

    .line 117
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 118
    .local v0, "tVal":Landroid/util/TypedValue;
    if-eqz v0, :cond_16

    .line 119
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedColor(Landroid/util/TypedValue;)I

    move-result v1

    .line 122
    .end local v0    # "tVal":Landroid/util/TypedValue;
    :goto_15
    return v1

    :cond_16
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    goto :goto_15
.end method

.method public final getDimension$255e742(I)F
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v1, :cond_16

    .line 143
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 144
    .local v0, "tVal":Landroid/util/TypedValue;
    if-eqz v0, :cond_16

    .line 145
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedDimension(Landroid/util/TypedValue;)F

    move-result v1

    .line 148
    .end local v0    # "tVal":Landroid/util/TypedValue;
    :goto_15
    return v1

    :cond_16
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_15
.end method

.method public final getDimensionPixelSize(II)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v1, :cond_1a

    .line 192
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 193
    .local v0, "tVal":Landroid/util/TypedValue;
    if-eqz v0, :cond_1a

    .line 194
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    .line 1585
    invoke-static {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedDimension(Landroid/util/TypedValue;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 197
    .end local v0    # "tVal":Landroid/util/TypedValue;
    :goto_19
    return v1

    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto :goto_19
.end method

.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v1, :cond_16

    .line 212
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 213
    .local v0, "tVal":Landroid/util/TypedValue;
    if-eqz v0, :cond_16

    .line 214
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 217
    .end local v0    # "tVal":Landroid/util/TypedValue;
    :goto_15
    return-object v1

    :cond_16
    iget-object v1, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_15
.end method

.method public final getFloat(IF)F
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public final getIndex(I)I
    .registers 3
    .param p1, "at"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public final getInt(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public final getResourceId(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public final hasValue(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v0, :cond_10

    .line 267
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 268
    if-eqz v0, :cond_10

    .line 269
    const/4 v0, 0x1

    .line 272
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    goto :goto_f
.end method

.method public final recycle()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    .line 280
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    .line 283
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
