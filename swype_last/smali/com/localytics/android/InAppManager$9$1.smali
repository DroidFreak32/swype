.class Lcom/localytics/android/InAppManager$9$1;
.super Landroid/os/AsyncTask;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$9;->call([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppManager$9;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$9;)V
    .registers 2

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/localytics/android/InAppManager$9$1;->this$1:Lcom/localytics/android/InAppManager$9;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2157
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager$9$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2163
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InAppManager$9$1;->this$1:Lcom/localytics/android/InAppManager$9;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$9;->this$0:Lcom/localytics/android/InAppManager;

    iget-object v1, v1, Lcom/localytics/android/InAppManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2170
    :goto_a
    return-object v1

    .line 2165
    :catch_b
    move-exception v0

    .line 2167
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_IN_APP_TEST_COPY_INSTALL_ID exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2157
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/InAppManager$9$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 6
    .param p1, "installId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2179
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 2181
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3f

    .line 2183
    iget-object v1, p0, Lcom/localytics/android/InAppManager$9$1;->this$1:Lcom/localytics/android/InAppManager$9;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$9;->val$appContext:Landroid/content/Context;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 2184
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2191
    :goto_1e
    iget-object v1, p0, Lcom/localytics/android/InAppManager$9$1;->this$1:Lcom/localytics/android/InAppManager$9;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$9;->val$appContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been copied to the clipboard."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2202
    :goto_3e
    return-void

    .line 2188
    :cond_3f
    iget-object v1, p0, Lcom/localytics/android/InAppManager$9$1;->this$1:Lcom/localytics/android/InAppManager$9;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$9;->val$appContext:Landroid/content/Context;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 2189
    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_1e

    .line 2198
    :catch_50
    move-exception v0

    .line 2200
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingCallable ON_IN_APP_TEST_COPY_INSTALL_ID exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 2195
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_58
    :try_start_58
    iget-object v1, p0, Lcom/localytics/android/InAppManager$9$1;->this$1:Lcom/localytics/android/InAppManager$9;

    iget-object v1, v1, Lcom/localytics/android/InAppManager$9;->val$appContext:Landroid/content/Context;

    const-string/jumbo v2, "No install id found. Please check your integration."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_67} :catch_50

    goto :goto_3e
.end method
