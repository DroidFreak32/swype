.class public Lcom/nuance/android/compat/SystemPropertiesProxy;
.super Ljava/lang/Object;
.source "SystemPropertiesProxy.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field SystemProperties_getBoolean:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "SystemPropertiesProxy"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/SystemPropertiesProxy;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 21
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 22
    .local v1, "class_SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getBoolean"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/android/compat/SystemPropertiesProxy;->SystemProperties_getBoolean:Ljava/lang/reflect/Method;

    .line 24
    iget-object v3, p0, Lcom/nuance/android/compat/SystemPropertiesProxy;->SystemProperties_getBoolean:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 25
    sget-object v3, Lcom/nuance/android/compat/SystemPropertiesProxy;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "method \'getBoolean\' not found"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "class_SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v2

    .line 28
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/nuance/android/compat/SystemPropertiesProxy;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/android/compat/SystemPropertiesProxy;->SystemProperties_getBoolean:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/nuance/android/compat/SystemPropertiesProxy;->SystemProperties_getBoolean:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 36
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method
