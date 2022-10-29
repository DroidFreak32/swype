.class Lcom/localytics/android/MarketingHandler$5;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .registers 2

    .prologue
    .line 524
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$5;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v1, v1, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    invoke-virtual {v1}, Lcom/localytics/android/InAppManager;->showInAppTest()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 536
    :goto_7
    return-void

    .line 532
    :catch_8
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exception handling MESSAGE_SHOW_IN_APP_MESSAGES_TEST"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
