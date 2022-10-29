.class public Lcom/flurry/sdk/jv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/jv;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/flurry/sdk/jv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jv;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_27

    .line 3053
    iget-object v0, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    if-nez v0, :cond_27

    .line 3057
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 4097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 3058
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_27

    .line 3062
    new-instance v1, Lcom/flurry/sdk/jv$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jv$1;-><init>(Lcom/flurry/sdk/jv;)V

    iput-object v1, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    .line 3113
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    :cond_27
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jv;
    .registers 2

    .prologue
    .line 23
    const-class v1, Lcom/flurry/sdk/jv;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/flurry/sdk/jv;

    invoke-direct {v0}, Lcom/flurry/sdk/jv;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;

    .line 27
    :cond_e
    sget-object v0, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/flurry/sdk/jv;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
