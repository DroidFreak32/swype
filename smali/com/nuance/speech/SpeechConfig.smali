.class public Lcom/nuance/speech/SpeechConfig;
.super Ljava/lang/Object;
.source "SpeechConfig.java"


# instance fields
.field protected final appKey:[B

.field protected final appName:Ljava/lang/String;

.field protected final speechServerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "speechServerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/speech/SpeechConfig;-><init>(Ljava/lang/String;[BLjava/util/Map;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/Map;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "speechServerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nuance/speech/SpeechConfig;->appName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/nuance/speech/SpeechConfig;->appKey:[B

    .line 25
    iput-object p3, p0, Lcom/nuance/speech/SpeechConfig;->speechServerMap:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/nuance/speech/SpeechConfig;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/nuance/speech/SpeechInfo;->makeInstance(Landroid/content/Context;)Lcom/nuance/speech/SpeechInfo;

    move-result-object v0

    .line 108
    .local v0, "speechInfo":Lcom/nuance/speech/SpeechInfo;
    new-instance v1, Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo;->getSpeechInfoTable()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/speech/SpeechConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public getAppKey(Landroid/content/Context;)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/speech/SpeechConfig;->appKey:[B

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nuance/speech/SpeechConfig;->appKey:[B

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getSpeechKey(Landroid/content/Context;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/speech/SpeechConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDictationType(Landroid/content/Context;Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 90
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inputFieldInfo.getInputType() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getInputType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "websearch"

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "dictation"

    goto :goto_0
.end method

.method public getLanguageAbbrDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->abbrDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getPortId(Ljava/lang/String;)S
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-short v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S

    return v0
.end method

.method public getResponseMode(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->responseMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    return-object v0
.end method

.method protected getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    .locals 3
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/nuance/speech/SpeechConfig;->speechServerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    .line 79
    .local v0, "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    if-nez v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/nuance/speech/SpeechConfig;->speechServerMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    check-cast v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    .line 82
    .restart local v0    # "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    :cond_0
    return-object v0
.end method

.method public getSpeechCmd(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->speechCommand:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method

.method public getSpeechServerInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/speech/SpeechConfig;->speechServerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isCustomWordsSynchronizationSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechConfig;->getServerInfo(Ljava/lang/String;)Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->isCustomWordsSyncSupport:Z

    return v0
.end method

.method public isLanguageSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/speech/SpeechConfig;->speechServerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
