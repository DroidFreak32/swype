.class public final Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;
.super Ljava/lang/Object;
.source "WeakReferenceHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;->callbackRef:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 45
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
