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
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "SwypeCoreLibManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 31
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IMEApplication;Ljava/lang/String;)V
    .registers 4
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;
    .param p2, "coreLibName"    # Ljava/lang/String;

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

    invoke-static {p1, p2, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    .line 40
    return-void
.end method

.method private createT9WriteAlphaSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .registers 5
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteAlphaInstance()Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v0

    .line 109
    .local v0, "t9writeAlpha":Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->createSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method private createT9WriteChineseSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .registers 5
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteChineseInstance()Lcom/nuance/input/swypecorelib/T9WriteChinese;

    move-result-object v0

    .line 119
    .local v0, "t9writeChinese":Lcom/nuance/input/swypecorelib/T9WriteChinese;
    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->createSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    return-object v0
.end method

.method private createT9WriteJapaneseSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .registers 5
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteJapaneseInstance()Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    move-result-object v0

    .line 139
    .local v0, "t9writeJapanese":Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->createSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    return-object v0
.end method

.method private createT9WriteKoreanSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .registers 5
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteKoreanInstance()Lcom/nuance/input/swypecorelib/T9WriteKorean;

    move-result-object v0

    .line 129
    .local v0, "t9writeKorean":Lcom/nuance/input/swypecorelib/T9WriteKorean;
    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->createSession(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method private createXT9CoreAlphaInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .registers 5
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    .line 66
    .local v0, "coreAlphaInput":Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getFilter()Lcom/nuance/input/swypecorelib/EmojiFilter;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;Lcom/nuance/input/swypecorelib/EmojiFilter;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 70
    return-object v0
.end method

.method private createXT9CoreChineseInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .registers 5
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 79
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getFilter()Lcom/nuance/input/swypecorelib/EmojiFilter;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;Lcom/nuance/input/swypecorelib/EmojiFilter;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 80
    return-object v0
.end method

.method private createXT9CoreJapaneseInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .registers 6
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreAlphaInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    .line 99
    .local v0, "japaneseInput":Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getFilter()Lcom/nuance/input/swypecorelib/EmojiFilter;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;Lcom/nuance/input/swypecorelib/EmojiFilter;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 100
    return-object v0
.end method

.method private createXT9CoreKoreanInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .registers 6
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreAlphaInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    .line 89
    .local v0, "koreanInput":Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getFilter()Lcom/nuance/input/swypecorelib/EmojiFilter;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->createSession(Lcom/nuance/input/swypecorelib/XT9CoreInput$DlmEventHandler;Ljava/lang/String;Lcom/nuance/input/swypecorelib/EmojiFilter;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 90
    return-object v0
.end method


# virtual methods
.method public createOpenWnnEngineJAJP(Ljava/lang/String;)Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;
    .registers 4
    .param p1, "coreLibName"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/android/compat/ApplicationInfoCompat;->getNativeLibraryDir(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->createOpenWnnEngineJAJP(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    move-result-object v0

    return-object v0
.end method

.method public getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    return-object v0
.end method

.method public getT9WriteAlphaSession()Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteAlphaSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteChineseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteChineseSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteJapaneseSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteJapaneseSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteKoreanSession()Lcom/nuance/input/swypecorelib/T9WriteCJK;
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createT9WriteKoreanSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/T9WriteCJK;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreAlphaInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreChineseInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreJapaneseInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v0}, Lcom/nuance/swype/input/DatabaseConfig;->getDatabaseConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-static {v1}, Lcom/nuance/swype/input/DatabaseConfig;->getExternalDatabasePath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createXT9CoreKoreanInputSession(Ljava/lang/String;[Ljava/lang/String;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    return-object v0
.end method

.method public onBeginDlmBackup(I)V
    .registers 6
    .param p1, "category"    # I

    .prologue
    .line 152
    sget-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "DLM Backup Begining for category="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onDlmEvent([BZJI)V
    .registers 10
    .param p1, "event"    # [B
    .param p2, "highPriority"    # Z
    .param p3, "timestamp"    # J
    .param p5, "category"    # I

    .prologue
    .line 156
    sget-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "#onDlmEvent()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public onDlmInitializeStatus(Lcom/nuance/input/swypecorelib/XT9Status;I)V
    .registers 9
    .param p1, "status"    # Lcom/nuance/input/swypecorelib/XT9Status;
    .param p2, "coretInputCategory"    # I

    .prologue
    .line 162
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "#onDlmInitializeStatus() status = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 164
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_INVALID_SIZE:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne p1, v1, :cond_40

    .line 165
    iget-object v1, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    .line 166
    .local v0, "sync":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 167
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Issue initializing XT9, restoring..."

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0, p2}, Lcom/nuance/swype/connect/Connect$Sync;->requestRestore(I)V

    .line 174
    .end local v0    # "sync":Lcom/nuance/swype/connect/Connect$Sync;
    :cond_40
    :goto_40
    return-void

    .line 170
    .restart local v0    # "sync":Lcom/nuance/swype/connect/Connect$Sync;
    :cond_41
    sget-object v1, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Issue initializing XT9."

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_40
.end method

.method public onEndDlmBackup()V
    .registers 5

    .prologue
    .line 177
    sget-object v0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "DLM Backup Compelete"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setRunningState(I)V
    .registers 3
    .param p1, "runningState"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    if-eqz v0, :cond_3c

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

    if-eqz v0, :cond_27

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setRunningState(I)V

    .line 52
    :cond_27
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->swypecoreInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setRunningState(I)V

    .line 56
    :cond_3c
    return-void
.end method
