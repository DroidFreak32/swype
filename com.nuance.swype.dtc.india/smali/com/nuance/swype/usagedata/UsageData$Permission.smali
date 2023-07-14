.class public final enum Lcom/nuance/swype/usagedata/UsageData$Permission;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$Permission;

.field public static final enum READ_CALL_LOG_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

.field public static final enum READ_CONTACTS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

.field public static final enum READ_SMS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

.field public static final enum RECORD_AUDIO_KB_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

.field public static final enum RECORD_AUDIO_SHOW_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    const-string/jumbo v1, "READ_CALL_LOG_CALL_LOGS"

    const-string/jumbo v2, "READ_CALL_LOG (Call Logs)"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_CALL_LOG_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    .line 213
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    const-string/jumbo v1, "READ_CONTACTS_CALL_LOGS"

    const-string/jumbo v2, "READ_CONTACTS (Call Logs)"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_CONTACTS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    .line 214
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    const-string/jumbo v1, "READ_SMS_CALL_LOGS"

    const-string/jumbo v2, "READ_SMS (Call Logs)"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_SMS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    .line 215
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    const-string/jumbo v1, "RECORD_AUDIO_KB_VOICE_KEY"

    const-string/jumbo v2, "RECORD_AUDIO (Keyboard Voice Key)"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->RECORD_AUDIO_KB_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

    .line 216
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    const-string/jumbo v1, "RECORD_AUDIO_SHOW_VOICE_KEY"

    const-string/jumbo v2, "RECORD_AUDIO (Show Voice Key)"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->RECORD_AUDIO_SHOW_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

    .line 211
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$Permission;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_CALL_LOG_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_CONTACTS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Permission;->READ_SMS_CALL_LOGS:Lcom/nuance/swype/usagedata/UsageData$Permission;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Permission;->RECORD_AUDIO_KB_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Permission;->RECORD_AUDIO_SHOW_VOICE_KEY:Lcom/nuance/swype/usagedata/UsageData$Permission;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$Permission;

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
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$Permission;->action:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$Permission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$Permission;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$Permission;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Permission;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$Permission;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$Permission;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$Permission;->action:Ljava/lang/String;

    return-object v0
.end method
