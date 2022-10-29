.class public Lcom/nuance/android/compat/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field public static final FLAG_VALUE_LAYER_TYPE_HARDWARE:Ljava/lang/Integer;

.field public static final FLAG_VALUE_LAYER_TYPE_NONE:Ljava/lang/Integer;

.field public static final FLAG_VALUE_LAYER_TYPE_SOFTWARE:Ljava/lang/Integer;

.field private static final View_getLayerType:Ljava/lang/reflect/Method;

.field public static final View_isHardwareAccelerated:Ljava/lang/reflect/Method;

.field private static final View_setBackground:Ljava/lang/reflect/Method;

.field private static final View_setBackgroundDrawable:Ljava/lang/reflect/Method;

.field private static final View_setLayerPaint:Ljava/lang/reflect/Method;

.field private static final View_setLayerType:Ljava/lang/reflect/Method;

.field private static final View_setScrollX:Ljava/lang/reflect/Method;

.field private static final View_setScrollY:Ljava/lang/reflect/Method;

.field private static final View_setTranslationX:Ljava/lang/reflect/Method;

.field private static final View_setTranslationY:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setScrollX"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 19
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollX:Ljava/lang/reflect/Method;

    .line 21
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setScrollY"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 22
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollY:Ljava/lang/reflect/Method;

    .line 25
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Paint;

    aput-object v3, v2, v5

    .line 26
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    .line 28
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "getLayerType"

    new-array v2, v4, [Ljava/lang/Class;

    .line 29
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_getLayerType:Ljava/lang/reflect/Method;

    .line 32
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setLayerPaint"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Paint;

    aput-object v3, v2, v4

    .line 33
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerPaint:Ljava/lang/reflect/Method;

    .line 36
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setTranslationX"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 37
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationX:Ljava/lang/reflect/Method;

    .line 40
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setTranslationY"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 41
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationY:Ljava/lang/reflect/Method;

    .line 44
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "LAYER_TYPE_HARDWARE"

    .line 45
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_HARDWARE:Ljava/lang/Integer;

    .line 48
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "LAYER_TYPE_SOFTWARE"

    .line 49
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_SOFTWARE:Ljava/lang/Integer;

    .line 52
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "LAYER_TYPE_NONE"

    .line 53
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_NONE:Ljava/lang/Integer;

    .line 56
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "isHardwareAccelerated"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_isHardwareAccelerated:Ljava/lang/reflect/Method;

    .line 60
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setBackground"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v4

    .line 61
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackground:Ljava/lang/reflect/Method;

    .line 63
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "setBackgroundDrawable"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v4

    .line 64
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackgroundDrawable:Ljava/lang/reflect/Method;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static disableHardwareAccel(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 111
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 112
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_SOFTWARE:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_15
    return-void
.end method

.method public static enableHardwareLayer(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareLayer(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public static enableHardwareLayer(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 100
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 101
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_HARDWARE:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_15
    return-void
.end method

.method public static isBackedByLayer(Landroid/view/View;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v2, Lcom/nuance/android/compat/ViewCompat;->View_getLayerType:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_18

    .line 118
    sget-object v2, Lcom/nuance/android/compat/ViewCompat;->View_getLayerType:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    .local v0, "layerType":Ljava/lang/Integer;
    sget-object v2, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_NONE:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v1, 0x1

    .line 121
    .end local v0    # "layerType":Ljava/lang/Integer;
    :cond_18
    return v1
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 162
    sget-object v1, Lcom/nuance/android/compat/ViewCompat;->View_isHardwareAccelerated:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    .line 163
    sget-object v1, Lcom/nuance/android/compat/ViewCompat;->View_isHardwareAccelerated:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 165
    :cond_13
    return v0
.end method

.method public static removeLayer(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 106
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 107
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_NONE:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_15
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_10

    .line 170
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackground:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_f
    return-void

    .line 172
    :cond_10
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackgroundDrawable:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 85
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerPaint:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 86
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerPaint:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_f
    return-void
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    .line 134
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    .line 135
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollX:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_13
    return-void

    .line 137
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_13
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    .line 150
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollY:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    .line 151
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollY:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_13
    return-void

    .line 153
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_13
.end method

.method public static setTranslation(Landroid/view/View;FF)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 79
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationX:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationY:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_20
    return-void
.end method

.method public static supports2dTranslation()Z
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setTranslationY:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static supportsSetLayerPaint()Z
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerPaint:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
