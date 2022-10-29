.class final Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$now:Ljava/util/Date;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 274
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iput-object p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->val$now:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->val$thread:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    .line 1277
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->val$now:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->val$thread:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;->val$ex:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$200(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1278
    const/4 v0, 0x0

    .line 274
    return-object v0
.end method
