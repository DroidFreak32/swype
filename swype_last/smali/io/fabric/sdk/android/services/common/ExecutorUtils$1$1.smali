.class final Lio/fabric/sdk/android/services/common/ExecutorUtils$1$1;
.super Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.source "ExecutorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/ExecutorUtils$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/common/ExecutorUtils$1;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/ExecutorUtils$1;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 43
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$1$1;->this$0:Lio/fabric/sdk/android/services/common/ExecutorUtils$1;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    return-void
.end method
