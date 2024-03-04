.class public Lcom/nuance/android/compat/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field private static final MotionEvent_getToolType:Ljava/lang/reflect/Method;

.field private static final TOOL_TYPE_STYLUS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getToolType"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/MotionEventCompat;->MotionEvent_getToolType:Ljava/lang/reflect/Method;

    .line 15
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/nuance/android/compat/MotionEventCompat;->TOOL_TYPE_STYLUS:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static getToolType(Landroid/view/MotionEvent;I)I
    .locals 4
    .param p0, "vib"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/android/compat/MotionEventCompat;->MotionEvent_getToolType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/nuance/android/compat/MotionEventCompat;->MotionEvent_getToolType:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isToolTypeStylus(Landroid/view/MotionEvent;I)Z
    .locals 2
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/nuance/android/compat/MotionEventCompat;->getToolType(Landroid/view/MotionEvent;I)I

    move-result v0

    sget-object v1, Lcom/nuance/android/compat/MotionEventCompat;->TOOL_TYPE_STYLUS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
