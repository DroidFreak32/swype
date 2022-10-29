.class public Lcom/nuance/android/compat/InputMethodServiceCompat;
.super Ljava/lang/Object;
.source "InputMethodServiceCompat.java"


# static fields
.field private static final InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

.field private static final Insets_touchableRegion:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const-class v0, Landroid/inputmethodservice/InputMethodService$Insets;

    const-string/jumbo v1, "touchableRegion"

    .line 23
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    .line 26
    const-class v0, Landroid/inputmethodservice/InputMethodService;

    const-string/jumbo v1, "enableHardwareAcceleration"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 27
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/InputMethodServiceCompat;->InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z
    .registers 3
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v0, 0x0

    .line 75
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    .line 76
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    :cond_13
    return v0
.end method

.method public static getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;
    .registers 3
    .param p0, "insets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 35
    :try_start_0
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v1

    .line 36
    :catch_9
    move-exception v0

    .line 37
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isTouchableRegionSupported()Z
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "insets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_12

    .line 63
    invoke-static {p0}, Lcom/nuance/android/compat/InputMethodServiceCompat;->getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;

    move-result-object v0

    .line 64
    .local v0, "region":Landroid/graphics/Region;
    if-eqz v0, :cond_12

    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 66
    const/4 v1, 0x3

    iput v1, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 67
    const/4 v1, 0x1

    .line 71
    .end local v0    # "region":Landroid/graphics/Region;
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
