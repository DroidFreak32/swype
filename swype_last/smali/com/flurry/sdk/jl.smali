.class public Lcom/flurry/sdk/jl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/jl;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/flurry/sdk/jl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jl;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jl;
    .registers 2

    .prologue
    .line 18
    const-class v1, Lcom/flurry/sdk/jl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;

    if-nez v0, :cond_e

    .line 19
    new-instance v0, Lcom/flurry/sdk/jl;

    invoke-direct {v0}, Lcom/flurry/sdk/jl;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;

    .line 21
    :cond_e
    sget-object v0, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 34
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    if-nez v0, :cond_13

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 43
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 44
    if-nez v0, :cond_13

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
