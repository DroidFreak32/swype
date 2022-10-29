.class public final Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field public final diskCacheService:Ljava/util/concurrent/ExecutorService;

.field public final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field public final sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .registers 4
    .param p1, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "listener"    # Lcom/bumptech/glide/load/engine/EngineJobListener;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 377
    return-void
.end method
