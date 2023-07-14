.class public Lcom/nuance/swype/stats/StatisticsManager;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    }
.end annotation


# static fields
.field private static final EMPTY_STATISTICS_SCRIBE:Ljava/lang/String; = "com.nuance.swype.stats.basicanalytics.BasicStatisticsScribe"

.field private static final FULL_STATISTICS_SCRIBE:Ljava/lang/String; = "com.nuance.swype.stats.fullanalytics.FullStatisticsScribe"

.field protected static final TAG:Ljava/lang/String; = "Stats"


# instance fields
.field private sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "com.nuance.swype.stats.fullanalytics.FullStatisticsScribe"

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/stats/StatisticsManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string/jumbo v0, "com.nuance.swype.stats.basicanalytics.BasicStatisticsScribe"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/stats/StatisticsManager;->loadScribe(Ljava/lang/String;Landroid/content/Context;)Z

    .line 32
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getStatisticsManager()Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getStatisticsManager()Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v0

    .line 95
    .local v0, "manager":Lcom/nuance/swype/stats/StatisticsManager;
    const/4 v1, 0x0

    .line 97
    .local v1, "scribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 101
    :cond_0
    return-object v1
.end method

.method private loadScribe(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p1, "scribeClass"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/nuance/swype/stats/AbstractScribe;

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    const-class v4, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 46
    if-nez p2, :cond_0

    .line 47
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 48
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/stats/AbstractScribe;

    .line 54
    .local v0, "abstractScribe":Lcom/nuance/swype/stats/AbstractScribe;
    :goto_0
    check-cast v0, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    .end local v0    # "abstractScribe":Lcom/nuance/swype/stats/AbstractScribe;
    iput-object v0, p0, Lcom/nuance/swype/stats/StatisticsManager;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    .line 68
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    :goto_1
    return v2

    .line 50
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 51
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/stats/AbstractScribe;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .restart local v0    # "abstractScribe":Lcom/nuance/swype/stats/AbstractScribe;
    goto :goto_0

    .line 58
    .end local v0    # "abstractScribe":Lcom/nuance/swype/stats/AbstractScribe;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/nuance/swype/stats/AbstractScribe;>;"
    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_1

    .line 60
    :catch_1
    move-exception v2

    move v2, v3

    goto :goto_1

    .line 62
    :catch_2
    move-exception v2

    move v2, v3

    goto :goto_1

    .line 64
    :catch_3
    move-exception v2

    move v2, v3

    goto :goto_1

    .line 66
    :catch_4
    move-exception v2

    move v2, v3

    goto :goto_1

    .line 68
    :catch_5
    move-exception v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsManager;->sessionScribe:Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    return-object v0
.end method
