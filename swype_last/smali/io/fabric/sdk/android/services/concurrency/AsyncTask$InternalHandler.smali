.class final Lio/fabric/sdk/android/services/concurrency/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 647
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 652
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;

    .line 653
    .local v0, "result":Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 663
    :goto_9
    return-void

    .line 656
    :pswitch_a
    iget-object v1, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->task:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    invoke-static {v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->access$500$1d60ec96(Lio/fabric/sdk/android/services/concurrency/AsyncTask;)V

    goto :goto_9

    .line 659
    :pswitch_10
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->onProgressUpdate$1b4f7664()V

    goto :goto_9

    .line 653
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
