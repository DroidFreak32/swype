.class public final Lcom/nuance/swype/util/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Runnable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field private handlerCallback:Landroid/os/Handler$Callback;

.field public isPending:Z

.field isRepeat:Z

.field public msDelay:J

.field public msNext:J

.field runnable:Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 2
    .param p2, "ms"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    .local p1, "runnable":Ljava/lang/Runnable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/util/Callback;->msNext:J

    .line 34
    new-instance v0, Lcom/nuance/swype/util/Callback$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/util/Callback$1;-><init>(Lcom/nuance/swype/util/Callback;)V

    iput-object v0, p0, Lcom/nuance/swype/util/Callback;->handlerCallback:Landroid/os/Handler$Callback;

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/util/Callback;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/nuance/swype/util/Callback;->runnable:Ljava/lang/Runnable;

    .line 53
    iput-wide p2, p0, Lcom/nuance/swype/util/Callback;->msDelay:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isRepeat:Z

    .line 55
    return-void
.end method


# virtual methods
.method public final stop()V
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lcom/nuance/swype/util/Callback;, "Lcom/nuance/swype/util/Callback<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/util/Callback;->isPending:Z

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    return-void
.end method
