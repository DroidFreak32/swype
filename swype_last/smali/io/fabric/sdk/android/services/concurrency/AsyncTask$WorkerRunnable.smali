.class public abstract Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field public params:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 666
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 666
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;, "Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
