.class public final enum Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
.super Ljava/lang/Enum;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardDockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field public static final enum DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field public static final enum DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field public static final enum DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field public static final enum DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field public static final enum MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;


# instance fields
.field private final flagValue:I

.field private final levelValue:I

.field private final nameResId:I

.field private scaleLandscape:F

.field private scalePortrait:F

.field private final scaleResId:I

.field private scaleText:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 199
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const-string v1, "DOCK_FULL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/nuance/swype/input/R$string;->kb_layout_fullscreen:I

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 200
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const-string v1, "DOCK_LEFT"

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x3

    sget v5, Lcom/nuance/swype/input/R$fraction;->dock_side_keyboard_scale:I

    sget v6, Lcom/nuance/swype/input/R$string;->kb_mini_left:I

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 201
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const-string v1, "DOCK_RIGHT"

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x4

    sget v5, Lcom/nuance/swype/input/R$fraction;->dock_side_keyboard_scale:I

    sget v6, Lcom/nuance/swype/input/R$string;->kb_mini_right:I

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 202
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const-string v1, "MOVABLE_MINI"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    sget v5, Lcom/nuance/swype/input/R$fraction;->mini_keyboard_scale:I

    sget v6, Lcom/nuance/swype/input/R$string;->kb_layout_movable:I

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 203
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const-string v1, "DOCK_SPLIT"

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget v5, Lcom/nuance/swype/input/R$array;->split_keyboard_scale:I

    sget v6, Lcom/nuance/swype/input/R$string;->kb_layout_split:I

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 196
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 1
    .param p3, "flagValue"    # I
    .param p4, "levelValue"    # I
    .param p5, "scaleResId"    # I
    .param p6, "nameResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->flagValue:I

    .line 215
    iput p4, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->levelValue:I

    .line 217
    iput p5, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleResId:I

    .line 218
    if-nez p5, :cond_0

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleLandscape:F

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scalePortrait:F

    .line 222
    :cond_0
    iput p6, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->nameResId:I

    .line 223
    return-void
.end method

.method public static from(I)Ljava/util/EnumSet;
    .locals 6
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    const-class v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 345
    .local v4, "settings":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 346
    .local v3, "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->flagValue:I

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 347
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v3    # "setting":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_1
    return-object v4
.end method

.method public static fromInt(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 354
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 355
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    aget-object v0, v0, p0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_0
.end method

.method private getScaleForOrientation(Landroid/content/res/Resources;I)F
    .locals 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "orientation"    # I

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 294
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 295
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 296
    .local v7, "originalConfig":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 297
    .local v2, "currentOrientation":I
    iput p2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 300
    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 302
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 303
    .local v9, "value":Landroid/util/TypedValue;
    const/high16 v8, 0x3f800000    # 1.0f

    .line 307
    .local v8, "scale":F
    const-string v10, "array"

    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleResId:I

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 308
    iget v10, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleResId:I

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 310
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    iget v10, v9, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    .line 317
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    .line 338
    :cond_0
    :goto_1
    invoke-virtual {p1, v7, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 340
    return v8

    .line 312
    :cond_1
    iget v10, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleResId:I

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v9, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    .line 319
    :cond_2
    iget v10, v9, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 322
    invoke-virtual {v9, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    .line 323
    .local v3, "dimen":F
    if-ne p2, v2, :cond_4

    .line 324
    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    div-float v8, v3, v10

    .line 330
    :goto_2
    sget v10, Lcom/nuance/swype/input/R$fraction;->default_key_width:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    .line 331
    .local v5, "keyWidth":F
    const/high16 v10, 0x3f800000    # 1.0f

    sget-object v11, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p0, v11, :cond_3

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v5, v11

    .end local v5    # "keyWidth":F
    :cond_3
    sub-float v6, v10, v5

    .line 332
    .local v6, "minScale":F
    cmpl-float v10, v8, v6

    if-lez v10, :cond_0

    .line 333
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    .line 326
    .end local v6    # "minScale":F
    :cond_4
    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    div-float v8, v3, v10

    goto :goto_2
.end method

.method private initScales(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    .line 281
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scalePortrait:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScaleForOrientation(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scalePortrait:F

    .line 284
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScaleForOrientation(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleLandscape:F

    .line 285
    sget v0, Lcom/nuance/swype/input/R$fraction;->text_scale:I

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleText:F

    .line 287
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    const-class v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->$VALUES:[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-object v0
.end method


# virtual methods
.method public final getIconLevel(Ljava/util/EnumSet;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "invalidModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "getIconLevel...invalidModes: "

    invoke-virtual {v4, v5, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    move-object v1, p0

    .line 232
    .local v1, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    array-length v2, v4

    .line 233
    .local v2, "modeCount":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 234
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v2

    aget-object v3, v4, v5

    .line 235
    .local v3, "nextDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    :cond_0
    move-object v1, v3

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v3    # "nextDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_1
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "getIconLevel...dockMode: "

    const-string v6, "...dockMode.levelValue: "

    iget v7, v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->levelValue:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    iget v4, v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->levelValue:I

    return v4
.end method

.method public final getKeyboardWidth(Landroid/content/res/Resources;)I
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->initScales(Landroid/content/res/Resources;)V

    .line 254
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 257
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p0, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 258
    .local v1, "scale":F
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2

    .line 257
    .end local v1    # "scale":F
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScale(Landroid/content/res/Resources;)F

    move-result v1

    goto :goto_0
.end method

.method public final getName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 226
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->nameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScale(Landroid/content/res/Resources;)F
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->initScales(Landroid/content/res/Resources;)V

    .line 263
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scalePortrait:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleLandscape:F

    goto :goto_0
.end method

.method public final getTextSize(Landroid/content/res/Resources;I)I
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    .line 246
    .local v0, "scale":F
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScale(Landroid/content/res/Resources;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 247
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleText:F

    .line 249
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public final isEnabled(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->initScales(Landroid/content/res/Resources;)V

    .line 269
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p0, v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    if-ne p2, v0, :cond_2

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scalePortrait:F

    .line 275
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_2
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->scaleLandscape:F

    goto :goto_1
.end method
