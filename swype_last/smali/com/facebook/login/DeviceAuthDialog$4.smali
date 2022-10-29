.class Lcom/facebook/login/DeviceAuthDialog$4;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 251
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # getter for: Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$400(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 283
    :goto_c
    return-void

    .line 255
    :cond_d
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 256
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_34

    .line 259
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_52

    .line 270
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v4

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V
    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$100(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 263
    :sswitch_28
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V
    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$500(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_c

    .line 267
    :sswitch_2e
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onCancel()V
    invoke-static {v3}, Lcom/facebook/login/DeviceAuthDialog;->access$000(Lcom/facebook/login/DeviceAuthDialog;)V

    goto :goto_c

    .line 278
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 279
    .local v2, "resultObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const-string/jumbo v4, "access_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$600(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_44} :catch_45

    goto :goto_c

    .line 280
    .end local v2    # "resultObject":Lorg/json/JSONObject;
    :catch_45
    move-exception v1

    .line 281
    .local v1, "ex":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$4;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    # invokes: Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V
    invoke-static {v3, v4}, Lcom/facebook/login/DeviceAuthDialog;->access$100(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V

    goto :goto_c

    .line 259
    nop

    :sswitch_data_52
    .sparse-switch
        0x149620 -> :sswitch_2e
        0x149634 -> :sswitch_28
        0x149635 -> :sswitch_2e
        0x149636 -> :sswitch_28
    .end sparse-switch
.end method
