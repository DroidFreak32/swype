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
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v1}, Lcom/nuance/sns/SocialNetworkActivity;->onRequestAuthorizationUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    new-instance v2, Lcom/nuance/sns/SocialNetworkActivity$2$1;

    invoke-direct {v2, p0}, Lcom/nuance/sns/SocialNetworkActivity$2$1;-><init>(Lcom/nuance/sns/SocialNetworkActivity$2;)V

    invoke-virtual {v2, v0}, Lcom/nuance/sns/SocialNetworkActivity$2$1;->init(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/sns/SocialNetworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
