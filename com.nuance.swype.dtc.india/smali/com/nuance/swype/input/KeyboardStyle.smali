.class public Lcom/nuance/swype/input/KeyboardStyle;
.super Ljava/lang/Object;
.source "KeyboardStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;,
        Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    }
.end annotation


# static fields
.field private static drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private final res:Landroid/content/res/Resources;

.field private final styles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;",
            ">;"
        }
    .end annotation
.end field

.field themeLoaderRef:Lcom/nuance/swype/plugin/ThemeLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "KeyboardStyle"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I

    .prologue
    .line 82
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

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleId"    # I
    .param p3, "styleables"    # [[I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    .line 96
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    .line 98
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->themeLoaderRef:Lcom/nuance/swype/plugin/ThemeLoader;

    .line 101
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v9, v0, :cond_0

    .line 102
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v3, p3, v9

    const/4 v4, 0x0

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "SwypeReference"

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 105
    .local v8, "attr":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    aget-object v0, p3, v9

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->BASE:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v8, v0, v1}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Lcom/nuance/swype/plugin/TypedArrayWrapper;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 106
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    .end local v8    # "attr":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    :cond_0
    return-void
.end method

.method private clearLevel(Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V
    .locals 4
    .param p1, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    .line 383
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 384
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    .line 385
    .local v1, "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 383
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 389
    .end local v1    # "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    :cond_1
    return-void
.end method

.method private getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 317
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    return-object v0
.end method

.method private getValue(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    .locals 4
    .param p1, "index"    # I
    .param p2, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    .line 331
    .local v2, "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v2, :cond_1

    .line 333
    sget-object v3, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    if-ne p2, v3, :cond_0

    .line 335
    sget-object v3, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 336
    aget-object v1, v2, v0

    .line 337
    if-nez v1, :cond_1

    .line 335
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v3

    aget-object v1, v2, v3

    .line 345
    :cond_1
    return-object v1
.end method

.method private loadStyle(Lcom/nuance/swype/plugin/TypedArrayWrapper;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V
    .locals 9
    .param p1, "attr"    # Lcom/nuance/swype/plugin/TypedArrayWrapper;
    .param p2, "attrIndexes"    # [I
    .param p3, "level"    # Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .prologue
    const/4 v6, 0x1

    .line 356
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1026
    .local v3, "rawvalue":Landroid/util/TypedValue;
    iget-object v5, p1, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 360
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1230
    iget-object v5, p1, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1231
    iget-object v5, p1, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/TypedValue;

    .line 1232
    if-eqz v5, :cond_2

    .line 1233
    invoke-virtual {v3, v5}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    move v5, v6

    .line 361
    :goto_1
    if-eqz v5, :cond_1

    .line 363
    aget v0, p2, v2

    .line 364
    .local v0, "attrIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    .line 368
    .local v4, "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-nez v4, :cond_0

    .line 369
    invoke-static {}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->values()[Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    .line 370
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardStyle;->styles:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    :cond_0
    invoke-virtual {p3}, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ordinal()I

    move-result v7

    new-instance v8, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    .line 1249
    iget-object v5, p1, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    if-eqz v5, :cond_3

    .line 1250
    iget-object v5, p1, Lcom/nuance/swype/plugin/TypedArrayWrapper;->tValsStyledByApk:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/TypedValue;

    .line 1251
    if-eqz v5, :cond_3

    move v5, v6

    .line 374
    :goto_2
    invoke-direct {v8, p0, v3, v5}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;-><init>(Lcom/nuance/swype/input/KeyboardStyle;Landroid/util/TypedValue;Z)V

    aput-object v8, v4, v7

    .line 377
    new-instance v3, Landroid/util/TypedValue;

    .end local v3    # "rawvalue":Landroid/util/TypedValue;
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 360
    .end local v0    # "attrIndex":I
    .end local v4    # "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    .restart local v3    # "rawvalue":Landroid/util/TypedValue;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v5, p1, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    goto :goto_1

    .line 1255
    .restart local v0    # "attrIndex":I
    .restart local v4    # "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 380
    .end local v0    # "attrIndex":I
    .end local v4    # "values":[Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    :cond_4
    return-void
.end method

.method public static recycleDrawable()V
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/DrawBufferManager;->evictAll()V

    .line 278
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/KeyboardStyle;->drawableCache:Lcom/nuance/swype/input/DrawBufferManager;

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public clearKey()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardStyle;->clearLevel(Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 154
    return-void
.end method

.method public getBoolean(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 218
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    iget v1, v1, Landroid/util/TypedValue;->data:I

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
    .line 298
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 299
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    iget v1, v1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 301
    :try_start_0
    iget-boolean v1, v0, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->bFromThemeApk:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedColorStateList(Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 307
    :goto_0
    return-object v1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    .line 302
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 307
    :cond_1
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
    .line 392
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/IMEApplication;->getDefaultKeyStyleSetting([IIZ)Z

    move-result v0

    return v0
.end method

.method public getDimensionOrFraction(III)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v1

    .line 167
    .local v1, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    int-to-float v0, p3

    .line 169
    .local v0, "returnValue":F
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 171
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 178
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 173
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    int-to-float v3, p2

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getDimensionPixelSize(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 189
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v1

    .line 261
    .local v1, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-nez v1, :cond_0

    .line 262
    const/4 v2, 0x0

    .line 271
    :goto_0
    return-object v2

    .line 264
    :cond_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    .line 265
    .local v0, "resId":I
    if-eqz v0, :cond_1

    .line 266
    sget-object v2, Lcom/nuance/swype/input/KeyboardStyle;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getting drawable for: "

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 270
    :goto_1
    iget-boolean v2, v1, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->bFromThemeApk:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedDrawable(Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 268
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/KeyboardStyle;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getting drawable for: "

    aput-object v4, v3, v5

    const-string/jumbo v4, "<res id is 0>"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardStyle;->res:Landroid/content/res/Resources;

    .line 271
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 229
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    iget p2, v1, Landroid/util/TypedValue;->data:I

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getResourceId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 238
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
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 249
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

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
    .line 287
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 288
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

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
    .line 201
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(I)Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;

    move-result-object v0

    .line 202
    .local v0, "value":Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardStyle$TypedValueWrapper;->getRawValue()Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 205
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadKey(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardStyle;->clearKey()V

    .line 144
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Key:[I

    const/4 v7, 0x0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 146
    .local v8, "attr":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    sget-object v0, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Key:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v8, v0, v1}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Lcom/nuance/swype/plugin/TypedArrayWrapper;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 147
    return-void
.end method

.method public loadKeyboard(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "clearCurrent"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 119
    if-eqz p2, :cond_0

    .line 120
    sget-object v0, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardStyle;->clearLevel(Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 123
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx:[I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 125
    .local v8, "attr":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    sget-object v0, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v8, v0, v1}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Lcom/nuance/swype/plugin/TypedArrayWrapper;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 126
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 127
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardStyle;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->KeyboardEx:[I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 129
    sget-object v0, Lcom/nuance/swype/input/R$styleable;->KeyboardEx:[I

    sget-object v1, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEYBOARD:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    invoke-direct {p0, v8, v0, v1}, Lcom/nuance/swype/input/KeyboardStyle;->loadStyle(Lcom/nuance/swype/plugin/TypedArrayWrapper;[ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)V

    .line 130
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 132
    return-void
.end method
