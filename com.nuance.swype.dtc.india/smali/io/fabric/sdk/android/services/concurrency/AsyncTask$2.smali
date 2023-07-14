.class final Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;
.super Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask;)V
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask.2;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask.2;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->access$200(Lio/fabric/sdk/android/services/concurrency/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 294
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$2;->this$0:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->doInBackground$42af7916()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->access$300(Lio/fabric/sdk/android/services/concurrency/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
