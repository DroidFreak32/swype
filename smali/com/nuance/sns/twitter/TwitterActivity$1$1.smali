.class Lcom/nuance/sns/twitter/TwitterActivity$1$1;
.super Ljava/lang/Object;
.source "TwitterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/twitter/TwitterActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/sns/twitter/TwitterActivity$1;

.field final synthetic val$accessToken:Ltwitter4j/auth/AccessToken;


# direct methods
.method constructor <init>(Lcom/nuance/sns/twitter/TwitterActivity$1;Ltwitter4j/auth/AccessToken;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nuance/sns/twitter/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/twitter/TwitterActivity$1;

    iput-object p2, p0, Lcom/nuance/sns/twitter/TwitterActivity$1$1;->val$accessToken:Ltwitter4j/auth/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/twitter/TwitterActivity$1;

    iget-object v0, v0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    invoke-static {v0}, Lcom/nuance/sns/twitter/TwitterActivity;->access$100(Lcom/nuance/sns/twitter/TwitterActivity;)V

    .line 73
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/twitter/TwitterActivity$1;

    iget-object v0, v0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    iget-object v1, p0, Lcom/nuance/sns/twitter/TwitterActivity$1$1;->val$accessToken:Ltwitter4j/auth/AccessToken;

    invoke-static {v0, v1}, Lcom/nuance/sns/twitter/TwitterActivity;->access$200(Lcom/nuance/sns/twitter/TwitterActivity;Ltwitter4j/auth/AccessToken;)V

    .line 74
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/twitter/TwitterActivity$1;

    iget-object v0, v0, Lcom/nuance/sns/twitter/TwitterActivity$1;->this$0:Lcom/nuance/sns/twitter/TwitterActivity;

    invoke-static {v0}, Lcom/nuance/sns/twitter/TwitterActivity;->access$300(Lcom/nuance/sns/twitter/TwitterActivity;)V

    .line 75
    return-void
.end method
