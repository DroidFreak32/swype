.class public Lcom/nuance/android/compat/InputMethodServiceCompat;
.super Ljava/lang/Object;
.source "InputMethodServiceCompat.java"


# static fields
.field private static final InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

.field private static final Insets_touchableRegion:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Landroid/inputmethodservice/InputMethodService$Insets;

    const-string v1, "touchableRegion"

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    .line 26
    const-class v0, Landroid/inputmethodservice/InputMethodService;

    const-string v1, "enableHardwareAcceleration"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/InputMethodServiceCompat;->InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v0, 0x0

    .line 78
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->InputMethodService_enableHardwareAcceleration:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 81
    :cond_0
    return v0
.end method

.method private static getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;
    .locals 2
    .param p0, "insets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 35
    :try_start_0
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isTouchableRegionSupported()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "insets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v1, Lcom/nuance/android/compat/InputMethodServiceCompat;->Insets_touchableRegion:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/nuance/android/compat/InputMethodServiceCompat;->getTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;)Landroid/graphics/Region;

    move-result-object v0

    .line 67
    .local v0, "region":Landroid/graphics/Region;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 69
    const/4 v1, 0x3

    iput v1, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 70
    const/4 v1, 0x1

    .line 74
    .end local v0    # "region":Landroid/graphics/Region;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
