.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;

    # invokes: Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->listResponse(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->access$100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
