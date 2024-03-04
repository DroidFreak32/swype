.class Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;->this$2:Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;->this$2:Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;

    iget-object v0, v0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;->this$1:Lcom/nuance/connect/internal/DocumentServiceInternal$1;

    iget-object v0, v0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;->this$2:Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;

    iget-object v1, v1, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;->val$locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$000(Lcom/nuance/connect/internal/DocumentServiceInternal;Ljava/util/Locale;)V

    const/4 v0, 0x0

    return-object v0
.end method
