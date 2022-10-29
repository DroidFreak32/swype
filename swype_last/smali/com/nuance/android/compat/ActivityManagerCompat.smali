.class public Lcom/nuance/android/compat/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# static fields
.field private static final ActivityManager_isRunningInTestHarness:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const-class v0, Landroid/app/ActivityManager;

    const-string/jumbo v1, "isRunningInTestHarness"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 17
    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ActivityManagerCompat;->ActivityManager_isRunningInTestHarness:Ljava/lang/reflect/Method;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static invokeIsRunningInTestHarness()Z
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/android/compat/ActivityManagerCompat;->ActivityManager_isRunningInTestHarness:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRunningInTestHarness()Z
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/android/compat/ActivityManagerCompat;->ActivityManager_isRunningInTestHarness:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->invokeIsRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isUserAMonkey()Z
    .registers 1

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 53
    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x1

    goto :goto_4
.end method
