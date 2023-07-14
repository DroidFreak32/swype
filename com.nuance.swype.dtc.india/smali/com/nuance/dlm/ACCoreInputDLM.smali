.class public Lcom/nuance/dlm/ACCoreInputDLM;
.super Ljava/lang/Object;
.source "ACCoreInputDLM.java"


# static fields
.field private static acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

.field private static acChineseInput:Lcom/nuance/dlm/ACChineseInput;

.field private static acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/dlm/ACAlphaInput;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/dlm/ACAlphaInput;)Lcom/nuance/dlm/ACAlphaInput;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACAlphaInput;

    .prologue
    .line 14
    sput-object p0, Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    return-object p0
.end method

.method static synthetic access$100()Lcom/nuance/dlm/ACKoreanInput;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/dlm/ACKoreanInput;)Lcom/nuance/dlm/ACKoreanInput;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACKoreanInput;

    .prologue
    .line 14
    sput-object p0, Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nuance/dlm/ACChineseInput;)Lcom/nuance/dlm/ACChineseInput;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACChineseInput;

    .prologue
    .line 14
    sput-object p0, Lcom/nuance/dlm/ACCoreInputDLM;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    return-object p0
.end method

.method public static destroyACAlphaInput()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/dlm/ACAlphaInput;->release()V

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    .line 89
    :cond_0
    return-void
.end method

.method public static destroyACChineseDLM()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    invoke-virtual {v0}, Lcom/nuance/dlm/ACChineseInput;->release()V

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    .line 99
    :cond_0
    return-void
.end method

.method public static destroyACKoreanInput()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/dlm/ACKoreanInput;->release()V

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    .line 63
    :cond_0
    return-void
.end method

.method public static initializeACAlphaInput(Lcom/nuance/swype/connect/Connect;)V
    .locals 1
    .param p0, "connect"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/nuance/dlm/ACCoreInputDLM$1;

    invoke-direct {v0, p0}, Lcom/nuance/dlm/ACCoreInputDLM$1;-><init>(Lcom/nuance/swype/connect/Connect;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->doPostStart(Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static initializeACChineseDLM(Lcom/nuance/swype/connect/Connect;)V
    .locals 1
    .param p0, "connect"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 71
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/nuance/dlm/ACCoreInputDLM$3;

    invoke-direct {v0, p0}, Lcom/nuance/dlm/ACCoreInputDLM$3;-><init>(Lcom/nuance/swype/connect/Connect;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->doPostStart(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static initializeACKoreanInput(Lcom/nuance/swype/connect/Connect;)V
    .locals 1
    .param p0, "connect"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 45
    sget-object v0, Lcom/nuance/dlm/ACCoreInputDLM;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/nuance/dlm/ACCoreInputDLM$2;

    invoke-direct {v0, p0}, Lcom/nuance/dlm/ACCoreInputDLM$2;-><init>(Lcom/nuance/swype/connect/Connect;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/Connect;->doPostStart(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    return-void
.end method
