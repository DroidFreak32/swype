.class Lcom/nuance/connect/util/InstallMetadata$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/util/InstallMetadata;


# direct methods
.method constructor <init>(Lcom/nuance/connect/util/InstallMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata$1;->this$0:Lcom/nuance/connect/util/InstallMetadata;

    invoke-static {v0}, Lcom/nuance/connect/util/InstallMetadata;->access$000(Lcom/nuance/connect/util/InstallMetadata;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
