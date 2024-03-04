.class Ltwitter4j/internal/async/ExecuteThread;
.super Ljava/lang/Thread;
.source "DispatcherImpl.java"


# static fields
.field private static logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field private alive:Z

.field q:Ltwitter4j/internal/async/DispatcherImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Ltwitter4j/internal/async/ExecuteThread;

    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/async/ExecuteThread;->logger:Ltwitter4j/internal/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ltwitter4j/internal/async/DispatcherImpl;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q"    # Ltwitter4j/internal/async/DispatcherImpl;
    .param p3, "index"    # I

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    .line 102
    iput-object p2, p0, Ltwitter4j/internal/async/ExecuteThread;->q:Ltwitter4j/internal/async/DispatcherImpl;

    .line 103
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Ltwitter4j/internal/async/ExecuteThread;->q:Ltwitter4j/internal/async/DispatcherImpl;

    invoke-virtual {v2}, Ltwitter4j/internal/async/DispatcherImpl;->poll()Ljava/lang/Runnable;

    move-result-object v1

    .line 114
    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Ltwitter4j/internal/async/ExecuteThread;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v3, "Got an exception while running a task:"

    invoke-virtual {v2, v3, v0}, Ltwitter4j/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/async/ExecuteThread;->alive:Z

    .line 107
    return-void
.end method
