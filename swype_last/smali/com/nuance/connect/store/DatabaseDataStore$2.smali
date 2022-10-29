.class Lcom/nuance/connect/store/DatabaseDataStore$2;
.super Lcom/nuance/connect/util/HandlerThread;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/store/DatabaseDataStore;


# direct methods
.method constructor <init>(Lcom/nuance/connect/store/DatabaseDataStore;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/store/DatabaseDataStore$2;->this$0:Lcom/nuance/connect/store/DatabaseDataStore;

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
