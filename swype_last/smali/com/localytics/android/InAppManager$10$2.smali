.class Lcom/localytics/android/InAppManager$10$2;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$10;->call([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppManager$10;

.field final synthetic val$creativeExist:Z

.field final synthetic val$mainThreadHandler:Landroid/os/Handler;

.field final synthetic val$marketingMessage:Lcom/localytics/android/MarketingMessage;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$10;Lcom/localytics/android/MarketingMessage;ZLandroid/os/Handler;)V
    .registers 5

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iput-object p2, p0, Lcom/localytics/android/InAppManager$10$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    iput-boolean p3, p0, Lcom/localytics/android/InAppManager$10$2;->val$creativeExist:Z

    iput-object p4, p0, Lcom/localytics/android/InAppManager$10$2;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2250
    new-instance v0, Lcom/localytics/android/InAppManager$10$2$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/InAppManager$10$2$1;-><init>(Lcom/localytics/android/InAppManager$10$2;)V

    .line 2282
    .local v0, "displayRunnable":Ljava/lang/Runnable;
    :try_start_5
    iget-boolean v3, p0, Lcom/localytics/android/InAppManager$10$2;->val$creativeExist:Z

    if-eqz v3, :cond_f

    .line 2284
    iget-object v3, p0, Lcom/localytics/android/InAppManager$10$2;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2304
    :goto_e
    return-void

    .line 2288
    :cond_f
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2289
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    iget-object v3, p0, Lcom/localytics/android/InAppManager$10$2;->val$marketingMessage:Lcom/localytics/android/MarketingMessage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2290
    iget-object v3, p0, Lcom/localytics/android/InAppManager$10$2;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v3, v3, Lcom/localytics/android/InAppManager$10;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v3, v3, Lcom/localytics/android/InAppManager;->mCreativeManager:Lcom/localytics/android/CreativeManager;

    new-instance v4, Lcom/localytics/android/InAppManager$10$2$2;

    invoke-direct {v4, p0, v0}, Lcom/localytics/android/InAppManager$10$2$2;-><init>(Lcom/localytics/android/InAppManager$10$2;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2, v4}, Lcom/localytics/android/CreativeManager;->priorityDownloadCreatives(Ljava/util/List;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_e

    .line 2300
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
    :catch_28
    move-exception v1

    .line 2302
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v3, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
