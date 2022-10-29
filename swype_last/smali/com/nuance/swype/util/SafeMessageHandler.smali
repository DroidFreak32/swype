.class public abstract Lcom/nuance/swype/util/SafeMessageHandler;
.super Landroid/os/Handler;
.source "SafeMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/nuance/swype/util/SafeMessageHandler;, "Lcom/nuance/swype/util/SafeMessageHandler<TT;>;"
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/util/SafeMessageHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    .local p0, "this":Lcom/nuance/swype/util/SafeMessageHandler;, "Lcom/nuance/swype/util/SafeMessageHandler<TT;>;"
    iget-object v1, p0, Lcom/nuance/swype/util/SafeMessageHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "parent":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_9

    .line 49
    :goto_8
    return-void

    .line 48
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/util/SafeMessageHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public abstract handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation
.end method
