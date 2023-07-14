.class public Lcom/nuance/swype/connect/ConnectLegal;
.super Ljava/lang/Object;
.source "ConnectLegal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

.field private final legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "ConnectLegal"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;)V
    .locals 1
    .param p1, "connect"    # Lcom/nuance/swype/connect/Connect;
    .param p2, "callback"    # Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/nuance/swype/connect/Connect;->getSDKManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    .line 24
    iput-object p2, p0, Lcom/nuance/swype/connect/ConnectLegal;->callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    .line 25
    return-void
.end method

.method private acceptDocument(I)V
    .locals 4
    .param p1, "typeId"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v0

    .line 190
    .local v0, "doc":Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v2, v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->acceptDocument(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v2, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "acceptDocument"

    invoke-interface {v2, v3, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    return-object v0
.end method

.method private getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    .locals 3
    .param p1, "typeId"    # I

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "getDocument"

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tosRequired"    # Z
    .param p2, "optInRequired"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLegalActivitiesStartIntentForIntent(Landroid/content/Intent;Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-static {p1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, "r":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v1, "intent_last"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    .end local v0    # "r":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "r":Landroid/content/Intent;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getLegalCUDActivitiesStartIntent(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "optInRequired"    # Z
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getLegalCUDActivitiesStartIntent(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getTranslation(I)Ljava/lang/String;
    .locals 3
    .param p1, "typeId"    # I

    .prologue
    .line 198
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->getTranslation()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "getTranslation"

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyCallback(I)V
    .locals 1
    .param p1, "documentType"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->callback:Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;->documentAccepted(I)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptEula()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 76
    sget-object v0, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "acceptEula"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/ConnectLegal;->acceptDocument(I)V

    .line 78
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/ConnectLegal;->notifyCallback(I)V

    .line 79
    return-void
.end method

.method public acceptOptIn()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 109
    sget-object v0, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "acceptOptIn"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/ConnectLegal;->acceptDocument(I)V

    .line 111
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/ConnectLegal;->notifyCallback(I)V

    .line 112
    return-void
.end method

.method public acceptTos()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 54
    sget-object v0, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "acceptTos"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/ConnectLegal;->acceptDocument(I)V

    .line 56
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/ConnectLegal;->notifyCallback(I)V

    .line 57
    return-void
.end method

.method public getEula()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/ConnectLegal;->getTranslation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/ConnectLegal;->getTranslation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/ConnectLegal;->getTranslation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEulaAccepted()Z
    .locals 6

    .prologue
    .line 60
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->isAccepted()Z

    move-result v0

    .line 61
    .local v0, "isEulaAccepted":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isEulaAccepted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 62
    return v0
.end method

.method public isEulaChanged()Z
    .locals 6

    .prologue
    .line 66
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->isChanged()Z

    move-result v0

    .line 67
    .local v0, "isEulaChanged":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isEulaChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 68
    return v0
.end method

.method public isOptInAccepted()Z
    .locals 6

    .prologue
    .line 82
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->isAccepted()Z

    move-result v0

    .line 83
    .local v0, "isOptInAccepted":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isOptInAccepted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 84
    return v0
.end method

.method public isOptInChanged()Z
    .locals 6

    .prologue
    .line 88
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->isChanged()Z

    move-result v0

    .line 89
    .local v0, "isOptInChanged":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isOptInChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 90
    return v0
.end method

.method public isTosAccepted()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->isAccepted()Z

    move-result v0

    .line 33
    .local v0, "isTosAccepted":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isTosAccepted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 34
    return v0
.end method

.method public isTosChanged()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->isChanged()Z

    move-result v0

    .line 39
    .local v0, "isTosChanged":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isTosChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 40
    return v0
.end method

.method public resetOptInChangedFlag()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectLegal;->legal:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->resetChangedFlag(Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;)V

    .line 101
    sget-object v0, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "resetOptInChangedFlag"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public wasOptInAccepted()Z
    .locals 6

    .prologue
    .line 94
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->wasAccepted()Z

    move-result v0

    .line 95
    .local v0, "wasOptInAccepted":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wasOptInAccepted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 96
    return v0
.end method

.method public wasTosAccepted()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/ConnectLegal;->getDocument(I)Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments$ACLegalDocument;->wasAccepted()Z

    move-result v0

    .line 45
    .local v0, "wasTosAccepted":Z
    sget-object v1, Lcom/nuance/swype/connect/ConnectLegal;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wasTosAccepted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 46
    return v0
.end method
