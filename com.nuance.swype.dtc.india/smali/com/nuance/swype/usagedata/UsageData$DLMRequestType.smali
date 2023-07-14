.class public final enum Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DLMRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

.field public static final enum DLM_CONTENT_RESET:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

.field public static final enum DLM_WORD_DISCARDED:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;


# instance fields
.field private final requestType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    const-string/jumbo v1, "DLM_CONTENT_RESET"

    const-string/jumbo v2, "ET9AW_DLM_Request_ContentReset"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->DLM_CONTENT_RESET:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    .line 124
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    const-string/jumbo v1, "DLM_WORD_DISCARDED"

    const-string/jumbo v2, "ET9AW_DLM_Request_WordDiscarded"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->DLM_WORD_DISCARDED:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->DLM_CONTENT_RESET:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->DLM_WORD_DISCARDED:Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->requestType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$DLMRequestType;->requestType:Ljava/lang/String;

    return-object v0
.end method
