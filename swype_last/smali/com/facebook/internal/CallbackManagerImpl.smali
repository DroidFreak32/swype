.class public final Lcom/facebook/internal/CallbackManagerImpl;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/facebook/CallbackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;,
        Lcom/facebook/internal/CallbackManagerImpl$Callback;
    }
.end annotation


# static fields
.field private static staticCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/internal/CallbackManagerImpl$Callback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/internal/CallbackManagerImpl$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    .line 91
    return-void
.end method

.method private static declared-synchronized getStaticCallback(Ljava/lang/Integer;)Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .registers 3
    .param p0, "requestCode"    # Ljava/lang/Integer;

    .prologue
    .line 57
    const-class v1, Lcom/facebook/internal/CallbackManagerImpl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl$Callback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    .registers 5
    .param p0, "requestCode"    # I
    .param p1, "callback"    # Lcom/facebook/internal/CallbackManagerImpl$Callback;

    .prologue
    .line 49
    const-class v1, Lcom/facebook/internal/CallbackManagerImpl;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "callback"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    move-result v0

    if-eqz v0, :cond_17

    .line 54
    :goto_15
    monitor-exit v1

    return-void

    .line 53
    :cond_17
    :try_start_17
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 49
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static runStaticCallback(IILandroid/content/Intent;)Z
    .registers 5
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/CallbackManagerImpl;->getStaticCallback(Ljava/lang/Integer;)Lcom/facebook/internal/CallbackManagerImpl$Callback;

    move-result-object v0

    .line 65
    .local v0, "callback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    if-eqz v0, :cond_f

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v1

    .line 68
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)Z
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl$Callback;

    .line 81
    .local v0, "callback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    if-eqz v0, :cond_13

    .line 82
    invoke-interface {v0, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v1

    .line 84
    :goto_12
    return v1

    :cond_13
    invoke-static {p1, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl;->runStaticCallback(IILandroid/content/Intent;)Z

    move-result v1

    goto :goto_12
.end method

.method public final registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "callback"    # Lcom/facebook/internal/CallbackManagerImpl$Callback;

    .prologue
    .line 74
    const-string/jumbo v0, "callback"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
