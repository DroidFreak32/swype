.class public Lcom/nuance/swype/input/KeyboardStyle;
.super Ljava/lang/Object;
.source "KeyboardStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    }
.end annotation


# static fields
.field private static drawableCache:Lcom/nuance/swype/input/DrawBufferManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private final res:Landroid/content/res/Resources;

.field private final styleables:[[I

.field private final styles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I

    .prologue
    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx:[I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->KeyboardEx:[I

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Key:[I

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/KeyboardStyle;-><init>(Landroid/content/Context;I[[I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I
    .param p3, "resStyleables"    # [[I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    .line 76
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    .line 78
    iput-object p3, p0, Lcom/nuance/swype/input/KeyboardStyle;->styleables:[[I

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->styleables:[[I

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 82
    .local v2, "attrIndexes":[I
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    .local v1, "attr":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->BASE:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v1, v2, v5}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Landroid/content/res/TypedArray;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "attr":Landroid/content/res/TypedArray;
    .end local v2    # "attrIndexes":[I
    :cond_0
    return-void
.end method

.method private clearLevel(Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V
    .locals 4
    .param p1, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    .line 374
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 375
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/TypedValue;

    .line 376
    .local v1, "values":[Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 374
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 380
    .end local v1    # "values":[Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method private getValue(I)Landroid/util/TypedValue;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 308
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method private getValue(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)Landroid/util/TypedValue;
    .locals 4
    .param p1, "index"    # I
    .param p2, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "result":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/TypedValue;

    .line 322
    .local v2, "values":[Landroid/util/TypedValue;
    if-eqz v2, :cond_1

    .line 324
    sget-object v3, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    if-ne p2, v3, :cond_0

    .line 326
    sget-object v3, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 327
    aget-object v1, v2, v0

    .line 328
    if-nez v1, :cond_1

    .line 329
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v3

    aget-object v1, v2, v3

    .line 336
    :cond_1
    return-object v1
.end method

.method private loadStyle(Landroid/content/res/TypedArray;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V
    .locals 6
    .param p1, "attr"    # Landroid/content/res/TypedArray;
    .param p2, "attrIndexes"    # [I
    .param p3, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    .line 347
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 349
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 351
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 352
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    aget v0, p2, v2

    .line 355
    .local v0, "attrIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/TypedValue;

    .line 359
    .local v4, "values":[Landroid/util/TypedValue;
    if-nez v4, :cond_0

    .line 360
    invoke-static {}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->values()[Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [Landroid/util/TypedValue;

    .line 361
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    :cond_0
    invoke-virtual {p3}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v5

    aput-object v3, v4, v5

    .line 368
    new-instance v3, Landroid/util/TypedValue;

    .end local v3    # "value":Landroid/util/TypedValue;
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 351
    .end local v0    # "attrIndex":I
    .end local v4    # "values":[Landroid/util/TypedValue;
    .restart local v3    # "value":Landroid/util/TypedValue;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_2
    return-void
.end method

.method public static recycleDrawable()V
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/DrawBufferManager;->evictAll()V

    .line 270
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardStyle;->clearLevel(Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 133
    return-void
.end method

.method public getBoolean(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 197
    .local v0, "value":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    .end local p2    # "defValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 291
    .local v0, "value":Landroid/util/TypedValue;
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v1

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method public getDefaultKeyStyleSetting([IIZ)Z
    .locals 1
    .param p1, "codes"    # [I
    .param p2, "attr"    # I
    .param p3, "fallback"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/IMEApplication;->getDefaultKeyStyleSetting([IIZ)Z

    move-result v0

    return v0
.end method

.method public getDimensionOrFraction(III)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 146
    .local v1, "value":Landroid/util/TypedValue;
    int-to-float v0, p3

    .line 148
    .local v0, "returnValue":F
    if-eqz v1, :cond_0

    .line 149
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 150
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 157
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 152
    :cond_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 153
    int-to-float v2, p2

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getDimensionPixelSize(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 168
    .local v0, "value":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 239
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "index"    # I
    .param p2, "useCache"    # Z

    .prologue
    .line 246
    sget-object v2, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    if-nez v2, :cond_0

    .line 247
    new-instance v2, Lcom/nuance/swype/input/DrawBufferManager;

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4}, Lcom/nuance/swype/input/DrawBufferManager;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 251
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_2

    .line 252
    const/4 v0, 0x0

    .line 264
    :cond_1
    :goto_0
    return-object v0

    .line 254
    :cond_2
    sget-object v2, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    if-nez v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_3
    sget-object v2, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/DrawBufferManager;->getObjectFromCache(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 258
    .local v0, "loadedDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 259
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_1

    .line 261
    sget-object v2, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/input/DrawBufferManager;->addObjectToCache(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 208
    .local v0, "value":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget p2, v0, Landroid/util/TypedValue;->data:I

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getResourceId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 217
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v0

    return v0
.end method

.method public getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)Landroid/util/TypedValue;

    move-result-object v0

    .line 228
    .local v0, "value":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 281
    .local v0, "value":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 181
    .local v0, "value":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2, v0}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadKey(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardStyle;->clearKey()V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->styleables:[[I

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 121
    .local v2, "attrIndexes":[I
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 123
    .local v1, "attr":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v1, v2, v5}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Landroid/content/res/TypedArray;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 124
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "attr":Landroid/content/res/TypedArray;
    .end local v2    # "attrIndexes":[I
    :cond_0
    return-void
.end method

.method public loadKeyboard(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "clearCurrent"    # Z

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 98
    sget-object v5, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/KeyboardStyle;->clearLevel(Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->styleables:[[I

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 103
    .local v2, "attrIndexes":[I
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 105
    .local v1, "attr":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v1, v2, v5}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Landroid/content/res/TypedArray;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 106
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "attr":Landroid/content/res/TypedArray;
    .end local v2    # "attrIndexes":[I
    :cond_1
    return-void
.end method
