.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;
.super Landroid/os/AsyncTask;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadStagingResourcesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private exceptions:[Ljava/lang/Exception;

.field private parameters:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 715
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    .line 716
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 717
    return-void
.end method

.method static synthetic access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 15
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 721
    iget-object v11, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string/jumbo v12, "media"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, "params":[Ljava/lang/String;
    array-length v11, v5

    new-array v6, v11, [Ljava/lang/String;

    .line 724
    .local v6, "results":[Ljava/lang/String;
    array-length v11, v5

    new-array v11, v11, [Ljava/lang/Exception;

    iput-object v11, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    .line 726
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    array-length v11, v5

    invoke-direct {v4, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 727
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 730
    .local v8, "tasks":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/facebook/GraphRequestAsyncTask;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 732
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    :try_start_21
    array-length v11, v5

    if-ge v2, v11, :cond_81

    .line 733
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_57

    .line 734
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/AsyncTask;

    .line 735
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_3f

    goto :goto_2e

    .line 783
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_3f
    move-exception v11

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/AsyncTask;

    .line 784
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_44

    .line 737
    :cond_55
    const/4 v6, 0x0

    .line 789
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "results":[Ljava/lang/String;
    :goto_56
    return-object v6

    .line 739
    .restart local v6    # "results":[Ljava/lang/String;
    :cond_57
    :try_start_57
    aget-object v11, v5, v2

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 740
    .local v9, "uri":Landroid/net/Uri;
    move v10, v2

    .line 741
    .local v10, "writeIndex":I
    invoke-static {v9}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 742
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 743
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 732
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 746
    :cond_70
    new-instance v1, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;

    invoke-direct {v1, p0, v6, v10, v4}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;-><init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    .line 774
    .local v1, "callback":Lcom/facebook/GraphRequest$Callback;
    invoke-static {v0, v9, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v7

    .line 779
    .local v7, "task":Lcom/facebook/GraphRequestAsyncTask;
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 781
    .end local v1    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local v7    # "task":Lcom/facebook/GraphRequestAsyncTask;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "writeIndex":I
    :cond_81
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_84} :catch_3f

    goto :goto_56

    .line 786
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_85
    const/4 v6, 0x0

    goto :goto_56
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 709
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .registers 12
    .param p1, "results"    # [Ljava/lang/String;

    .prologue
    .line 794
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 796
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    .local v0, "arr$":[Ljava/lang/Exception;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_d
    if-ge v3, v4, :cond_1c

    aget-object v2, v0, v3

    .line 797
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_19

    .line 798
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v7, v2}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 827
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_18
    return-void

    .line 796
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 803
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1c
    if-nez p1, :cond_2c

    .line 804
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v8, Lcom/facebook/FacebookException;

    const-string/jumbo v9, "Failed to stage photos for web dialog"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_18

    .line 808
    :cond_2c
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 809
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 810
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v8, Lcom/facebook/FacebookException;

    const-string/jumbo v9, "Failed to stage photos for web dialog"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_18

    .line 814
    :cond_45
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string/jumbo v8, "media"

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v7, v8, v9}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 819
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/dialog/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v6

    .line 824
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/facebook/internal/WebDialog;->url:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/facebook/internal/WebDialog;->access$902(Lcom/facebook/internal/WebDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/facebook/internal/WebDialog;->access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 826
    .local v1, "crossWidth":I
    iget-object v7, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    div-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    # invokes: Lcom/facebook/internal/WebDialog;->setUpWebView(I)V
    invoke-static {v7, v8}, Lcom/facebook/internal/WebDialog;->access$1000(Lcom/facebook/internal/WebDialog;I)V

    goto/16 :goto_18
.end method
