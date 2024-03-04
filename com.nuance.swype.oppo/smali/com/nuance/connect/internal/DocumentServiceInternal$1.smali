.class Lcom/nuance/connect/internal/DocumentServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/LocaleCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocaleChange(Ljava/util/Locale;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    iget-object v0, v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    iput-object p1, v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$100(Lcom/nuance/connect/internal/DocumentServiceInternal;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal$1;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
