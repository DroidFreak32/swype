.class public Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
.super Ljava/lang/Object;
.source "SpeechInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/SpeechInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechServerInfo"
.end annotation


# instance fields
.field abbrDisplayName:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field isCustomWordsSyncSupport:Z

.field langCode:Ljava/lang/String;

.field langName:Ljava/lang/String;

.field port:S

.field responseMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field server:Ljava/lang/String;

.field speechCommand:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abbrDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->abbrDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public langCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langCode:Ljava/lang/String;

    return-object v0
.end method

.method public langName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langName:Ljava/lang/String;

    return-object v0
.end method

.method public port()S
    .locals 1

    .prologue
    .line 64
    iget-short v0, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S

    return v0
.end method

.method public server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "langName: %s, langCode: %s, displayName: %s, dns: %s, portId: %d, customword = %b, responseMode = %s, cmd: %s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->displayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-short v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->isCustomWordsSyncSupport:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->responseMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->speechCommand:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method
