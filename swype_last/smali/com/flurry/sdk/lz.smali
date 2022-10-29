.class public Lcom/flurry/sdk/lz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ki;
.implements Lcom/flurry/sdk/lj$a;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/lz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 38
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    .line 40
    const-string/jumbo v0, "CaptureUncaughtExceptions"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/lz;->b:Z

    .line 41
    const-string/jumbo v0, "CaptureUncaughtExceptions"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 42
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initSettings, CrashReportingEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/lz;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/flurry/sdk/ma;->a()Lcom/flurry/sdk/ma;

    move-result-object v0

    .line 1050
    iget-object v1, v0, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    monitor-enter v1

    .line 1051
    :try_start_38
    iget-object v0, v0, Lcom/flurry/sdk/ma;->b:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    monitor-exit v1

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 60
    const-string/jumbo v0, "CaptureUncaughtExceptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/lz;->b:Z

    .line 62
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, CrashReportingEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/lz;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_29
    return-void

    .line 65
    :cond_2a
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/lz;->a:Ljava/lang/String;

    const-string/jumbo v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 71
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    iget-boolean v0, p0, Lcom/flurry/sdk/lz;->b:Z

    if-eqz v0, :cond_49

    .line 74
    const-string/jumbo v0, ""

    .line 75
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_58

    array-length v1, v1

    if-lez v1, :cond_58

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_40
    :goto_40
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    const-string/jumbo v1, "uncaught"

    invoke-static {v1, v0, p2}, Lcom/flurry/sdk/hk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_49
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lf;->e()V

    .line 93
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ji;->d()V

    .line 94
    return-void

    .line 85
    :cond_58
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 86
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method
