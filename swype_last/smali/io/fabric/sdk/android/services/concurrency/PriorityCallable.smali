.class public abstract Lio/fabric/sdk/android/services/concurrency/PriorityCallable;
.super Lio/fabric/sdk/android/services/concurrency/PriorityTask;
.source "PriorityCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/PriorityTask;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityCallable;, "Lio/fabric/sdk/android/services/concurrency/PriorityCallable<TV;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;-><init>()V

    return-void
.end method
