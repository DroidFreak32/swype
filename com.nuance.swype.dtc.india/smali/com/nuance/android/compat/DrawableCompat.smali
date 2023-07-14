.class public Lcom/nuance/android/compat/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# static fields
.field private static final Display_getAlpha:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "getAlpha"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/DrawableCompat;->Display_getAlpha:Ljava/lang/reflect/Method;

    .line 16
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

.method public static getAlpha(Landroid/graphics/drawable/Drawable;I)I
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "defaultVal"    # I

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/android/compat/DrawableCompat;->Display_getAlpha:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/nuance/android/compat/DrawableCompat;->Display_getAlpha:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 27
    .end local p1    # "defaultVal":I
    :cond_0
    return p1
.end method
