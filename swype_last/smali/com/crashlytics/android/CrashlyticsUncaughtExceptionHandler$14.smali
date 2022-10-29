.class final Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sendSessionReports()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$toSend:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iput-object p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->val$toSend:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 1184
    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    .line 2094
    iget-object v2, v2, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 1184
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1185
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 3038
    # getter for: Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v2

    .line 1187
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v1

    .line 1189
    .local v1, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/Crashlytics;->getCreateReportSpiCall(Lio/fabric/sdk/android/services/settings/SettingsData;)Lcom/crashlytics/android/CreateReportSpiCall;

    move-result-object v0

    .line 1194
    .local v0, "call":Lcom/crashlytics/android/CreateReportSpiCall;
    if-eqz v0, :cond_38

    .line 1195
    new-instance v2, Lcom/crashlytics/android/ReportUploader;

    invoke-direct {v2, v0}, Lcom/crashlytics/android/ReportUploader;-><init>(Lcom/crashlytics/android/CreateReportSpiCall;)V

    new-instance v3, Lcom/crashlytics/android/SessionReport;

    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->val$toSend:Ljava/io/File;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
    invoke-static {}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$1200()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/crashlytics/android/SessionReport;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/ReportUploader;->forceUpload(Lcom/crashlytics/android/Report;)Z

    .line 1199
    .end local v0    # "call":Lcom/crashlytics/android/CreateReportSpiCall;
    .end local v1    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_38
    return-void
.end method
