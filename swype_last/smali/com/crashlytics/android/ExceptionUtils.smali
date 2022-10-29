.class final Lcom/crashlytics/android/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method private static writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    .registers 13
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 60
    const/4 v4, 0x1

    .line 62
    .local v4, "first":Z
    :goto_1
    if-eqz p0, :cond_92

    .line 1088
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    .line 1089
    if-nez v8, :cond_6b

    .line 1090
    const/4 v7, 0x0

    .line 64
    .local v7, "message":Ljava/lang/String;
    :goto_a
    if-eqz v7, :cond_76

    .line 66
    :goto_c
    if-eqz v4, :cond_7a

    const-string/jumbo v1, ""

    .line 67
    .local v1, "causedBy":Ljava/lang/String;
    :goto_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_46
    if-ge v5, v6, :cond_7e

    aget-object v3, v0, v5

    .line 72
    .local v3, "element":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\tat "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 1093
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "causedBy":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Ljava/lang/String;
    :cond_6b
    const-string/jumbo v9, "(\r\n|\n|\u000c)"

    const-string/jumbo v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 64
    .restart local v7    # "message":Ljava/lang/String;
    :cond_76
    const-string/jumbo v7, ""

    goto :goto_c

    .line 66
    :cond_7a
    const-string/jumbo v1, "Caused by: "

    goto :goto_11

    .line 75
    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v1    # "causedBy":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_7e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_81} :catch_84

    move-result-object p0

    .line 76
    goto/16 :goto_1

    .line 77
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "causedBy":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Ljava/lang/String;
    :catch_84
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Fabric"

    const-string/jumbo v10, "Could not write stack trace"

    invoke-interface {v8, v9, v10, v2}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_92
    return-void
.end method

.method public static writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    if-eqz p1, :cond_11

    .line 1047
    const/4 v2, 0x0

    .line 1049
    :try_start_3
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_12
    .catchall {:try_start_3 .. :try_end_8} :catchall_28

    .line 1050
    :try_start_8
    invoke-static {p0, v1}, Lcom/crashlytics/android/ExceptionUtils;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_33
    .catchall {:try_start_8 .. :try_end_b} :catchall_31

    .line 1054
    const-string/jumbo v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1055
    :cond_11
    :goto_11
    return-void

    .line 1051
    :catch_12
    move-exception v0

    move-object v1, v2

    .line 1052
    :goto_14
    :try_start_14
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "Failed to create PrintWriter"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_31

    .line 1054
    const-string/jumbo v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_11

    :catchall_28
    move-exception v0

    move-object v1, v2

    :goto_2a
    const-string/jumbo v2, "Failed to close stack trace writer."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_31
    move-exception v0

    goto :goto_2a

    .line 1051
    :catch_33
    move-exception v0

    goto :goto_14
.end method
