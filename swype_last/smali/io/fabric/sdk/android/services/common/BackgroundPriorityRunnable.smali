.class public abstract Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.super Ljava/lang/Object;
.source "BackgroundPriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRun()V
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 12
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 13
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;->onRun()V

    .line 14
    return-void
.end method
