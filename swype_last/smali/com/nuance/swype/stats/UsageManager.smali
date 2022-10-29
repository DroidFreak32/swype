.class public Lcom/nuance/swype/stats/UsageManager;
.super Ljava/lang/Object;
.source "UsageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    }
.end annotation


# static fields
.field private static final DEFAULT_USAGE_SCRIBE:Ljava/lang/String; = "com.nuance.swype.stats.basiclogging.DefaultUsageScribe"

.field private static final DTC_USAGE_SCRIBE:Ljava/lang/String; = "com.nuance.swype.stats.dtclogging.DtcUsageScribe"

.field private static final EMPTY_USAGE_SCRIBE:Ljava/lang/String; = "com.nuance.swype.stats.basiclogging.BasicUsageScribe"

.field private static final FULL_USAGE_SCRIBE:Ljava/lang/String; = "com.nuance.swype.stats.fulllogging.FullUsageScribe"

.field protected static final TAG:Ljava/lang/String; = "Stats"


# instance fields
.field private keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 41
    const-string/jumbo v0, "com.nuance.swype.stats.basiclogging.BasicUsageScribe"

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/stats/UsageManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    .line 54
    :cond_10
    :goto_10
    return-void

    .line 44
    :cond_11
    const-string/jumbo v0, "com.nuance.swype.stats.fulllogging.FullUsageScribe"

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/stats/UsageManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 46
    const-string/jumbo v0, "com.nuance.swype.stats.dtclogging.DtcUsageScribe"

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/stats/UsageManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 48
    const-string/jumbo v0, "com.nuance.swype.stats.basiclogging.DefaultUsageScribe"

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/stats/UsageManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 50
    const-string/jumbo v0, "com.nuance.swype.stats.basiclogging.BasicUsageScribe"

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/stats/UsageManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_10
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUsageManager()Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUsageManager()Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 146
    .local v0, "manager":Lcom/nuance/swype/stats/UsageManager;
    const/4 v1, 0x0

    .line 148
    .local v1, "scribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_11

    .line 149
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    .line 152
    :cond_11
    return-object v1
.end method

.method private loadScribe(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 10
    .param p1, "scribeClass"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/nuance/swype/stats/AbstractScribe;

    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    const-class v2, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 66
    if-nez p2, :cond_27

    .line 67
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 68
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    iput-object v2, p0, Lcom/nuance/swype/stats/UsageManager;->keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    :goto_25
    move v2, v3

    .line 85
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    :goto_26
    return v2

    .line 70
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    :cond_27
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 71
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    iput-object v2, p0, Lcom/nuance/swype/stats/UsageManager;->keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_41} :catch_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_41} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_41} :catch_48
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_41} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_41} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_41} :catch_51

    goto :goto_25

    .line 75
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    :catch_42
    move-exception v2

    move v2, v4

    goto :goto_26

    .line 77
    :catch_45
    move-exception v2

    move v2, v4

    goto :goto_26

    .line 79
    :catch_48
    move-exception v2

    move v2, v4

    goto :goto_26

    .line 81
    :catch_4b
    move-exception v2

    move v2, v4

    goto :goto_26

    .line 83
    :catch_4e
    move-exception v2

    move v2, v4

    goto :goto_26

    .line 85
    :catch_51
    move-exception v2

    move v2, v4

    goto :goto_26
.end method


# virtual methods
.method public getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/stats/UsageManager;->keyboardScribe:Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    return-object v0
.end method
