.class Lcom/localytics/android/PushManager$1$1;
.super Landroid/os/AsyncTask;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/PushManager$1;->onPostExecute(Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/localytics/android/PushManager$1;

.field final synthetic val$pushRegID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/PushManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iput-object p2, p0, Lcom/localytics/android/PushManager$1$1;->val$pushRegID:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 16
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/localytics/android/PushManager$1$1;->val$pushRegID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v8, v8, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iget-object v8, v8, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "installID":Ljava/lang/String;
    const-string/jumbo v8, "https://pushapi.localytics.com/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v11, v11, Lcom/localytics/android/PushManager$1;->val$campaign:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v11, v11, Lcom/localytics/android/PushManager$1;->val$creative:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/localytics/android/PushManager$1$1;->val$pushRegID:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v10, 0x4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v11, v11, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iget-object v11, v11, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v11}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 220
    .local v7, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 223
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v8, v8, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iget-object v8, v8, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v8}, Lcom/localytics/android/LocalyticsDao;->getProxy()Ljava/net/Proxy;

    move-result-object v6

    .line 224
    .local v6, "proxy":Ljava/net/Proxy;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v6}, Lcom/localytics/android/BaseUploadThread;->createURLConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 225
    const/16 v8, 0x1388

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 226
    const/16 v8, 0x1388

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 227
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 228
    const-string/jumbo v8, "x-install-id"

    invoke-virtual {v2, v8, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v8, "x-app-id"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v9, v9, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iget-object v9, v9, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v9}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v8, "x-client-version"

    sget-object v9, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v8, "x-app-version"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v9, v9, Lcom/localytics/android/PushManager$1;->this$0:Lcom/localytics/android/PushManager;

    iget-object v9, v9, Lcom/localytics/android/PushManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v9}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v9, "x-customer-id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v8, v8, Lcom/localytics/android/PushManager$1;->val$customerIdFuture:Ljava/util/concurrent/Future;

    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 268
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "installID":Ljava/lang/String;
    .end local v6    # "proxy":Ljava/net/Proxy;
    .end local v7    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    return-object v8

    .line 235
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "installID":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unfortunately, something went wrong. Push test activation was unsuccessful."

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "errorMessageBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/localytics/android/Localytics;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    instance-of v8, v3, Ljava/io/FileNotFoundException;

    if-eqz v8, :cond_2

    .line 240
    const-string/jumbo v8, "\n\nCause:\nPush registration token has not yet been processed. Please wait a few minutes and try again."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v8, "Activating push test has failed"

    invoke-static {v8, v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 256
    if-eqz v2, :cond_1

    .line 258
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 263
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "installID":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Exception while handling test mode"

    invoke-static {v8, v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 246
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "installID":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 248
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v8, "Exception while handling test mode"

    invoke-static {v8, v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 250
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v3

    .line 252
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_7
    const-string/jumbo v8, "Exception while handling test mode"

    invoke-static {v8, v3}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 256
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_3

    .line 258
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/PushManager$1$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v1, v1, Lcom/localytics/android/PushManager$1;->val$appContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exception while handling test mode"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/PushManager$1$1;->val$pushRegID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v1, v1, Lcom/localytics/android/PushManager$1;->val$appContext:Landroid/content/Context;

    const-string/jumbo v2, "Push Test Activated\nYou should receive a notification soon."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/localytics/android/PushManager$1$1;->this$1:Lcom/localytics/android/PushManager$1;

    iget-object v1, v1, Lcom/localytics/android/PushManager$1;->val$appContext:Landroid/content/Context;

    const-string/jumbo v2, "App isn\'t registered with GCM to receive push notifications. Please make sure that Localytics.registerPush(<PROJECT_ID>) has been called."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exception while handling test mode"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
