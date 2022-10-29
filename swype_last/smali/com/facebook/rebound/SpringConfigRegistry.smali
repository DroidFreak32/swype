.class public Lcom/facebook/rebound/SpringConfigRegistry;
.super Ljava/lang/Object;
.source "SpringConfigRegistry.java"


# static fields
.field private static final INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field private final mSpringConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/rebound/SpringConfigRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/SpringConfigRegistry;-><init>(Z)V

    sput-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 4
    .param p1, "includeDefaultEntry"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    .line 35
    if-eqz p1, :cond_14

    .line 36
    sget-object v0, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    const-string/jumbo v1, "default config"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    .line 38
    :cond_14
    return-void
.end method

.method public static getInstance()Lcom/facebook/rebound/SpringConfigRegistry;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;

    return-object v0
.end method


# virtual methods
.method public addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z
    .registers 5
    .param p1, "springConfig"    # Lcom/facebook/rebound/SpringConfig;
    .param p2, "configName"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p1, :cond_b

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_b
    if-nez p2, :cond_16

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "configName is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_16
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_1f
    return v0

    .line 58
    :cond_20
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public getAllSpringConfig()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/rebound/SpringConfig;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeAllSpringConfig()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public removeSpringConfig(Lcom/facebook/rebound/SpringConfig;)Z
    .registers 4
    .param p1, "springConfig"    # Lcom/facebook/rebound/SpringConfig;

    .prologue
    .line 68
    if-nez p1, :cond_b

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_b
    iget-object v0, p0, Lcom/facebook/rebound/SpringConfigRegistry;->mSpringConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
