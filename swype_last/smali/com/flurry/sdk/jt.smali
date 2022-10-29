.class public Lcom/flurry/sdk/jt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/jt;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/jt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jt;
    .registers 2

    .prologue
    .line 15
    const-class v1, Lcom/flurry/sdk/jt;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;

    if-nez v0, :cond_e

    .line 16
    new-instance v0, Lcom/flurry/sdk/jt;

    invoke-direct {v0}, Lcom/flurry/sdk/jt;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;

    .line 18
    :cond_e
    sget-object v0, Lcom/flurry/sdk/jt;->a:Lcom/flurry/sdk/jt;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized c()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    .line 58
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/flurry/sdk/jt;->c:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    :try_start_10
    throw v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 57
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
