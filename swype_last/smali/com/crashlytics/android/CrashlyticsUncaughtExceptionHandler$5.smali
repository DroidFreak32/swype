.class final Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;
.super Landroid/content/BroadcastReceiver;
.source "CrashlyticsUncaughtExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/SessionDataWriter;Lcom/crashlytics/android/Crashlytics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    const/4 v1, 0x1

    # setter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z
    invoke-static {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$102(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Z)Z

    .line 232
    return-void
.end method
