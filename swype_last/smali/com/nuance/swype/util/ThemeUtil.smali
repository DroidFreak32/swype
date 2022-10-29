.class public final Lcom/nuance/swype/util/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# direct methods
.method public static getAppThemeId(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 60
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_12

    .line 65
    :goto_11
    return v1

    :catch_12
    move-exception v1

    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static getBool(Landroid/content/res/TypedArray;)Z
    .registers 3
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    move-result v0

    .line 93
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getColor(Landroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 100
    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    :try_start_3
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getColorStateList(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 108
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getDimen(Landroid/content/res/TypedArray;)F
    .registers 3
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    move-result v0

    .line 126
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 132
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static getResId(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "defValue"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    move-result v0

    .line 118
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
