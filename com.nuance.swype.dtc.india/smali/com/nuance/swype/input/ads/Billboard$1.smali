.class Lcom/nuance/swype/input/ads/Billboard$1;
.super Ljava/lang/Object;
.source "Billboard.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ads/Billboard;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ads/Billboard;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ads/Billboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/ads/Billboard;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nuance/swype/input/ads/Billboard$1;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 69
    invoke-static {}, Lcom/nuance/swype/input/ads/Billboard;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "Unhandled message"

    aput-object v3, v0, v1

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard$1;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ads/Billboard;->showCancelButton()V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
