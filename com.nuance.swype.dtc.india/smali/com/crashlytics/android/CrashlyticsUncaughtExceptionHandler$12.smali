.class final Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 717
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    sget-object v2, Lcom/crashlytics/android/ClsFileOutputStream;->TEMP_FILENAME_FILTER:Ljava/io/FilenameFilter;

    invoke-static {v0, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$1100(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1760
    new-instance v2, Ljava/io/File;

    iget-object v0, v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v5, "invalidClsFiles"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 1767
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1771
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1734
    :cond_1
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 1735
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Found invalid session part file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    new-instance v6, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$13;

    invoke-direct {v6, v3, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$13;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;)V

    .line 1745
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 1747
    invoke-virtual {v3, v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_2

    aget-object v8, v6, v0

    .line 1748
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Deleting session file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1747
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1734
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 719
    :cond_3
    return-void
.end method
