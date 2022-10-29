.class final Lcom/crashlytics/android/ReportUploader;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/ReportUploader$Worker;
    }
.end annotation


# static fields
.field static final HEADER_INVALID_CLS_FILE:Ljava/util/Map;
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

.field private static final RETRY_INTERVALS:[S

.field private static final crashFileFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final createReportCall:Lcom/crashlytics/android/CreateReportSpiCall;

.field private final fileAccessLock:Ljava/lang/Object;

.field private uploadThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/crashlytics/android/ReportUploader$1;

    invoke-direct {v0}, Lcom/crashlytics/android/ReportUploader$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/ReportUploader;->crashFileFilter:Ljava/io/FilenameFilter;

    .line 32
    const-string/jumbo v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/ReportUploader;->HEADER_INVALID_CLS_FILE:Ljava/util/Map;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/crashlytics/android/ReportUploader;->RETRY_INTERVALS:[S

    return-void

    :array_1c
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Lcom/crashlytics/android/CreateReportSpiCall;)V
    .registers 4
    .param p1, "createReportCall"    # Lcom/crashlytics/android/CreateReportSpiCall;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    .line 43
    if-nez p1, :cond_15

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_15
    iput-object p1, p0, Lcom/crashlytics/android/ReportUploader;->createReportCall:Lcom/crashlytics/android/CreateReportSpiCall;

    .line 47
    return-void
.end method

.method static synthetic access$002$9bb8a18(Lcom/crashlytics/android/ReportUploader;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/crashlytics/android/ReportUploader;

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/ReportUploader;->uploadThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100()[S
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/crashlytics/android/ReportUploader;->RETRY_INTERVALS:[S

    return-object v0
.end method


# virtual methods
.method final findReports()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/Report;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 103
    iget-object v7, p0, Lcom/crashlytics/android/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v7

    .line 104
    :try_start_6
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v6

    sget-object v8, Lcom/crashlytics/android/ReportUploader;->crashFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v6, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "clsFiles":[Ljava/io/File;
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_3e

    .line 107
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 108
    .local v5, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/Report;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1d
    if-ge v3, v4, :cond_41

    aget-object v2, v0, v3

    .line 109
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Found crash report "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v6, Lcom/crashlytics/android/SessionReport;

    invoke-direct {v6, v2}, Lcom/crashlytics/android/SessionReport;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 105
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "clsFiles":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/Report;>;"
    :catchall_3e
    move-exception v6

    :try_start_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v6

    .line 113
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "clsFiles":[Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/Report;>;"
    :cond_41
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 114
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 117
    :cond_4a
    return-object v5
.end method

.method final forceUpload(Lcom/crashlytics/android/Report;)Z
    .registers 12
    .param p1, "report"    # Lcom/crashlytics/android/Report;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "removed":Z
    iget-object v6, p0, Lcom/crashlytics/android/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v6

    .line 77
    :try_start_4
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v5

    .line 1094
    iget-object v0, v5, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 79
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lcom/crashlytics/android/CreateReportRequest;

    new-instance v5, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p1}, Lcom/crashlytics/android/CreateReportRequest;-><init>(Ljava/lang/String;Lcom/crashlytics/android/Report;)V

    .line 81
    .local v3, "requestData":Lcom/crashlytics/android/CreateReportRequest;
    iget-object v5, p0, Lcom/crashlytics/android/ReportUploader;->createReportCall:Lcom/crashlytics/android/CreateReportSpiCall;

    invoke-interface {v5, v3}, Lcom/crashlytics/android/CreateReportSpiCall;->invoke(Lcom/crashlytics/android/CreateReportRequest;)Z

    move-result v4

    .line 83
    .local v4, "sent":Z
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string/jumbo v8, "Fabric"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Crashlytics report upload "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_4d

    const-string/jumbo v5, "complete: "

    :goto_32
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/crashlytics/android/Report;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v4, :cond_4b

    .line 87
    invoke-interface {p1}, Lcom/crashlytics/android/Report;->remove()Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4a} :catch_51
    .catchall {:try_start_4 .. :try_end_4a} :catchall_6d

    .line 88
    const/4 v2, 0x1

    .line 95
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "requestData":Lcom/crashlytics/android/CreateReportRequest;
    .end local v4    # "sent":Z
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_6d

    .line 96
    return v2

    .line 83
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "requestData":Lcom/crashlytics/android/CreateReportRequest;
    .restart local v4    # "sent":Z
    :cond_4d
    :try_start_4d
    const-string/jumbo v5, "FAILED: "
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_6d

    goto :goto_32

    .line 90
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "requestData":Lcom/crashlytics/android/CreateReportRequest;
    .end local v4    # "sent":Z
    :catch_51
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    :try_start_52
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Error occurred sending report "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_6d
    move-exception v5

    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_52 .. :try_end_6f} :catchall_6d

    throw v5
.end method

.method public final declared-synchronized uploadReports(F)V
    .registers 5
    .param p1, "delay"    # F

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-nez v0, :cond_19

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crashlytics/android/ReportUploader$Worker;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/ReportUploader$Worker;-><init>(Lcom/crashlytics/android/ReportUploader;F)V

    const-string/jumbo v2, "Crashlytics Report Uploader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/ReportUploader;->uploadThread:Ljava/lang/Thread;

    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/ReportUploader;->uploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 58
    :cond_19
    monitor-exit p0

    return-void

    .line 54
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
