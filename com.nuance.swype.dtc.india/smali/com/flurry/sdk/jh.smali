.class public final Lcom/flurry/sdk/jh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/flurry/sdk/jh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jh;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/flurry/sdk/jh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/flurry/sdk/jh;

    invoke-direct {v0}, Lcom/flurry/sdk/jh;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;

    .line 16
    :cond_0
    sget-object v0, Lcom/flurry/sdk/jh;->a:Lcom/flurry/sdk/jh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
