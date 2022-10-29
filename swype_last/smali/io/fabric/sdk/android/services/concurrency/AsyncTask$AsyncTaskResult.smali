.class final Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final task:Lio/fabric/sdk/android/services/concurrency/AsyncTask;


# direct methods
.method varargs constructor <init>(Lio/fabric/sdk/android/services/concurrency/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "task"    # Lio/fabric/sdk/android/services/concurrency/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/concurrency/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->task:Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    .line 677
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask$AsyncTaskResult;->data:[Ljava/lang/Object;

    .line 678
    return-void
.end method
