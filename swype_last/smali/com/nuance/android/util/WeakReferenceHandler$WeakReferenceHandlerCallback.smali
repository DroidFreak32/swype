.class final Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;
.super Ljava/lang/Object;
.source "WeakReferenceHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/util/WeakReferenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakReferenceHandlerCallback"
.end annotation


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
    .registers 3
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
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/nuance/android/util/WeakReferenceHandler$WeakReferenceHandlerCallback;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 45
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method
