.class public Lcom/nuance/android/compat/DisplayCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# static fields
.field private static final Display_getRectSize:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 17
    const-class v0, Landroid/view/Display;

    const-string/jumbo v1, "getRectSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    .line 18
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/DisplayCompat;->Display_getRectSize:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getRectSize(Landroid/view/Display;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcom/nuance/android/compat/DisplayCompat;->Display_getRectSize:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/nuance/android/compat/DisplayCompat;->Display_getRectSize:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
