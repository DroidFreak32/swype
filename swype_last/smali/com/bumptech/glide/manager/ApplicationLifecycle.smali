.class final Lcom/bumptech/glide/manager/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/Lifecycle;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/bumptech/glide/manager/LifecycleListener;

    .prologue
    .line 15
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    .line 16
    return-void
.end method
