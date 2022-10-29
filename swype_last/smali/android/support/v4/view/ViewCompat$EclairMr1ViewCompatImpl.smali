.class Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1117
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final isOpaque(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1120
    .line 2033
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v0

    .line 1120
    return v0
.end method

.method public final setChildrenDrawingOrderEnabled$4d3af60(Landroid/view/ViewGroup;)V
    .registers 8
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 1125
    .line 2037
    sget-object v0, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1d

    .line 2039
    :try_start_5
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 2040
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2e

    .line 2044
    :goto_18
    sget-object v0, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2047
    :cond_1d
    :try_start_1d
    sget-object v0, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2d} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2d} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2d} :catch_4f

    .line 2054
    :goto_2d
    return-void

    .line 2041
    :catch_2e
    move-exception v0

    .line 2042
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 2048
    :catch_39
    move-exception v0

    .line 2049
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 2050
    :catch_44
    move-exception v0

    .line 2051
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 2052
    :catch_4f
    move-exception v0

    .line 2053
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method
