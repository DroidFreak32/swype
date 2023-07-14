.class Lcom/localytics/android/InAppMessagesAdapter$2;
.super Ljava/lang/Thread;
.source "InAppMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppMessagesAdapter;->updateDataSet()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppMessagesAdapter;

.field final synthetic val$fTask:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppMessagesAdapter;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/localytics/android/InAppMessagesAdapter$2;->this$0:Lcom/localytics/android/InAppMessagesAdapter;

    iput-object p2, p0, Lcom/localytics/android/InAppMessagesAdapter$2;->val$fTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppMessagesAdapter$2;->val$fTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Caught an exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
