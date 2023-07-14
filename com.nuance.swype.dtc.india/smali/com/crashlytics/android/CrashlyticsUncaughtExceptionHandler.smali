.class final Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;,
        Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;,
        Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;
    }
.end annotation


# static fields
.field static final ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

.field static final LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

.field static final SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final crashlytics:Lcom/crashlytics/android/Crashlytics;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

.field private final filesDir:Ljava/io/File;

.field private final idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field final isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logFileManager:Lcom/crashlytics/android/LogFileManager;

.field private powerConnected:Z

.field private final powerConnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionDataWriter:Lcom/crashlytics/android/SessionDataWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$1;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 130
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$2;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$2;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 137
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$3;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$3;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$4;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$4;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

    .line 154
    const-string/jumbo v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 157
    const-string/jumbo v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/SessionDataWriter;Lcom/crashlytics/android/Crashlytics;)V
    .locals 6
    .param p1, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "executorServiceWrapper"    # Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;
    .param p3, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .param p4, "sessionDataWriter"    # Lcom/crashlytics/android/SessionDataWriter;
    .param p5, "crashlytics"    # Lcom/crashlytics/android/Crashlytics;

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 218
    iput-object p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    .line 219
    iput-object p3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 220
    iput-object p5, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 221
    iput-object p4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/SessionDataWriter;

    .line 222
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {p5}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    .line 224
    new-instance v3, Lcom/crashlytics/android/LogFileManager;

    .line 2094
    iget-object v4, p5, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 224
    iget-object v5, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v3, v4, v5}, Lcom/crashlytics/android/LogFileManager;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/LogFileManager;

    .line 2318
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 2319
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "crash_marker"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2322
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2323
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 228
    :cond_0
    new-instance v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;

    invoke-direct {v3, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "powerConnectedFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;

    invoke-direct {v3, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3094
    .local v2, "powerDisconnectedFilter":Landroid/content/IntentFilter;
    iget-object v0, p5, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 248
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$102(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .param p1, "x1"    # Ljava/io/FilenameFilter;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .param p1, "x1"    # Ljava/util/Date;
    .param p2, "x2"    # Ljava/lang/Thread;
    .param p3, "x3"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    .line 22383
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    const-string/jumbo v3, "crash_marker"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 22385
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    .line 22387
    if-eqz v0, :cond_1

    .line 22390
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->recordFatalExceptionEvent(Ljava/lang/String;)V

    .line 22392
    new-instance v6, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22393
    :try_start_1
    invoke-static {v6}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v1

    .line 22394
    const-string/jumbo v5, "crash"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent$42ff7c1f(Lcom/crashlytics/android/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v6

    .line 22404
    :goto_0
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 22405
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 22299
    :goto_1
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V

    .line 22300
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    .line 22675
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 22304
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->shouldPromptUserBeforeSendingCrashReports()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22305
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sendSessionReports()V

    .line 56
    :cond_0
    return-void

    .line 22396
    :cond_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 22399
    :catch_0
    move-exception v0

    move-object v6, v1

    .line 22400
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "An error occurred in the fatal exception logger"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22402
    invoke-static {v0, v6}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22404
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 22405
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 22404
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_3
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 22405
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v6, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 22404
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 22399
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic access$300(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    return-object v0
.end method

.method static synthetic access$800(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Lcom/crashlytics/android/internal/models/SessionEventData;)V
    .locals 7
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .param p1, "x1"    # Lcom/crashlytics/android/internal/models/SessionEventData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    .line 23423
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v2

    .line 23425
    if-eqz v2, :cond_0

    .line 23426
    new-instance v1, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "SessionCrash"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23427
    :try_start_1
    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 23429
    :try_start_2
    invoke-static {p1, v0}, Lcom/crashlytics/android/NativeCrashWriter;->writeNativeCrash(Lcom/crashlytics/android/internal/models/SessionEventData;Lcom/crashlytics/android/CodedOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23439
    :goto_0
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23440
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 23441
    :goto_1
    return-void

    .line 23431
    :cond_0
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 23434
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 23435
    :goto_2
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23437
    invoke-static {v0, v2}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 23439
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23440
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 23439
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    const-string/jumbo v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 23440
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 23439
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 23434
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic access$900(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V

    return-void
.end method

.method private deleteSessionPartFilesFor(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 615
    .line 18624
    new-instance v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;

    invoke-direct {v3, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 615
    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 616
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method private doCloseSessions()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 554
    .line 11683
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 11685
    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v13

    .line 11686
    sget-object v11, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v13, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 11687
    const/16 v11, 0x8

    array-length v14, v13

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 11689
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_0

    .line 11690
    aget-object v15, v13, v11

    invoke-static {v15}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    .line 11691
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11689
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 11694
    :cond_0
    new-instance v11, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;-><init>(B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v13

    .line 11696
    array-length v14, v13

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_2

    aget-object v15, v13, v11

    .line 11697
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    .line 11698
    sget-object v17, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 11700
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    .line 11701
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 11703
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 11704
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 11705
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 11696
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 556
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "currentSessionId":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 11879
    const/4 v14, 0x0

    .line 11880
    const/4 v12, 0x0

    .line 11882
    :try_start_0
    new-instance v13, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "SessionUser"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v11, v15}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 11883
    :try_start_1
    invoke-static {v13}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v12

    .line 11885
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 13087
    iget-object v14, v11, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 13229
    iget-boolean v14, v14, Lio/fabric/sdk/android/services/common/IdManager;->collectUserIds:Z

    .line 12827
    if-eqz v14, :cond_7

    iget-object v11, v11, Lcom/crashlytics/android/Crashlytics;->userId:Ljava/lang/String;

    .line 11886
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 14087
    iget-object v15, v14, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 14229
    iget-boolean v15, v15, Lio/fabric/sdk/android/services/common/IdManager;->collectUserIds:Z

    .line 13835
    if-eqz v15, :cond_8

    iget-object v14, v14, Lcom/crashlytics/android/Crashlytics;->userName:Ljava/lang/String;

    move-object v15, v14

    .line 11887
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 15087
    iget-object v0, v14, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    move-object/from16 v16, v0

    .line 15229
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lio/fabric/sdk/android/services/common/IdManager;->collectUserIds:Z

    move/from16 v16, v0

    .line 14831
    if-eqz v16, :cond_9

    iget-object v14, v14, Lcom/crashlytics/android/Crashlytics;->userEmail:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11890
    :goto_4
    if-nez v11, :cond_a

    if-nez v15, :cond_a

    if-nez v14, :cond_a

    .line 11899
    const-string/jumbo v11, "Failed to flush session user file."

    invoke-static {v12, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 11900
    const-string/jumbo v11, "Failed to close session user file."

    invoke-static {v13, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 563
    :goto_5
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getSessionSettingsData()Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    move-result-object v10

    .line 565
    .local v10, "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    if-eqz v10, :cond_13

    .line 566
    iget v6, v10, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 568
    .local v6, "maxLoggedExceptionsCount":I
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v8

    .line 571
    .local v8, "sessionBeginFiles":[Ljava/io/File;
    if-eqz v8, :cond_14

    array-length v11, v8

    if-lez v11, :cond_14

    .line 572
    move-object v2, v8

    .local v2, "arr$":[Ljava/io/File;
    array-length v5, v8

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_6
    if-ge v4, v5, :cond_14

    aget-object v7, v2, v4

    .line 573
    .local v7, "sessionBeginFile":Ljava/io/File;
    invoke-static {v7}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 575
    .local v9, "sessionIdentifier":Ljava/lang/String;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 17019
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 17021
    new-instance v11, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "SessionCrash"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v17

    .line 17023
    if-eqz v17, :cond_10

    move-object/from16 v0, v17

    array-length v11, v0

    if-lez v11, :cond_10

    const/4 v11, 0x1

    .line 17024
    :goto_7
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "Session %s has fatal exception: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17027
    new-instance v12, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "SessionEvent"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v16

    .line 17029
    if-eqz v16, :cond_11

    move-object/from16 v0, v16

    array-length v12, v0

    if-lez v12, :cond_11

    const/4 v12, 0x1

    .line 17030
    :goto_8
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "Session %s has non-fatal exceptions: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v9, v15, v18

    const/16 v18, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v15, v18

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17033
    if-nez v11, :cond_3

    if-eqz v12, :cond_12

    .line 17034
    :cond_3
    const/4 v15, 0x0

    .line 17035
    const/4 v13, 0x0

    .line 17039
    :try_start_2
    new-instance v14, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v9}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17040
    :try_start_3
    invoke-static {v14}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v13

    .line 17042
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 17044
    invoke-static {v13, v7}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V

    .line 17046
    const/4 v15, 0x4

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v13, v15, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 17047
    const/4 v15, 0x5

    invoke-virtual {v13, v15, v11}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 17049
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeInitialPartsTo(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;)V

    .line 17051
    if-eqz v12, :cond_4

    .line 17052
    move-object/from16 v0, v16

    array-length v12, v0

    if-le v12, v6, :cond_16

    .line 17053
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "Trimming down to %d logged exceptions."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v16, v18

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v15, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, "SessionEvent"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v12, v15, v6, v0}, Lcom/crashlytics/android/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 17057
    new-instance v12, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "SessionEvent"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    .line 17061
    :goto_9
    invoke-static {v13, v12, v9}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeNonFatalEventsTo(Lcom/crashlytics/android/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    .line 17064
    :cond_4
    if-eqz v11, :cond_5

    .line 17065
    const/4 v11, 0x0

    aget-object v11, v17, v11

    invoke-static {v13, v11}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V

    .line 17068
    :cond_5
    const/16 v11, 0xb

    const/4 v12, 0x1

    invoke-virtual {v13, v11, v12}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 17070
    const/16 v11, 0xc

    const/4 v12, 0x3

    invoke-virtual {v13, v11, v12}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 17080
    const-string/jumbo v11, "Error flushing session file stream"

    invoke-static {v13, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 17089
    const-string/jumbo v11, "Failed to close CLS file"

    invoke-static {v14, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 17096
    :cond_6
    :goto_a
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 17097
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->deleteSessionPartFilesFor(Ljava/lang/String;)V

    .line 572
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 12827
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLoggedExceptionsCount":I
    .end local v7    # "sessionBeginFile":Ljava/io/File;
    .end local v8    # "sessionBeginFiles":[Ljava/io/File;
    .end local v9    # "sessionIdentifier":Ljava/lang/String;
    .end local v10    # "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 13835
    :cond_8
    const/4 v14, 0x0

    move-object v15, v14

    goto/16 :goto_3

    .line 14831
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 16147
    :cond_a
    if-nez v11, :cond_b

    :try_start_5
    const-string/jumbo v11, ""

    :cond_b
    invoke-static {v11}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v16

    .line 16148
    invoke-static {v15}, Lcom/crashlytics/android/SessionDataWriter;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v17

    .line 16149
    invoke-static {v14}, Lcom/crashlytics/android/SessionDataWriter;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v18

    .line 16152
    const/4 v11, 0x1

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v11

    add-int/lit8 v11, v11, 0x0

    .line 16153
    if-eqz v15, :cond_c

    .line 16154
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v19

    add-int v11, v11, v19

    .line 16156
    :cond_c
    if-eqz v14, :cond_d

    .line 16157
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v19

    add-int v11, v11, v19

    .line 16160
    :cond_d
    const/16 v19, 0x6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 16161
    invoke-virtual {v12, v11}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 16162
    const/4 v11, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v12, v11, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 16163
    if-eqz v15, :cond_e

    .line 16164
    const/4 v11, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v12, v11, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 16166
    :cond_e
    if-eqz v14, :cond_f

    .line 16167
    const/4 v11, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v12, v11, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11899
    :cond_f
    const-string/jumbo v11, "Failed to flush session user file."

    invoke-static {v12, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 11900
    const-string/jumbo v11, "Failed to close session user file."

    invoke-static {v13, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 11895
    :catch_0
    move-exception v11

    move-object v13, v14

    .line 11896
    :goto_b
    :try_start_6
    invoke-static {v11, v13}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 11897
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 11899
    :catchall_0
    move-exception v11

    :goto_c
    const-string/jumbo v14, "Failed to flush session user file."

    invoke-static {v12, v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 11900
    const-string/jumbo v12, "Failed to close session user file."

    invoke-static {v13, v12}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v11

    .line 17023
    .restart local v2    # "arr$":[Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "maxLoggedExceptionsCount":I
    .restart local v7    # "sessionBeginFile":Ljava/io/File;
    .restart local v8    # "sessionBeginFiles":[Ljava/io/File;
    .restart local v9    # "sessionIdentifier":Ljava/lang/String;
    .restart local v10    # "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 17029
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 17071
    :catch_1
    move-exception v11

    move-object v12, v13

    move-object v13, v15

    .line 17072
    :goto_d
    :try_start_7
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v14

    const-string/jumbo v15, "Fabric"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Failed to write session file for session ID: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v0, v11}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17074
    invoke-static {v11, v13}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 17080
    const-string/jumbo v11, "Error flushing session file stream"

    invoke-static {v12, v11}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 18601
    if-eqz v13, :cond_6

    .line 18603
    :try_start_8
    invoke-virtual {v13}, Lcom/crashlytics/android/ClsFileOutputStream;->closeInProgressStream()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_a

    .line 18604
    :catch_2
    move-exception v11

    .line 18605
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v12

    const-string/jumbo v13, "Fabric"

    const-string/jumbo v14, "Error closing session file stream in the presence of an exception"

    invoke-interface {v12, v13, v14, v11}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 17080
    :catchall_1
    move-exception v11

    move-object v14, v15

    :goto_e
    const-string/jumbo v12, "Error flushing session file stream"

    invoke-static {v13, v12}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 17089
    const-string/jumbo v12, "Failed to close CLS file"

    invoke-static {v14, v12}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v11

    .line 17093
    :cond_12
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto/16 :goto_a

    .line 582
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLoggedExceptionsCount":I
    .end local v7    # "sessionBeginFile":Ljava/io/File;
    .end local v8    # "sessionBeginFiles":[Ljava/io/File;
    .end local v9    # "sessionIdentifier":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 588
    .end local v10    # "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :cond_14
    :goto_f
    return-void

    .line 586
    :cond_15
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_f

    .line 17080
    .restart local v2    # "arr$":[Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "maxLoggedExceptionsCount":I
    .restart local v7    # "sessionBeginFile":Ljava/io/File;
    .restart local v8    # "sessionBeginFiles":[Ljava/io/File;
    .restart local v9    # "sessionIdentifier":Ljava/lang/String;
    .restart local v10    # "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :catchall_2
    move-exception v11

    goto :goto_e

    :catchall_3
    move-exception v11

    move-object v14, v13

    move-object v13, v12

    goto :goto_e

    .line 17071
    :catch_3
    move-exception v11

    move-object v12, v13

    move-object v13, v14

    goto :goto_d

    :catch_4
    move-exception v11

    move-object v12, v13

    move-object v13, v14

    goto :goto_d

    .line 11899
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLoggedExceptionsCount":I
    .end local v7    # "sessionBeginFile":Ljava/io/File;
    .end local v8    # "sessionBeginFiles":[Ljava/io/File;
    .end local v9    # "sessionIdentifier":Ljava/lang/String;
    .end local v10    # "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :catchall_4
    move-exception v11

    move-object v13, v14

    goto :goto_c

    .line 11895
    :catch_5
    move-exception v11

    goto/16 :goto_b

    .restart local v2    # "arr$":[Ljava/io/File;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "maxLoggedExceptionsCount":I
    .restart local v7    # "sessionBeginFile":Ljava/io/File;
    .restart local v8    # "sessionBeginFiles":[Ljava/io/File;
    .restart local v9    # "sessionIdentifier":Ljava/lang/String;
    .restart local v10    # "settingsData":Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    :cond_16
    move-object/from16 v12, v16

    goto/16 :goto_9
.end method

.method private doOpenSession()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 539
    .local v17, "startedAt":Ljava/util/Date;
    new-instance v3, Lcom/crashlytics/android/CLSUUID;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/CLSUUID;-><init>(Lio/fabric/sdk/android/services/common/IdManager;)V

    invoke-virtual {v3}, Lcom/crashlytics/android/CLSUUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "sessionIdentifier":Ljava/lang/String;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 4776
    const/4 v6, 0x0

    .line 4777
    const/4 v4, 0x0

    .line 4779
    :try_start_0
    new-instance v5, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "BeginSession"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 4780
    :try_start_1
    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v4

    .line 4782
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "Crashlytics Android SDK/%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v9}, Lcom/crashlytics/android/Crashlytics;->getVersion()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4784
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 4786
    invoke-static {v4, v2, v3, v6, v7}, Lcom/crashlytics/android/SessionDataWriter;->writeBeginSession(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4791
    const-string/jumbo v3, "Failed to flush to session begin file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4792
    const-string/jumbo v3, "Failed to close begin session file."

    invoke-static {v5, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 4797
    const/4 v6, 0x0

    .line 4798
    const/4 v4, 0x0

    .line 4800
    :try_start_2
    new-instance v5, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "SessionApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 4801
    :try_start_3
    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v4

    .line 4803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 5792
    iget-object v3, v3, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    .line 4804
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 5810
    iget-object v6, v6, Lcom/crashlytics/android/Crashlytics;->versionCode:Ljava/lang/String;

    .line 4805
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 6806
    iget-object v7, v7, Lcom/crashlytics/android/Crashlytics;->versionName:Ljava/lang/String;

    .line 4806
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v8}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 4807
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 7802
    iget-object v9, v9, Lcom/crashlytics/android/Crashlytics;->installerPackageName:Ljava/lang/String;

    .line 4807
    invoke-static {v9}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v9

    .line 8021
    iget v9, v9, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->id:I

    .line 4810
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/SessionDataWriter;

    .line 8066
    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    .line 8067
    invoke-static {v6}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v6

    .line 8068
    invoke-static {v7}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v7

    .line 8069
    invoke-static {v8}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v8

    .line 8072
    const/4 v11, 0x7

    const/4 v12, 0x2

    invoke-virtual {v4, v11, v12}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 8387
    const/4 v11, 0x1

    invoke-static {v11, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v11

    add-int/lit8 v11, v11, 0x0

    .line 8388
    const/4 v12, 0x2

    invoke-static {v12, v6}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v12

    add-int/2addr v11, v12

    .line 8389
    const/4 v12, 0x3

    invoke-static {v12, v7}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v12

    add-int/2addr v11, v12

    .line 8390
    invoke-virtual {v10}, Lcom/crashlytics/android/SessionDataWriter;->getSessionAppOrgSize()I

    move-result v12

    .line 8391
    const/4 v13, 0x5

    invoke-static {v13}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v13

    invoke-static {v12}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 8393
    const/4 v12, 0x6

    invoke-static {v12, v8}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v12

    add-int/2addr v11, v12

    .line 8394
    const/16 v12, 0xa

    invoke-static {v12, v9}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v12

    add-int/2addr v11, v12

    .line 8073
    invoke-virtual {v4, v11}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 8075
    const/4 v11, 0x1

    invoke-virtual {v4, v11, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 8076
    const/4 v3, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 8077
    const/4 v3, 0x3

    invoke-virtual {v4, v3, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 8080
    const/4 v3, 0x5

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 8081
    invoke-virtual {v10}, Lcom/crashlytics/android/SessionDataWriter;->getSessionAppOrgSize()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 8082
    new-instance v3, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v3}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    iget-object v3, v10, Lcom/crashlytics/android/SessionDataWriter;->context:Landroid/content/Context;

    invoke-static {v3}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeString$4f708078(Ljava/lang/String;)V

    .line 8085
    const/4 v3, 0x6

    invoke-virtual {v4, v3, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 8086
    const/16 v3, 0xa

    invoke-virtual {v4, v3, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4817
    const-string/jumbo v3, "Failed to flush to session app file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4818
    const-string/jumbo v3, "Failed to close session app file."

    invoke-static {v5, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 8823
    const/4 v6, 0x0

    .line 8824
    const/4 v4, 0x0

    .line 8827
    :try_start_4
    new-instance v5, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "SessionOS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 8829
    :try_start_5
    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v4

    .line 8831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 9094
    iget-object v3, v3, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 8831
    invoke-static {v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    move-result v3

    .line 10090
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v6

    .line 10091
    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v7}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v7

    .line 10093
    const/16 v8, 0x8

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 10094
    invoke-static {v6, v7}, Lcom/crashlytics/android/SessionDataWriter;->getSessionOSSize$3c0313b2(Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 10095
    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V

    .line 10096
    const/4 v8, 0x2

    invoke-virtual {v4, v8, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 10097
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 10098
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8838
    const-string/jumbo v3, "Failed to flush to session OS file."

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8839
    const-string/jumbo v3, "Failed to close session OS file."

    invoke-static {v5, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 10845
    const/4 v5, 0x0

    .line 10846
    const/4 v4, 0x0

    .line 10848
    :try_start_6
    new-instance v18, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SessionDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v6}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 10849
    :try_start_7
    invoke-static/range {v18 .. v18}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result-object v3

    .line 10851
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 11094
    iget-object v6, v4, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 10852
    new-instance v10, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 10854
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 11307
    const-string/jumbo v4, ""

    .line 11309
    iget-boolean v7, v5, Lio/fabric/sdk/android/services/common/IdManager;->collectHardwareIds:Z

    if-eqz v7, :cond_0

    .line 11310
    invoke-virtual {v5}, Lio/fabric/sdk/android/services/common/IdManager;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    .line 11312
    if-nez v4, :cond_0

    .line 11313
    iget-object v4, v5, Lio/fabric/sdk/android/services/common/IdManager;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 11314
    const-string/jumbo v4, "crashlytics.installation.id"

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11316
    if-nez v4, :cond_0

    .line 11317
    invoke-virtual {v5, v7}, Lio/fabric/sdk/android/services/common/IdManager;->createInstallationUUID(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 10855
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->getCpuArchitectureInt()I

    move-result v5

    .line 10856
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 10857
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->getTotalRamInBytes()J

    move-result-wide v8

    .line 10858
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v12

    .line 10859
    invoke-static {v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v12

    .line 10861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v13}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v13

    .line 10863
    invoke-static {v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->getDeviceState(Landroid/content/Context;)I

    move-result v14

    .line 10865
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v3 .. v16}, Lcom/crashlytics/android/SessionDataWriter;->writeSessionDevice(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 10873
    const-string/jumbo v4, "Failed to flush session device info."

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 10874
    const-string/jumbo v3, "Failed to close session device file."

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 10875
    return-void

    .line 4787
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 4788
    :goto_0
    :try_start_9
    invoke-static {v3, v5}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 4789
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4791
    :catchall_0
    move-exception v3

    :goto_1
    const-string/jumbo v6, "Failed to flush to session begin file."

    invoke-static {v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4792
    const-string/jumbo v4, "Failed to close begin session file."

    invoke-static {v5, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .line 4813
    :catch_1
    move-exception v3

    move-object v5, v6

    .line 4814
    :goto_2
    :try_start_a
    invoke-static {v3, v5}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 4815
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4817
    :catchall_1
    move-exception v3

    :goto_3
    const-string/jumbo v6, "Failed to flush to session app file."

    invoke-static {v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4818
    const-string/jumbo v4, "Failed to close session app file."

    invoke-static {v5, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .line 8834
    :catch_2
    move-exception v3

    move-object v5, v6

    .line 8835
    :goto_4
    :try_start_b
    invoke-static {v3, v5}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 8836
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 8838
    :catchall_2
    move-exception v3

    :goto_5
    const-string/jumbo v6, "Failed to flush to session OS file."

    invoke-static {v4, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 8839
    const-string/jumbo v4, "Failed to close session OS file."

    invoke-static {v5, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .line 10869
    :catch_3
    move-exception v3

    .line 10870
    :goto_6
    :try_start_c
    invoke-static {v3, v5}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 10871
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 10873
    :catchall_3
    move-exception v3

    move-object/from16 v18, v5

    :goto_7
    const-string/jumbo v5, "Failed to flush session device info."

    invoke-static {v4, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->flushOrLog(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 10874
    const-string/jumbo v4, "Failed to close session device file."

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .line 10873
    :catchall_4
    move-exception v3

    move-object/from16 v18, v5

    goto :goto_7

    :catchall_5
    move-exception v3

    goto :goto_7

    :catchall_6
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    goto :goto_7

    .line 10869
    :catch_4
    move-exception v3

    move-object/from16 v5, v18

    goto :goto_6

    :catch_5
    move-exception v4

    move-object/from16 v5, v18

    move-object/from16 v19, v3

    move-object v3, v4

    move-object/from16 v4, v19

    goto :goto_6

    .line 8838
    :catchall_7
    move-exception v3

    move-object v5, v6

    goto :goto_5

    .line 8834
    :catch_6
    move-exception v3

    goto :goto_4

    .line 4817
    :catchall_8
    move-exception v3

    move-object v5, v6

    goto :goto_3

    .line 4813
    :catch_7
    move-exception v3

    goto :goto_2

    .line 4791
    :catchall_9
    move-exception v3

    move-object v5, v6

    goto :goto_1

    .line 4787
    :catch_8
    move-exception v3

    goto :goto_0
.end method

.method private getCurrentSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 473
    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    const-string/jumbo v2, "BeginSession"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 475
    .local v0, "sessionBeginFiles":[Ljava/io/File;
    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 476
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "sessionFile"    # Ljava/io/File;

    .prologue
    .line 490
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSessionReports()V
    .locals 6

    .prologue
    .line 1177
    .line 21628
    sget-object v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1177
    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1181
    .local v3, "toSend":Ljava/io/File;
    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v5, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;

    invoke-direct {v5, p0, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1202
    .end local v3    # "toSend":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeInitialPartsTo(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;)V
    .locals 10
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1117
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v4, "SessionUser"

    aput-object v4, v0, v8

    const/4 v4, 0x1

    const-string/jumbo v5, "SessionApp"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "SessionOS"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "SessionDevice"

    aput-object v5, v0, v4

    .line 1121
    .local v0, "arr$":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v9, :cond_1

    aget-object v3, v0, v1

    .line 1122
    .local v3, "tag":Ljava/lang/String;
    new-instance v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1125
    .local v2, "sessionPartFiles":[Ljava/io/File;
    array-length v4, v2

    if-nez v4, :cond_0

    .line 1126
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Can\'t find "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " data for session ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Collecting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data for session ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    aget-object v4, v2, v8

    invoke-static {p1, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V

    goto :goto_1

    .line 1134
    .end local v2    # "sessionPartFiles":[Ljava/io/File;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static writeNonFatalEventsTo(Lcom/crashlytics/android/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p1, "nonFatalFiles"    # [Ljava/io/File;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 1102
    sget-object v5, Lio/fabric/sdk/android/services/common/CommonUtils;->FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1104
    move-object v0, p1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1106
    .local v4, "nonFatalFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1109
    invoke-static {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v1

    .line 1111
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Error writting non-fatal to session."

    invoke-interface {v5, v6, v7, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1114
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "nonFatalFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeSessionEvent$42ff7c1f(Lcom/crashlytics/android/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 31
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p2, "time"    # Ljava/util/Date;
    .param p3, "thread"    # Ljava/lang/Thread;
    .param p4, "ex"    # Ljava/lang/Throwable;
    .param p5, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    move-object/from16 v25, v0

    .line 19094
    move-object/from16 v0, v25

    iget-object v14, v0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 908
    .local v14, "context":Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v16, v26, v28

    .line 909
    .local v16, "eventTime":J
    invoke-static {v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v13

    .line 910
    .local v13, "batteryLevel":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v14, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBatteryVelocity(Landroid/content/Context;Z)I

    move-result v4

    .line 911
    .local v4, "batteryVelocity":I
    invoke-static {v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->getProximitySensorEnabled(Landroid/content/Context;)Z

    move-result v21

    .line 912
    .local v21, "proximityEnabled":Z
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 913
    .local v5, "orientation":I
    invoke-static {}, Lio/fabric/sdk/android/services/common/CommonUtils;->getTotalRamInBytes()J

    move-result-wide v26

    invoke-static {v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->calculateFreeRamInBytes(Landroid/content/Context;)J

    move-result-wide v28

    sub-long v6, v26, v28

    .line 915
    .local v6, "usedRamBytes":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lio/fabric/sdk/android/services/common/CommonUtils;->calculateUsedDiskSpaceInBytes(Ljava/lang/String;)J

    move-result-wide v8

    .line 918
    .local v8, "diskUsedBytes":J
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v14}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppProcessInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v22

    .line 920
    .local v22, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 921
    .local v23, "stacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    .line 925
    .local v18, "exceptionStack":[Ljava/lang/StackTraceElement;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v10

    .line 926
    .local v10, "allStackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Thread;

    move-object/from16 v24, v0

    .line 927
    .local v24, "threads":[Ljava/lang/Thread;
    const/16 v19, 0x0

    .line 928
    .local v19, "i":I
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 929
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Thread;

    aput-object v25, v24, v19

    .line 930
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    add-int/lit8 v19, v19, 0x1

    .line 932
    goto :goto_0

    .line 940
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_0
    const-string/jumbo v25, "com.crashlytics.CollectCustomKeys"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v25

    if-nez v25, :cond_7

    .line 941
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 952
    .local v11, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/SessionDataWriter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/LogFileManager;

    move-object/from16 v25, v0

    .line 20146
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/crashlytics/android/LogFileManager;->logFile:Lio/fabric/sdk/android/services/common/QueueFile;

    move-object/from16 v25, v0

    .line 20182
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/crashlytics/android/SessionDataWriter;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 20183
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/crashlytics/android/SessionDataWriter;->stacks:Ljava/util/List;

    .line 20184
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/crashlytics/android/SessionDataWriter;->exceptionStack:[Ljava/lang/StackTraceElement;

    .line 20185
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/crashlytics/android/SessionDataWriter;->threads:[Ljava/lang/Thread;

    .line 20187
    invoke-static/range {v25 .. v25}, Lcom/crashlytics/android/LogFileManager;->getByteStringForLog(Lio/fabric/sdk/android/services/common/QueueFile;)Lcom/crashlytics/android/ByteString;

    move-result-object v27

    .line 20189
    if-nez v27, :cond_2

    .line 20190
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 20194
    :cond_2
    const-string/jumbo v28, "There was a problem closing the Crashlytics log file."

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 20196
    const/16 v25, 0xa

    const/16 v28, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 20473
    const/16 v25, 0x1

    move/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v25

    add-int/lit8 v25, v25, 0x0

    .line 20474
    const/16 v28, 0x2

    invoke-static/range {p5 .. p5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v28

    add-int v25, v25, v28

    .line 20475
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppSize(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I

    move-result v28

    .line 20476
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v29

    invoke-static/range {v28 .. v28}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v30

    add-int v29, v29, v30

    add-int v28, v28, v29

    add-int v25, v25, v28

    .line 20478
    invoke-static/range {v4 .. v9}, Lcom/crashlytics/android/SessionDataWriter;->getEventDeviceSize$45a61cda(IIJJ)I

    move-result v28

    .line 20480
    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v29

    invoke-static/range {v28 .. v28}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v30

    add-int v29, v29, v30

    add-int v28, v28, v29

    add-int v25, v25, v28

    .line 20483
    if-eqz v27, :cond_3

    .line 20484
    invoke-static/range {v27 .. v27}, Lcom/crashlytics/android/SessionDataWriter;->getEventLogSize(Lcom/crashlytics/android/ByteString;)I

    move-result v28

    .line 20485
    const/16 v29, 0x6

    invoke-static/range {v29 .. v29}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v29

    invoke-static/range {v28 .. v28}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v30

    add-int v29, v29, v30

    add-int v28, v28, v29

    add-int v25, v25, v28

    .line 20197
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 20200
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 20201
    const/16 v25, 0x2

    invoke-static/range {p5 .. p5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v28

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 21212
    const/16 v25, 0x3

    const/16 v28, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 21213
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v5, v11}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppSize(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 21215
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/SessionDataWriter;->writeSessionEventAppExecution(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 21217
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 21218
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/crashlytics/android/SessionDataWriter;->writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/CodedOutputStream;Ljava/util/Map;)V

    .line 21222
    :cond_4
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/crashlytics/android/SessionDataWriter;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 21224
    const/16 v28, 0x3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/crashlytics/android/SessionDataWriter;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 21228
    :cond_5
    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 21363
    const/16 v25, 0x5

    const/16 v26, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 21364
    invoke-static/range {v4 .. v9}, Lcom/crashlytics/android/SessionDataWriter;->getEventDeviceSize$45a61cda(IIJJ)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 21366
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/crashlytics/android/CodedOutputStream;->writeFloat$255e752(F)V

    .line 21367
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeSInt32$255f295(I)V

    .line 21368
    const/16 v25, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 21369
    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 21370
    const/16 v25, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 21371
    const/16 v25, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 21375
    if-eqz v27, :cond_6

    .line 21376
    const/16 v25, 0x6

    const/16 v26, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 21377
    invoke-static/range {v27 .. v27}, Lcom/crashlytics/android/SessionDataWriter;->getEventLogSize(Lcom/crashlytics/android/ByteString;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 21378
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 956
    :cond_6
    return-void

    .line 943
    .end local v11    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    move-object/from16 v25, v0

    .line 19784
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 944
    .restart local v11    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 948
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .end local v11    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v12, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v11, v12

    .end local v12    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 21224
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_2
.end method

.method private static writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V
    .locals 9
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1142
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1143
    long-to-int v5, v6

    new-array v0, v5, [B

    .line 1145
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 1148
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1153
    .local v4, "offset":I
    :goto_0
    :try_start_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .local v3, "numRead":I
    if-ltz v3, :cond_0

    .line 1155
    add-int/2addr v4, v3

    goto :goto_0

    .line 1158
    .end local v3    # "numRead":I
    :cond_0
    const-string/jumbo v5, "Failed to close file input stream."

    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawBytes([B)V

    .line 1166
    .end local v0    # "bytes":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "offset":I
    :goto_1
    return-void

    .line 1158
    .restart local v0    # "bytes":[B
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    :goto_2
    const-string/jumbo v6, "Failed to close file input stream."

    invoke-static {v1, v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v5

    .line 1163
    .end local v0    # "bytes":[B
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1158
    .restart local v0    # "bytes":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "offset":I
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method final listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 18647
    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method final listSessionBeginFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 632
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    const-string/jumbo v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Crashlytics is handling uncaught exception \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" from thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 266
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 4094
    iget-object v0, v3, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 267
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 274
    .local v2, "now":Ljava/util/Date;
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 288
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    .end local v2    # "now":Ljava/util/Date;
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "An error occurred in the uncaught exception handler"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 288
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 285
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 288
    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
