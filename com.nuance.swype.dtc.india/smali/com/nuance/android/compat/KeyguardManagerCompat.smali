.class public Lcom/nuance/android/compat/KeyguardManagerCompat;
.super Ljava/lang/Object;
.source "KeyguardManagerCompat.java"


# static fields
.field private static final KeyguardManager_isKeyguardLocked:Ljava/lang/reflect/Method;

.field private static final KeyguardManager_isKeyguardSecure:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    const-class v0, Landroid/app/KeyguardManager;

    const-string/jumbo v1, "isKeyguardLocked"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/KeyguardManagerCompat;->KeyguardManager_isKeyguardLocked:Ljava/lang/reflect/Method;

    .line 16
    const-class v0, Landroid/app/KeyguardManager;

    const-string/jumbo v1, "isKeyguardSecure"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/KeyguardManagerCompat;->KeyguardManager_isKeyguardSecure:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static isKeyguardLocked(Landroid/app/KeyguardManager;)Z
    .locals 2
    .param p0, "kgm"    # Landroid/app/KeyguardManager;

    .prologue
    const/4 v0, 0x0

    .line 24
    sget-object v1, Lcom/nuance/android/compat/KeyguardManagerCompat;->KeyguardManager_isKeyguardLocked:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/nuance/android/compat/KeyguardManagerCompat;->KeyguardManager_isKeyguardLocked:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 27
    :cond_0
    return v0
.end method

.method public static isKeyguardSecure(Landroid/app/KeyguardManager;)Z
    .locals 2
    .param p0, "kgm"    # Landroid/app/KeyguardManager;

    .prologue
    const/4 v0, 0x0

    .line 31
    sget-object v1, Lcom/nuance/android/compat/KeyguardManagerCompat;->KeyguardManager_isKeyguardSecure:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/nuance/android/compat/KeyguardManagerCompat;->KeyguardManager_isKeyguardSecure:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 34
    :cond_0
    return v0
.end method
