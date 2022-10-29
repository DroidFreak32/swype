.class final Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .registers 2

    .prologue
    .line 513
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 513
    .line 1516
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$300(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1517
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    .line 1901
    const/4 v0, 0x0

    .line 1902
    iget-object v2, v1, Lcom/crashlytics/android/Crashlytics;->externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

    if-eqz v2, :cond_1d

    .line 1903
    iget-object v0, v1, Lcom/crashlytics/android/Crashlytics;->externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/internal/CrashEventDataProvider;->getCrashEventData()Lcom/crashlytics/android/internal/models/SessionEventData;

    move-result-object v0

    .line 1518
    :cond_1d
    if-eqz v0, :cond_24

    .line 1519
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v1, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$800(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Lcom/crashlytics/android/internal/models/SessionEventData;)V

    .line 1521
    :cond_24
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # invokes: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$900(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    .line 1522
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # invokes: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$600(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    .line 1523
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 1525
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_36
    return-object v0

    .line 1527
    :cond_37
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 1529
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_36
.end method
