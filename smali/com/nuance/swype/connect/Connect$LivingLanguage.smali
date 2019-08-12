.class public Lcom/nuance/swype/connect/Connect$LivingLanguage;
.super Ljava/lang/Object;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LivingLanguage"
.end annotation


# instance fields
.field private presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)V
    .locals 0
    .param p2, "presenter"    # Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .line 220
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 269
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-string v1, "Living Language"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->disableLivingLanguage()V

    .line 274
    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_1
    return-void
.end method

.method public enable()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 230
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 231
    .local v1, "legalAccepted":Z
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_5

    .line 232
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    if-nez v4, :cond_4

    .line 234
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "Could not enable living language because the"

    const-string v5, "TOS / Opt-In could not be accepted"

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :cond_3
    :goto_0
    return-void

    .line 238
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    new-instance v5, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;-><init>(Lcom/nuance/swype/connect/Connect$LivingLanguage;)V

    invoke-interface {v4, v3, v3, v5}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->presentLegalRequirements(ZZLjava/lang/Runnable;)Z

    .line 250
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 254
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 255
    const-string v3, "Living Language"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->enableLivingLanguage()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error enabling living language: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/Connect;->access$700(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isLivingLanguageEnabled()Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
