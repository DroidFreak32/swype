.class Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DlmSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DlmState"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private backupInProgress:Z

.field private backupRequired:Z

.field private pullInProgress:Z

.field private pullRequested:Z

.field private pullTransID:Ljava/lang/String;

.field private restoreInProgress:Z

.field private restoreRequested:Z

.field private restoreTransID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error loading DlmState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public backupComplete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    return-void
.end method

.method public backupRequired()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    return-void
.end method

.method public getPullTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    return-object v0
.end method

.method public isBackupHappening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    return v0
.end method

.method public isBackupRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    return v0
.end method

.method public isPullHappening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    return v0
.end method

.method public isPullRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    return v0
.end method

.method public isRestoreHappening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    return v0
.end method

.method public isRestoreRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    return-void
.end method

.method public pullComplete()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    return-void
.end method

.method public pullRequested()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public restoreComplete()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    return-void
.end method

.method public restoreRequested()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    return-void
.end method

.method public setPullTransactionId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    return-void
.end method

.method public setRestoreTransactionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    return-void
.end method

.method public startBackup()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    return-void
.end method

.method public startPull()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    return-void
.end method

.method public startRestore()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
