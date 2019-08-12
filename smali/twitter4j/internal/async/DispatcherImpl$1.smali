.class Ltwitter4j/internal/async/DispatcherImpl$1;
.super Ljava/lang/Thread;
.source "DispatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/internal/async/DispatcherImpl;-><init>(Ltwitter4j/conf/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltwitter4j/internal/async/DispatcherImpl;


# direct methods
.method constructor <init>(Ltwitter4j/internal/async/DispatcherImpl;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ltwitter4j/internal/async/DispatcherImpl$1;->this$0:Ltwitter4j/internal/async/DispatcherImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl$1;->this$0:Ltwitter4j/internal/async/DispatcherImpl;

    invoke-static {v0}, Ltwitter4j/internal/async/DispatcherImpl;->access$000(Ltwitter4j/internal/async/DispatcherImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ltwitter4j/internal/async/DispatcherImpl$1;->this$0:Ltwitter4j/internal/async/DispatcherImpl;

    invoke-virtual {v0}, Ltwitter4j/internal/async/DispatcherImpl;->shutdown()V

    .line 44
    :cond_0
    return-void
.end method
