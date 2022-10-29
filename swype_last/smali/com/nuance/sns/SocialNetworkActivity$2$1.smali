.class Lcom/nuance/sns/SocialNetworkActivity$2$1;
.super Ljava/lang/Object;
.source "SocialNetworkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/SocialNetworkActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/sns/SocialNetworkActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/sns/SocialNetworkActivity$2;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method init(Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->url:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

    iget-object v1, v0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->url:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->url:Ljava/lang/String;

    :goto_a
    # setter for: Lcom/nuance/sns/SocialNetworkActivity;->authUrl:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$202(Lcom/nuance/sns/SocialNetworkActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

    iget-object v0, v0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->processAuthUrlResult()V

    .line 202
    return-void

    .line 200
    :cond_15
    const-string/jumbo v0, ""

    goto :goto_a
.end method
