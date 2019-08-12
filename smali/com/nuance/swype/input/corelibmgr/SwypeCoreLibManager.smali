.class public Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;
.super Ljava/lang/Object;
.source "SwypeCoreLibManager.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field final imeApp:Lcom/nuance/swype/input/IMEApplication;

.field final swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SwypeCoreLibManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 31
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .locals 1
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 39
    invoke-virtual {p1}, Lcom/nuance/swype/input/IMEApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/ApplicationInfoCompat;->getNativeLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    .line 40
    return-void
.end method

.method private createT9WriteAlphaSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteAlphaInstance()Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v0

    .line 117
    .local v0, "t9writeAlpha":Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->createSession(Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method private createT9WriteChineseSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteChineseInstance()Lcom/nuance/input/swypecorelib/T9WriteChinese;

    move-result-object v0

    .line 127
    .local v0, "t9writeChinese":Lcom/nuance/input/swypecorelib/T9WriteChinese;
    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->createSession(Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method private createT9WriteJapaneseSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteJapaneseInstance()Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    move-result-object v0

    .line 147
    .local v0, "t9writeJapanese":Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->createSession(Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

.method private createT9WriteKoreanSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteKoreanInstance()Lcom/nuance/input/swypecorelib/T9WriteKorean;

    move-result-object v0

    .line 137
    .local v0, "t9writeKorean":Lcom/nuance/input/swypecorelib/T9WriteKorean;
    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->createSession(Ljava/lang/String;)V

    .line 138
    return-object v0
.end method

.method private createXT9CoreAlphaInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 73
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    .line 74
    .local v0, "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-virtual {v0, p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 76
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 78
    return-object v0
.end method

.method private createXT9CoreChineseInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 87
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-virtual {v0, p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 88
    return-object v0
.end method

.method private createXT9CoreJapaneseInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    .line 107
    .local v0, "japaneseInput":Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-virtual {v0, p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 108
    return-object v0
.end method

.method private createXT9CoreKoreanInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    .line 97
    .local v0, "koreanInput":Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-virtual {v0, p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 98
    return-object v0
.end method


# virtual methods
.method public createOpenWnnEngineJAJP()Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->createOpenWnnEngineJAJP()Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    move-result-object v0

    return-object v0
.end method

.method public getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    return-object v0
.end method

.method public getT9WriteAlphaSession()Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteAlphaSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteChineseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteChineseSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteJapaneseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteJapaneseSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteKoreanSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteKoreanSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreAlphaInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreChineseInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreJapaneseInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreKoreanInputSession(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    return-object v0
.end method

.method public onBeginDlmBackup(I)V
    .locals 3
    .param p1, "category"    # I

    .prologue
    .line 160
    sget-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "DLM Backup Begining for category="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public onDlmEvent([BZJI)V
    .locals 2
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z
    .param p3, "timestamp"    # J
    .param p5, "category"    # I

    .prologue
    .line 164
    sget-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "#onDlmEvent()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public onDlmInitializeStatus(Lcom/nuance/input/swypecorelib/XT9Status;I)V
    .locals 4
    .param p1, "status"    # Lcom/nuance/input/swypecorelib/XT9Status;
    .param p2, "coretInputCategory"    # I

    .prologue
    .line 170
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#onDlmInitializeStatus() status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 172
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_INVALID_SIZE:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne p1, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    .line 174
    .local v0, "sync":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Issue initializing XT9, restoring..."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/Connect$Sync;->requestRestore(I)V

    .line 182
    .end local v0    # "sync":Lcom/nuance/swype/connect/Connect$Sync;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v0    # "sync":Lcom/nuance/swype/connect/Connect$Sync;
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Issue initializing XT9."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onEndDlmBackup()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "DLM Backup Compelete"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setRunningState(I)V
    .locals 1
    .param p1, "runningState"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->setRunningState(I)V

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/Connect;->setRunningState(I)V

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setRunningState(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setRunningState(I)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setRunningState(I)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setRunningState(I)V

    .line 64
    :cond_3
    return-void
.end method
