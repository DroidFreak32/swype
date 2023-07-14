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
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;
    .param p2, "presenter"    # Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .line 236
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    .line 284
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 285
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string/jumbo v1, "Living Language"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->disableLivingLanguage()V

    .line 290
    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_1
    return-void
.end method

.method public enable()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 246
    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 247
    .local v1, "legalAccepted":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v5}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_5

    .line 248
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 249
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    if-nez v5, :cond_4

    .line 250
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Could not enable living language because the"

    aput-object v7, v6, v4

    const-string/jumbo v4, "TOS / Opt-In could not be accepted"

    aput-object v4, v6, v3

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 279
    :cond_2
    :goto_1
    return-void

    .end local v1    # "legalAccepted":Z
    :cond_3
    move v1, v4

    .line 246
    goto :goto_0

    .line 254
    .restart local v1    # "legalAccepted":Z
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->presenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    new-instance v5, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/connect/Connect$LivingLanguage$1;-><init>(Lcom/nuance/swype/connect/Connect$LivingLanguage;)V

    invoke-interface {v4, v3, v3, v5}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->presentLegalRequirements(ZZLjava/lang/Runnable;)Z

    .line 266
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    .line 269
    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 270
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 271
    const-string/jumbo v3, "Living Language"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->enableLivingLanguage()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error enabling living language: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 263
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/Connect;->access$700(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/Connect;->access$700(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$LivingLanguage;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$500(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isLivingLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
