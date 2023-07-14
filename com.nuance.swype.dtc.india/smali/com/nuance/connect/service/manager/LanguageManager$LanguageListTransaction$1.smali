.class Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction$1;->this$1:Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;->access$100(Lcom/nuance/connect/service/manager/LanguageManager$LanguageListTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
