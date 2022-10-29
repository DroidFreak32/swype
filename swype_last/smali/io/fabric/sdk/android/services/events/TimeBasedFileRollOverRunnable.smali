.class public final Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;
.super Ljava/lang/Object;
.source "TimeBasedFileRollOverRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileRollOverManager:Lio/fabric/sdk/android/services/events/FileRollOverManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/FileRollOverManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileRollOverManager"    # Lio/fabric/sdk/android/services/events/FileRollOverManager;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;->fileRollOverManager:Lio/fabric/sdk/android/services/events/FileRollOverManager;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;->fileRollOverManager:Lio/fabric/sdk/android/services/events/FileRollOverManager;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/FileRollOverManager;->rollFileOver()Z

    move-result v0

    .line 26
    if-nez v0, :cond_12

    .line 29
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;->fileRollOverManager:Lio/fabric/sdk/android/services/events/FileRollOverManager;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/FileRollOverManager;->cancelTimeBasedFileRollOver()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 34
    :cond_12
    :goto_12
    return-void

    .line 32
    :catch_13
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;->context:Landroid/content/Context;

    const-string/jumbo v1, "Failed to roll over file"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_12
.end method
