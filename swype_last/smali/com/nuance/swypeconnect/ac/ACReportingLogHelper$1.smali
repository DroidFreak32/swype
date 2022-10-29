.class Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->processBuffer(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    # invokes: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->logTrackRates()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$000(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J
    invoke-static {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$102(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;J)J

    return-void
.end method

.method public onLanguageChange([II)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->recordLanguage([II)V

    return-void
.end method

.method public onLocale(Ljava/util/Locale;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->recordLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    # invokes: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->logTrackRates()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$000(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J
    invoke-static {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$102(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;J)J

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->verifiedSearch:Z
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$202(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;Z)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    # setter for: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$302(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;)Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    monitor-enter v1

    :try_start_1e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    # setter for: Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->access$402(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/EditorInfo;

    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v0
.end method
