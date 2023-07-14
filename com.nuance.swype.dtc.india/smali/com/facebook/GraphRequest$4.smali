.class Lcom/facebook/GraphRequest$4;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphRequest;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/facebook/GraphRequest$4;->this$0:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 12
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v9, 0x0

    .line 913
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    .line 914
    .local v8, "responseObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    const-string/jumbo v10, "__debug__"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 916
    .local v1, "debug":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_4

    const-string/jumbo v10, "messages"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 918
    .local v6, "debugMessages":Lorg/json/JSONArray;
    :goto_1
    if-eqz v6, :cond_8

    .line 919
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v7, v10, :cond_8

    .line 920
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 921
    .local v4, "debugMessageObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_5

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "debugMessage":Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_6

    const-string/jumbo v10, "type"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 927
    .local v5, "debugMessageType":Ljava/lang/String;
    :goto_4
    if-eqz v4, :cond_7

    const-string/jumbo v10, "link"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, "debugMessageLink":Ljava/lang/String;
    :goto_5
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 931
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    .line 932
    .local v0, "behavior":Lcom/facebook/LoggingBehavior;
    const-string/jumbo v10, "warning"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 933
    sget-object v0, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 935
    :cond_0
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Link: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    :cond_1
    sget-object v10, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v10, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .end local v0    # "behavior":Lcom/facebook/LoggingBehavior;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v1    # "debug":Lorg/json/JSONObject;
    .end local v2    # "debugMessage":Ljava/lang/String;
    .end local v3    # "debugMessageLink":Ljava/lang/String;
    .end local v4    # "debugMessageObject":Lorg/json/JSONObject;
    .end local v5    # "debugMessageType":Ljava/lang/String;
    .end local v6    # "debugMessages":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_3
    move-object v1, v9

    .line 914
    goto :goto_0

    .restart local v1    # "debug":Lorg/json/JSONObject;
    :cond_4
    move-object v6, v9

    .line 916
    goto :goto_1

    .restart local v4    # "debugMessageObject":Lorg/json/JSONObject;
    .restart local v6    # "debugMessages":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    :cond_5
    move-object v2, v9

    .line 921
    goto :goto_3

    .restart local v2    # "debugMessage":Ljava/lang/String;
    :cond_6
    move-object v5, v9

    .line 924
    goto :goto_4

    .restart local v5    # "debugMessageType":Ljava/lang/String;
    :cond_7
    move-object v3, v9

    .line 927
    goto :goto_5

    .line 942
    .end local v2    # "debugMessage":Ljava/lang/String;
    .end local v4    # "debugMessageObject":Lorg/json/JSONObject;
    .end local v5    # "debugMessageType":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_8
    iget-object v9, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v9, :cond_9

    .line 943
    iget-object v9, p0, Lcom/facebook/GraphRequest$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-interface {v9, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    .line 945
    :cond_9
    return-void
.end method
