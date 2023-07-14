.class final Lcom/crashlytics/android/ReportUploader$Worker;
.super Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final delay:F

.field final synthetic this$0:Lcom/crashlytics/android/ReportUploader;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/ReportUploader;F)V
    .locals 0
    .param p2, "delay"    # F

    .prologue
    .line 123
    iput-object p1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;-><init>()V

    .line 124
    iput p2, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    .line 125
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 9

    .prologue
    .line 130
    .line 1140
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting report processing in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " second(s)..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    iget v1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1145
    :try_start_1
    iget v1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->delay:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1152
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    .line 1823
    iget-object v3, v1, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 1154
    iget-object v2, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-virtual {v2}, Lcom/crashlytics/android/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v2

    .line 2310
    iget-object v3, v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1156
    if-nez v3, :cond_1

    .line 1161
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3038
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v3

    .line 2955
    new-instance v4, Lcom/crashlytics/android/Crashlytics$6;

    invoke-direct {v4, v1}, Lcom/crashlytics/android/Crashlytics$6;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lio/fabric/sdk/android/services/settings/Settings;->withSettings(Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1161
    if-nez v1, :cond_2

    .line 1163
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "User declined to send. Removing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " Report(s)."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/Report;

    .line 1166
    invoke-interface {v1}, Lcom/crashlytics/android/Report;->remove()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-static {v1}, Lcom/crashlytics/android/ReportUploader;->access$002$9bb8a18(Lcom/crashlytics/android/ReportUploader;)Ljava/lang/Thread;

    .line 137
    return-void

    .line 1147
    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1171
    :cond_2
    const/4 v1, 0x0

    move v8, v1

    move-object v1, v2

    move v2, v8

    .line 1172
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1173
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v3

    .line 3823
    iget-object v3, v3, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 4310
    iget-object v3, v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1173
    if-nez v3, :cond_1

    .line 1186
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Attempting to send "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " report(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/Report;

    .line 1189
    iget-object v4, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-virtual {v4, v1}, Lcom/crashlytics/android/ReportUploader;->forceUpload(Lcom/crashlytics/android/Report;)Z

    goto :goto_3

    .line 1193
    :cond_3
    iget-object v1, p0, Lcom/crashlytics/android/ReportUploader$Worker;->this$0:Lcom/crashlytics/android/ReportUploader;

    invoke-virtual {v1}, Lcom/crashlytics/android/ReportUploader;->findReports()Ljava/util/List;

    move-result-object v3

    .line 1194
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1195
    invoke-static {}, Lcom/crashlytics/android/ReportUploader;->access$100()[S

    move-result-object v4

    add-int/lit8 v1, v2, 0x1

    invoke-static {}, Lcom/crashlytics/android/ReportUploader;->access$100()[S

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-short v2, v4, v2

    int-to-long v4, v2

    .line 1197
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Report submisson: scheduling delayed retry in "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " seconds"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1201
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v1

    move-object v1, v3

    .line 1205
    goto :goto_2

    .line 1203
    :catch_2
    move-exception v1

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_4
    move-object v1, v3

    goto/16 :goto_2
.end method
