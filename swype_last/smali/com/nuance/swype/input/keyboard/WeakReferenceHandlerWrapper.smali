.class public Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;
.super Landroid/os/Handler;
.source "WeakReferenceHandlerWrapper.java"


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
.field private final ownerInstance:Ljava/lang/ref/WeakReference;
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
    .line 18
    .local p0, "this":Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;, "Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper<TT;>;"
    .local p1, "ownerInstance":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;, "Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper<TT;>;"
    .local p1, "ownerInstance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;->ownerInstance:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public getOwnerInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;, "Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper<TT;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;->ownerInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
