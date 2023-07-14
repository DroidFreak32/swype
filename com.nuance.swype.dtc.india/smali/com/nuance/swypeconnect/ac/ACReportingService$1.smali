.class Lcom/nuance/swypeconnect/ac/ACReportingService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingService;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V
    .locals 0

    return-void
.end method

.method public onLanguageChange([II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$200(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/connect/api/ReportingService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ReportingService;->setActiveLanguages([I)V

    return-void
.end method

.method public onLocale(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    return-void
.end method
