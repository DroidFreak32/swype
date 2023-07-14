.class Lcom/facebook/share/internal/DeviceShareDialogFragment$2;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->startShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 185
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_0

    .line 186
    iget-object v3, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v3, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>()V

    .line 193
    .local v2, "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    :try_start_0
    const-string/jumbo v3, "user_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->setUserCode(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v3, "expires_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->setExpiresIn(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    iget-object v3, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v3, v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$200(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    goto :goto_0

    .line 196
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    new-instance v4, Lcom/facebook/FacebookRequestError;

    const/4 v5, 0x0

    const-string/jumbo v6, ""

    const-string/jumbo v7, "Malformed server response"

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V

    goto :goto_0
.end method
