.class Lcom/nuance/sns/SocialNetworkActivity$2;
.super Ljava/lang/Thread;
.source "SocialNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/SocialNetworkActivity;->sendAuthUrlRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/sns/SocialNetworkActivity;


# direct methods
.method constructor <init>(Lcom/nuance/sns/SocialNetworkActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 183
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v2}, Lcom/nuance/sns/SocialNetworkActivity;->onRequestAuthorizationUrl()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_16

    move-result-object v1

    .line 188
    :goto_7
    iget-object v2, p0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    new-instance v3, Lcom/nuance/sns/SocialNetworkActivity$2$1;

    invoke-direct {v3, p0}, Lcom/nuance/sns/SocialNetworkActivity$2$1;-><init>(Lcom/nuance/sns/SocialNetworkActivity$2;)V

    .line 204
    invoke-virtual {v3, v1}, Lcom/nuance/sns/SocialNetworkActivity$2$1;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Lcom/nuance/sns/SocialNetworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void

    .line 184
    :catch_16
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/nuance/sns/SocialNetworkActivity;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/sns/SocialNetworkActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_7
.end method
