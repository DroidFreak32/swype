.class final Landroid/support/v4/widget/CompoundButtonCompatDonut;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"


# static fields
.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 61
    sget-boolean v1, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    if-nez v1, :cond_17

    .line 63
    :try_start_6
    const-class v1, Landroid/widget/CompoundButton;

    const-string/jumbo v3, "mButtonDrawable"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 64
    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_15} :catch_24

    .line 68
    :goto_15
    sput-boolean v4, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    .line 71
    :cond_17
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3b

    .line 73
    :try_start_1b
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_23} :catch_2f

    .line 79
    :goto_23
    return-object v1

    .line 65
    :catch_24
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2f
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3b
    move-object v1, v2

    .line 79
    goto :goto_23
.end method
