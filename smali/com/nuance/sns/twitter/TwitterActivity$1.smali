.class Lcom/nuance/sns/twitter/TwitterActivity$1;
.super Ljava/lang/Thread;
.source "TwitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/twitter/TwitterActivity;->retrieveAccessToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/sns/twitter/TwitterActivity;

.field final synthetic val$verifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/sns/twitter/TwitterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    iput-object p2, p0, Lcom/nuance/sns/twitter/TwitterActivity$1;->val$verifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    invoke-static {v2}, Lcom/nuance/sns/twitter/TwitterActivity;->access$000(Lcom/nuance/sns/twitter/TwitterActivity;)Lcom/nuance/sns/twitter/TwitterApi;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/sns/twitter/TwitterActivity$1;->val$verifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/sns/twitter/TwitterApi;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 69
    .local v0, "accessToken":Ltwitter4j/auth/AccessToken;
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    invoke-static {v2}, Lcom/nuance/sns/twitter/TwitterActivity;->access$400(Lcom/nuance/sns/twitter/TwitterActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nuance/sns/twitter/TwitterActivity$1$1;

    invoke-direct {v3, p0, v0}, Lcom/nuance/sns/twitter/TwitterActivity$1$1;-><init>(Lcom/nuance/sns/twitter/TwitterActivity$1;Ltwitter4j/auth/AccessToken;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "accessToken":Ltwitter4j/auth/AccessToken;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ltwitter4j/TwitterException;
    invoke-static {}, Lcom/nuance/sns/twitter/TwitterActivity;->access$500()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "retrieveAccessToken(): error geting access token"

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 79
    iget-object v2, p0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    invoke-static {v2}, Lcom/nuance/sns/twitter/TwitterActivity;->access$600(Lcom/nuance/sns/twitter/TwitterActivity;)V

    goto :goto_0
.end method
