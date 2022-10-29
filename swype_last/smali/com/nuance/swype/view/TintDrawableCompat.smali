.class public Lcom/nuance/swype/view/TintDrawableCompat;
.super Ljava/lang/Object;
.source "TintDrawableCompat.java"


# static fields
.field private static final ARGS_TintDrawable:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CLASS_TintDrawable:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static CONSTRUCTOR_TintDrawable:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    invoke-static {}, Lcom/nuance/swype/view/TintDrawableCompat;->getTintDrawableClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/CompatUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/TintDrawableCompat;->CLASS_TintDrawable:Ljava/lang/Class;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/view/TintDrawableCompat;->ARGS_TintDrawable:[Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/nuance/swype/view/TintDrawableCompat;->CLASS_TintDrawable:Ljava/lang/Class;

    sget-object v1, Lcom/nuance/swype/view/TintDrawableCompat;->ARGS_TintDrawable:[Ljava/lang/Class;

    .line 30
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/TintDrawableCompat;->CONSTRUCTOR_TintDrawable:Ljava/lang/reflect/Constructor;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTintDrawable(Landroid/content/Context;I)Lcom/nuance/swype/view/TintDrawable;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/swype/view/TintDrawableCompat;->createTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/nuance/swype/view/TintDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/nuance/swype/view/TintDrawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    sget-object v1, Lcom/nuance/swype/view/TintDrawableCompat;->CONSTRUCTOR_TintDrawable:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_e

    .line 63
    sget-object v1, Lcom/nuance/swype/view/TintDrawableCompat;->CLASS_TintDrawable:Ljava/lang/Class;

    sget-object v2, Lcom/nuance/swype/view/TintDrawableCompat;->ARGS_TintDrawable:[Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/nuance/swype/view/TintDrawableCompat;->CONSTRUCTOR_TintDrawable:Ljava/lang/reflect/Constructor;

    .line 66
    :cond_e
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 68
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Lcom/nuance/swype/view/TintDrawableCompat;->CONSTRUCTOR_TintDrawable:Ljava/lang/reflect/Constructor;

    invoke-static {v1, v0}, Lcom/nuance/android/compat/CompatUtil;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/view/TintDrawable;

    return-object v1
.end method

.method private static getTintDrawableClassName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 17
    const-class v2, Lcom/nuance/swype/view/TintDrawableCompat;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "base":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2c

    const-string/jumbo v1, "TintDrawableV21"

    .line 20
    .local v1, "suffix":Ljava/lang/String;
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 18
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v1, "TintDrawable"

    goto :goto_13
.end method

.method private static setTintDrawableBackground(Landroid/content/Context;Landroid/view/View;)Lcom/nuance/swype/view/TintDrawable;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    .line 54
    :goto_7
    return-object v1

    .line 42
    :cond_8
    instance-of v2, v0, Lcom/nuance/swype/view/TintDrawable;

    if-eqz v2, :cond_10

    move-object v1, v0

    .line 43
    check-cast v1, Lcom/nuance/swype/view/TintDrawable;

    .local v1, "td":Lcom/nuance/swype/view/TintDrawable;
    goto :goto_7

    .line 50
    .end local v1    # "td":Lcom/nuance/swype/view/TintDrawable;
    :cond_10
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-static {p0, v0}, Lcom/nuance/swype/view/TintDrawableCompat;->createTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/nuance/swype/view/TintDrawable;

    move-result-object v1

    .line 52
    .restart local v1    # "td":Lcom/nuance/swype/view/TintDrawable;
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method
