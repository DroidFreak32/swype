.class public Lcom/nuance/android/compat/PreferenceCompat;
.super Ljava/lang/Object;
.source "PreferenceCompat.java"


# static fields
.field private static final Preference_setIcon_Drawable:Ljava/lang/reflect/Method;

.field private static final Preference_setIcon_int:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    const-class v0, Landroid/preference/Preference;

    const-string/jumbo v1, "setIcon"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v4

    .line 18
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/PreferenceCompat;->Preference_setIcon_Drawable:Ljava/lang/reflect/Method;

    .line 20
    const-class v0, Landroid/preference/Preference;

    const-string/jumbo v1, "setIcon"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 21
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/PreferenceCompat;->Preference_setIcon_int:Ljava/lang/reflect/Method;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static setIcon(Landroid/preference/Preference;I)V
    .locals 4
    .param p0, "preference"    # Landroid/preference/Preference;
    .param p1, "iconResId"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/nuance/android/compat/PreferenceCompat;->Preference_setIcon_int:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/nuance/android/compat/PreferenceCompat;->Preference_setIcon_int:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-void
.end method

.method public static setIcon(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "preference"    # Landroid/preference/Preference;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    sget-object v0, Lcom/nuance/android/compat/PreferenceCompat;->Preference_setIcon_Drawable:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/nuance/android/compat/PreferenceCompat;->Preference_setIcon_Drawable:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method
