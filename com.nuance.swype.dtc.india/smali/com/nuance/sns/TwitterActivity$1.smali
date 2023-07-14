.class Lcom/nuance/sns/TwitterActivity$1;
.super Ljava/lang/Thread;
.source "TwitterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/TwitterActivity;->retrieveAccessToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/sns/TwitterActivity;

.field final synthetic val$verifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/sns/TwitterActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/sns/TwitterActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    iput-object p2, p0, Lcom/nuance/sns/TwitterActivity$1;->val$verifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 110
    invoke-static {}, Lcom/nuance/sns/TwitterActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RequestToken: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    invoke-static {v4}, Lcom/nuance/sns/TwitterActivity;->access$000(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Verifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/sns/TwitterActivity$1;->val$verifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    iget-object v1, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    .line 112
    invoke-static {v1}, Lcom/nuance/sns/TwitterActivity;->access$300(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    invoke-static {v2}, Lcom/nuance/sns/TwitterActivity;->access$400(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    .line 113
    invoke-static {v3}, Lcom/nuance/sns/TwitterActivity;->access$000(Lcom/nuance/sns/TwitterActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/sns/TwitterActivity$1;->val$verifier:Ljava/lang/String;

    .line 111
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/sns/HttpUtils;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/sns/TwitterActivity;->access$202(Lcom/nuance/sns/TwitterActivity;Landroid/util/Pair;)Landroid/util/Pair;

    .line 114
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    invoke-static {v0}, Lcom/nuance/sns/TwitterActivity;->access$200(Lcom/nuance/sns/TwitterActivity;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    new-instance v1, Lcom/nuance/sns/TwitterActivity$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/sns/TwitterActivity$1$1;-><init>(Lcom/nuance/sns/TwitterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/nuance/sns/TwitterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method
