.class Lcom/nuance/sns/SocialNetworkActivity$1;
.super Ljava/lang/Object;
.source "SocialNetworkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/SocialNetworkActivity;->onResume()V
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
    .param p1, "this$0"    # Lcom/nuance/sns/SocialNetworkActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/nuance/sns/SocialNetworkActivity$1;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/sns/SocialNetworkActivity$1;->this$0:Lcom/nuance/sns/SocialNetworkActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/SocialNetworkActivity;->closing()V

    .line 123
    return-void
.end method
