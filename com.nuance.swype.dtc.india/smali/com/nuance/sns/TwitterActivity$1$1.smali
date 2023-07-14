.class Lcom/nuance/sns/TwitterActivity$1$1;
.super Ljava/lang/Object;
.source "TwitterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/sns/TwitterActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/sns/TwitterActivity$1;


# direct methods
.method constructor <init>(Lcom/nuance/sns/TwitterActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/sns/TwitterActivity$1;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/nuance/sns/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/TwitterActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/TwitterActivity$1;

    iget-object v0, v0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/TwitterActivity;->closing()V

    .line 119
    iget-object v0, p0, Lcom/nuance/sns/TwitterActivity$1$1;->this$1:Lcom/nuance/sns/TwitterActivity$1;

    iget-object v0, v0, Lcom/nuance/sns/TwitterActivity$1;->this$0:Lcom/nuance/sns/TwitterActivity;

    invoke-virtual {v0}, Lcom/nuance/sns/TwitterActivity;->startScanningService()Z

    .line 120
    return-void
.end method
