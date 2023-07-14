.class Lcom/localytics/android/InAppManager$10$1;
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


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$10;)V
    .locals 0

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/localytics/android/InAppManager$10$1;->this$1:Lcom/localytics/android/InAppManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2234
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$10$1;->this$1:Lcom/localytics/android/InAppManager$10;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$10;->val$appContext:Landroid/content/Context;

    const-string/jumbo v2, "Downloading the campaign...\nIt\'ll be shown in few seconds."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    :goto_0
    return-void

    .line 2236
    :catch_0
    move-exception v0

    .line 2238
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_IN_APP_TEST_SHOW_CAMPAIGN exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
