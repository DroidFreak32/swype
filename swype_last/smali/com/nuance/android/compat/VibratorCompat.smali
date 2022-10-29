.class public Lcom/nuance/android/compat/VibratorCompat;
.super Ljava/lang/Object;
.source "VibratorCompat.java"


# static fields
.field private static final Vibrator_hasVibrator:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    const-class v0, Landroid/os/Vibrator;

    const-string/jumbo v1, "hasVibrator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/VibratorCompat;->Vibrator_hasVibrator:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static hasVibrator(Landroid/os/Vibrator;)Z
    .registers 3
    .param p0, "vib"    # Landroid/os/Vibrator;

    .prologue
    .line 21
    sget-object v0, Lcom/nuance/android/compat/VibratorCompat;->Vibrator_hasVibrator:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    .line 22
    sget-object v0, Lcom/nuance/android/compat/VibratorCompat;->Vibrator_hasVibrator:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 24
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method
