.class public Lcom/nuance/android/compat/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# static fields
.field private static final Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

.field private static final swDp:Ljava/lang/String; = "smallestScreenWidthDp"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-class v0, Landroid/content/res/Configuration;

    const-string/jumbo v1, "smallestScreenWidthDp"

    .line 18
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ConfigurationCompat;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I
    .registers 2
    .param p0, "con"    # Landroid/content/res/Configuration;

    .prologue
    .line 30
    sget-object v0, Lcom/nuance/android/compat/ConfigurationCompat;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_c

    .line 33
    :try_start_4
    sget-object v0, Lcom/nuance/android/compat/ConfigurationCompat;->Configuration_smallestScreenWidthDp:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 38
    :goto_a
    return v0

    :catch_b
    move-exception v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method
