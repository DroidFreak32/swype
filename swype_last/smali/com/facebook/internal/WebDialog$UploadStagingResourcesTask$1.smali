.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;

.field final synthetic val$writeIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .registers 5

    .prologue
    .line 746
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    iput-object p4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 750
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 751
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v2, :cond_26

    .line 752
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "message":Ljava/lang/String;
    if-nez v3, :cond_f

    .line 754
    const-string/jumbo v3, "Error staging photo."

    .line 756
    :cond_f
    new-instance v5, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v5, p1, v3}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    throw v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    .line 767
    .end local v2    # "error":Lcom/facebook/FacebookRequestError;
    .end local v3    # "message":Ljava/lang/String;
    :catch_15
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    # getter for: Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;
    invoke-static {v5}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;

    move-result-object v5

    iget v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object v1, v5, v6

    .line 770
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 771
    return-void

    .line 758
    .restart local v2    # "error":Lcom/facebook/FacebookRequestError;
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 759
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_35

    .line 760
    new-instance v5, Lcom/facebook/FacebookException;

    const-string/jumbo v6, "Error staging photo."

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 762
    :cond_35
    const-string/jumbo v5, "uri"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, "stagedImageUri":Ljava/lang/String;
    if-nez v4, :cond_47

    .line 764
    new-instance v5, Lcom/facebook/FacebookException;

    const-string/jumbo v6, "Error staging photo."

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 766
    :cond_47
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iget v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object v4, v5, v6
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4d} :catch_15

    goto :goto_20
.end method
