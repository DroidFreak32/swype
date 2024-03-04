.class public Lcom/nuance/android/compat/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field public static final FLAG_VALUE_LAYER_TYPE_HARDWARE:Ljava/lang/Integer;

.field public static final FLAG_VALUE_LAYER_TYPE_SOFTWARE:Ljava/lang/Integer;

.field public static final View_isHardwareAccelerated:Ljava/lang/reflect/Method;

.field private static final View_setBackground:Ljava/lang/reflect/Method;

.field private static final View_setBackgroundDrawable:Ljava/lang/reflect/Method;

.field private static final View_setLayerType:Ljava/lang/reflect/Method;

.field private static final View_setScrollX:Ljava/lang/reflect/Method;

.field private static final View_setScrollY:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    const-class v0, Landroid/view/View;

    const-string v1, "setScrollX"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollX:Ljava/lang/reflect/Method;

    .line 21
    const-class v0, Landroid/view/View;

    const-string v1, "setScrollY"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollY:Ljava/lang/reflect/Method;

    .line 25
    const-class v0, Landroid/view/View;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Paint;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    .line 29
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_HARDWARE"

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_HARDWARE:Ljava/lang/Integer;

    .line 33
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->FLAG_VALUE_LAYER_TYPE_SOFTWARE:Ljava/lang/Integer;

    .line 38
    const-class v0, Landroid/view/View;

    const-string v1, "isHardwareAccelerated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_isHardwareAccelerated:Ljava/lang/reflect/Method;

    .line 42
    const-class v0, Landroid/view/View;

    const-string v1, "setBackground"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackground:Ljava/lang/reflect/Method;

    .line 45
    const-class v0, Landroid/view/View;

    const-string v1, "setBackgroundDrawable"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackgroundDrawable:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static disableHardwareAccel(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 60
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 61
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

    .line 63
    :cond_0
    return-void
.end method

.method public static enableHardwareAccel(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 54
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 55
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

    .line 57
    :cond_0
    return-void
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 98
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_isHardwareAccelerated:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_isHardwareAccelerated:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackground:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setBackgroundDrawable:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollX:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    .line 90
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollY:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/nuance/android/compat/ViewCompat;->View_setScrollY:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method
