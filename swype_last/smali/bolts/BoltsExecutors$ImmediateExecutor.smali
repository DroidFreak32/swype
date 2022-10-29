.class Lbolts/BoltsExecutors$ImmediateExecutor;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/BoltsExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateExecutor"
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0xf


# instance fields
.field private executionDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lbolts/BoltsExecutors$1;)V
    .registers 2
    .param p1, "x0"    # Lbolts/BoltsExecutors$1;

    .prologue
    .line 62
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>()V

    return-void
.end method

.method private decrementDepth()I
    .registers 5

    .prologue
    .line 87
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 88
    .local v1, "oldDepth":Ljava/lang/Integer;
    if-nez v1, :cond_f

    .line 89
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 91
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 92
    .local v0, "newDepth":I
    if-nez v0, :cond_1d

    .line 93
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 97
    :goto_1c
    return v0

    .line 95
    :cond_1d
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method private incrementDepth()I
    .registers 5

    .prologue
    .line 72
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 73
    .local v1, "oldDepth":Ljava/lang/Integer;
    if-nez v1, :cond_f

    .line 74
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 77
    .local v0, "newDepth":I
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 102
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->incrementDepth()I

    move-result v0

    .line 104
    .local v0, "depth":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_f

    .line 105
    :try_start_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 110
    :goto_b
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->decrementDepth()I

    .line 111
    return-void

    .line 107
    :cond_f
    :try_start_f
    invoke-static {}, Lbolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_b

    .line 110
    :catchall_17
    move-exception v1

    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->decrementDepth()I

    throw v1
.end method
