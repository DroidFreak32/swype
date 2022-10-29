.class public abstract Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;
.super Ljava/lang/Object;
.source "OemCallbackProxyBase.java"


# instance fields
.field private final _handler:Landroid/os/Handler;

.field public final _listenerSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "callbackHandler"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "callbackHandler":Ljava/lang/Object;
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;->_handler:Landroid/os/Handler;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;->_listenerSync:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;->_handler:Landroid/os/Handler;

    if-nez v1, :cond_10

    .line 27
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    .line 44
    :cond_7
    :goto_7
    return-void

    .line 28
    :catch_8
    move-exception v0

    .line 30
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception in application callback"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 35
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/OemCallbackProxyBase;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 37
    const-string/jumbo v1, "Unable to post callback to handler"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_7

    .line 39
    :catch_1f
    move-exception v0

    .line 41
    .restart local v0    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception posting callback to handler"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
