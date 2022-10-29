.class public final Landroid/support/v7/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    .line 50
    :try_start_d
    const-string/jumbo v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    .line 55
    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x0

    .line 124
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_e

    instance-of v2, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_e

    .line 161
    :cond_d
    :goto_d
    return v1

    .line 127
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_16

    instance-of v2, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_d

    .line 129
    :cond_16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_1e

    instance-of v2, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_d

    .line 133
    :cond_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_28

    instance-of v2, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_d

    .line 137
    :cond_28
    instance-of v2, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_49

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 140
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v2, :cond_68

    .line 141
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 143
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_3c
    if-ge v2, v4, :cond_68

    aget-object v5, v3, v2

    .line 144
    invoke-static {v5}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 149
    :cond_49
    instance-of v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_54

    .line 150
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    .line 152
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 150
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 153
    :cond_54
    instance-of v2, p0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_5d

    .line 154
    check-cast p0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    .line 1211
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object p0, p0, Landroid/support/v7/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 157
    :cond_5d
    instance-of v2, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v2, :cond_68

    .line 158
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 161
    :cond_68
    const/4 v1, 0x1

    goto :goto_d
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_28

    const-string/jumbo v0, "android.graphics.drawable.VectorDrawable"

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1169
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_20

    array-length v1, v0

    if-nez v1, :cond_29

    .line 1172
    :cond_20
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1178
    :goto_25
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 117
    :cond_28
    return-void

    .line 1175
    :cond_29
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_25
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 11
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 64
    sget-object v3, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v3, :cond_81

    .line 68
    :try_start_5
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "getOpticalInsets"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, "insets":Ljava/lang/Object;
    if-eqz v1, :cond_81

    .line 76
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 78
    .local v2, "result":Landroid/graphics/Rect;
    sget-object v3, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_2d
    if-ge v5, v7, :cond_83

    aget-object v0, v6, v5

    .line 79
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v3, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_9a

    :cond_3d
    :goto_3d
    packed-switch v3, :pswitch_data_ac

    .line 78
    :goto_40
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2d

    .line 79
    :sswitch_44
    const-string/jumbo v9, "left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    move v3, v4

    goto :goto_3d

    :sswitch_4f
    const-string/jumbo v9, "top"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    const/4 v3, 0x1

    goto :goto_3d

    :sswitch_5a
    const-string/jumbo v9, "right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    const/4 v3, 0x2

    goto :goto_3d

    :sswitch_65
    const-string/jumbo v9, "bottom"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    const/4 v3, 0x3

    goto :goto_3d

    .line 81
    :pswitch_70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_76} :catch_77

    goto :goto_40

    .line 98
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "insets":Ljava/lang/Object;
    .end local v2    # "result":Landroid/graphics/Rect;
    :catch_77
    move-exception v3

    const-string/jumbo v3, "DrawableUtils"

    const-string/jumbo v4, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_81
    sget-object v2, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_83
    return-object v2

    .line 84
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v1    # "insets":Ljava/lang/Object;
    .restart local v2    # "result":Landroid/graphics/Rect;
    :pswitch_84
    :try_start_84
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_40

    .line 87
    :pswitch_8b
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_40

    .line 90
    :pswitch_92
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_98} :catch_77

    goto :goto_40

    .line 79
    nop

    :sswitch_data_9a
    .sparse-switch
        -0x527265d5 -> :sswitch_65
        0x1c155 -> :sswitch_4f
        0x32a007 -> :sswitch_44
        0x677c21c -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_70
        :pswitch_84
        :pswitch_8b
        :pswitch_92
    .end packed-switch
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 4
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 182
    packed-switch p0, :pswitch_data_22

    .line 191
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    :goto_3
    :pswitch_3
    return-object p1

    .line 183
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 184
    :pswitch_7
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 185
    :pswitch_a
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 186
    :pswitch_d
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 187
    :pswitch_10
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 188
    :pswitch_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    const-string/jumbo v0, "ADD"

    .line 189
    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_3

    .line 182
    nop

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method
