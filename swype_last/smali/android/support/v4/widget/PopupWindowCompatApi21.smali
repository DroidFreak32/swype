.class final Landroid/support/v4/widget/PopupWindowCompatApi21;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi21.java"


# static fields
.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "mOverlapAnchor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 33
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_f} :catch_10

    .line 37
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_f
    return-void

    .line 34
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_10
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 5
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 40
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_d

    .line 42
    :try_start_4
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_d} :catch_e

    .line 47
    :cond_d
    :goto_d
    return-void

    .line 43
    :catch_e
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "PopupWindowCompatApi21"

    const-string/jumbo v2, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
