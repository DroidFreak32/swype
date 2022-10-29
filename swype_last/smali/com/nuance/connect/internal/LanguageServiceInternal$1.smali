.class Lcom/nuance/connect/internal/LanguageServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/LanguageServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    # getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->existingLanguages:Ljava/util/TreeSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$000(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/TreeSet;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    # getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->supportedLanguages:Ljava/util/TreeSet;
    invoke-static {v1}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$100(Lcom/nuance/connect/internal/LanguageServiceInternal;)Ljava/util/TreeSet;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-static {v1, v2}, Lcom/nuance/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PROP_LANGUAGE"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/LanguageServiceInternal$1;->this$0:Lcom/nuance/connect/internal/LanguageServiceInternal;

    # getter for: Lcom/nuance/connect/internal/LanguageServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/LanguageServiceInternal;->access$200(Lcom/nuance/connect/internal/LanguageServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_INSTALLED_LANGUAGES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method
