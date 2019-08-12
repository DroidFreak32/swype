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
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method init(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->url:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

    iget-object v1, v0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->url:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/nuance/sns/SocialNetworkActivity;->access$102(Lcom/nuance/sns/SocialNetworkActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$2$1;->this$1:Lcom/nuance/sns/SocialNetworkActivity$2;

    iget-object v0, v0, Lcom/nuance/sns/SocialNetworkActivity$2;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->processAuthUrlResult()V

    .line 143
    return-void

    .line 141
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
