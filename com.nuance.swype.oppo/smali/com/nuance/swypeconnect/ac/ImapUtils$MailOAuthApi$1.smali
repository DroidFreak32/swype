.class Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;
.super Ljava/lang/Object;

# interfaces
.implements Loauth/signpost/OAuthProviderListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;->this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;->this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;

    const-string v1, "onResponseReceived"

    invoke-static {v0, v1, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->access$100(Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;Ljava/lang/String;Loauth/signpost/http/HttpRequest;)V

    const/4 v0, 0x0

    return v0
.end method

.method public prepareRequest(Loauth/signpost/http/HttpRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;->this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;

    const-string v1, "prepareRequest"

    invoke-static {v0, v1, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->access$100(Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;Ljava/lang/String;Loauth/signpost/http/HttpRequest;)V

    return-void
.end method

.method public prepareSubmission(Loauth/signpost/http/HttpRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi$1;->this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;

    const-string v1, "prepareSubmission"

    invoke-static {v0, v1, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;->access$100(Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;Ljava/lang/String;Loauth/signpost/http/HttpRequest;)V

    return-void
.end method
