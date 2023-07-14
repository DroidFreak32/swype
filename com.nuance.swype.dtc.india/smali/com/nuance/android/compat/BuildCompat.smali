.class public Lcom/nuance/android/compat/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# static fields
.field private static final Build_SERIAL:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Landroid/os/Build;

    const-string/jumbo v1, "SERIAL"

    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/BuildCompat;->Build_SERIAL:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    sget-object v1, Lcom/nuance/android/compat/BuildCompat;->Build_SERIAL:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 31
    :try_start_0
    sget-object v1, Lcom/nuance/android/compat/BuildCompat;->Build_SERIAL:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :cond_0
    const-string/jumbo v1, "unknown"

    goto :goto_0
.end method
