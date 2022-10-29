.class Lcom/nuance/sns/GmailActivity$3$2;
.super Ljava/lang/Object;
.source "GmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/GmailActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/sns/GmailActivity$3;


# direct methods
.method constructor <init>(Lcom/nuance/sns/GmailActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/sns/GmailActivity$3;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/nuance/sns/GmailActivity$3$2;->this$1:Lcom/nuance/sns/GmailActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/sns/GmailActivity$3$2;->this$1:Lcom/nuance/sns/GmailActivity$3;

    iget-object v0, v0, Lcom/nuance/sns/GmailActivity$3;->this$0:Lcom/nuance/sns/GmailActivity;

    # invokes: Lcom/nuance/sns/GmailActivity;->signIn()V
    invoke-static {v0}, Lcom/nuance/sns/GmailActivity;->access$200(Lcom/nuance/sns/GmailActivity;)V

    .line 219
    return-void
.end method
