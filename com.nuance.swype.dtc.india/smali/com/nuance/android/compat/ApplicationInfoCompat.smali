.class public Lcom/nuance/android/compat/ApplicationInfoCompat;
.super Ljava/lang/Object;
.source "ApplicationInfoCompat.java"


# static fields
.field private static final ApplicationInfo_nativeLibraryDir:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v1, "nativeLibraryDir"

    .line 18
    invoke-static {v0, v1}, Lcom/nuance/android/compat/CompatUtil;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/ApplicationInfoCompat;->ApplicationInfo_nativeLibraryDir:Ljava/lang/reflect/Field;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getNativeLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 33
    sget-object v1, Lcom/nuance/android/compat/ApplicationInfoCompat;->ApplicationInfo_nativeLibraryDir:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    sget-object v1, Lcom/nuance/android/compat/ApplicationInfoCompat;->ApplicationInfo_nativeLibraryDir:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 42
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
