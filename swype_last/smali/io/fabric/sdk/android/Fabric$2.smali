.class final Lio/fabric/sdk/android/Fabric$2;
.super Ljava/lang/Object;
.source "Fabric.java"

# interfaces
.implements Lio/fabric/sdk/android/InitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/Fabric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final kitInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lio/fabric/sdk/android/Fabric;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/Fabric;I)V
    .registers 5

    .prologue
    .line 568
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$2;->this$0:Lio/fabric/sdk/android/Fabric;

    iput p2, p0, Lio/fabric/sdk/android/Fabric$2;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lio/fabric/sdk/android/Fabric$2;->val$size:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$2;->kitInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final failure(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 585
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$2;->this$0:Lio/fabric/sdk/android/Fabric;

    # getter for: Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$200(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/InitializationCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/InitializationCallback;->failure(Ljava/lang/Exception;)V

    .line 586
    return-void
.end method

.method public final success$5d527811()V
    .registers 5

    .prologue
    .line 576
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$2;->kitInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 577
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$2;->kitInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 578
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$2;->this$0:Lio/fabric/sdk/android/Fabric;

    # getter for: Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$100(Lio/fabric/sdk/android/Fabric;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 579
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$2;->this$0:Lio/fabric/sdk/android/Fabric;

    # getter for: Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$200(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/InitializationCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/InitializationCallback;->success$5d527811()V

    .line 581
    :cond_24
    return-void
.end method
