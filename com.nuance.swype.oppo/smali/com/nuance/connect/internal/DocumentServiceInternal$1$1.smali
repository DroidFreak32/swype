.class Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/DocumentServiceInternal$1;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal$1;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;->this$1:Lcom/nuance/connect/internal/DocumentServiceInternal$1;

    iput-object p2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
