.class public Lcom/nuance/swype/connect/ConnectLegal;
.super Ljava/lang/Object;
.source "ConnectLegal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;)V
    .locals 1
    .param p1, "connect"    # Lcom/nuance/swype/connect/Connect;
    .param p2, "callback"    # Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectLegal;->connect:Lcom/nuance/swype/connect/Connect;

    .line 24
    invoke-virtual {p1}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    .line 25
    iput-object p2, p0, Lcom/nuance/swype/connect/ConnectLegal;->callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    .line 26
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    return-object v0
.end method

.method public static getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tosRequired"    # Z
    .param p2, "optInRequired"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 172
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v5

    .line 174
    .local v3, "showTOS":Z
    :goto_0
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v7

    if-nez v7, :cond_4

    move v2, v5

    .line 176
    .local v2, "showOptIn":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_5

    .line 177
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 179
    .local v4, "startClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 180
    const-class v5, Lcom/nuance/swype/startup/ConnectTOSActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-class v4, Lcom/nuance/swype/startup/ConnectTOSActivity;

    .line 183
    :cond_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 184
    const-class v5, Lcom/nuance/swype/startup/UsageOptInActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    if-nez v4, :cond_2

    .line 186
    const-class v4, Lcom/nuance/swype/startup/UsageOptInActivity;

    .line 190
    :cond_2
    if-eqz v4, :cond_5

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "launch_mode"

    const-string v6, "startup_sequence"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v5, "activity_order"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 195
    const-string v5, "start_flags"

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v5, "result_data"

    invoke-virtual {v0, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "startClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    return-object v0

    .end local v2    # "showOptIn":Z
    .end local v3    # "showTOS":Z
    :cond_3
    move v3, v6

    .line 172
    goto :goto_0

    .restart local v3    # "showTOS":Z
    :cond_4
    move v2, v6

    .line 174
    goto :goto_1

    .line 201
    .restart local v2    # "showOptIn":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getLegalActivitiesStartIntentForIntent(Landroid/content/Intent;Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-static {p1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, "r":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 226
    const-string v1, "intent_last"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    .end local v0    # "r":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "r":Landroid/content/Intent;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private notifyCallback(I)V
    .locals 1
    .param p1, "documentType"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;->documentAccepted(I)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptEula()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userAcceptDocumentByType(I)V

    .line 101
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->notifyCallback(I)V

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setEulaAccepted()V

    .line 104
    :cond_0
    return-void
.end method

.method public acceptOptIn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userAcceptDocumentByType(I)V

    .line 139
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->notifyCallback(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public acceptTos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userAcceptDocumentByType(I)V

    .line 65
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->notifyCallback(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public getEula()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getDocumentByType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptIn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getDocumentByType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTos()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getDocumentByType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEulaAccepted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->isEulaAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectLegal;->getEula()Ljava/lang/String;

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptEula()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 84
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isOptInAccepted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isDataUsageOptAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectLegal;->getOptIn()Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptOptIn()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 121
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isTosAccepted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 33
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v2, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedDocumentByType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->isLegacyTosAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectLegal;->getTos()Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptTos()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 47
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
