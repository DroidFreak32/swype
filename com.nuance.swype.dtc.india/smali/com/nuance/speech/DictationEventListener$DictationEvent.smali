.class public final enum Lcom/nuance/speech/DictationEventListener$DictationEvent;
.super Ljava/lang/Enum;
.source "DictationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/DictationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DictationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/speech/DictationEventListener$DictationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Connection_Connected:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Connection_DisConnect:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Connection_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Connection_InProgress:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Dictation_Canceled:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Dictation_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Dictation_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Dictation_Stopped:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Dictation_UpdateResult:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Speech_AudioLevel:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Speech_End_Of_Speech:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Speech_Language_Change:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Speech_Session_Ended:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Speech_Start_Of_Speech:Lcom/nuance/speech/DictationEventListener$DictationEvent;

.field public static final enum Speech_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Connection_Failed"

    invoke-direct {v0, v1, v3}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 6
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Connection_InProgress"

    invoke-direct {v0, v1, v4}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_InProgress:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 7
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Connection_Connected"

    invoke-direct {v0, v1, v5}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Connected:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 8
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Connection_DisConnect"

    invoke-direct {v0, v1, v6}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_DisConnect:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 10
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Dictation_Started"

    invoke-direct {v0, v1, v7}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 11
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Dictation_UpdateResult"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_UpdateResult:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 12
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Dictation_Failed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 13
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Dictation_Canceled"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Canceled:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 14
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Dictation_Stopped"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Stopped:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 16
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Speech_Started"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 17
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Speech_Start_Of_Speech"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Start_Of_Speech:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 18
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Speech_End_Of_Speech"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_End_Of_Speech:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 19
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Speech_AudioLevel"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_AudioLevel:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 20
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Speech_Language_Change"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Language_Change:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 23
    new-instance v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const-string/jumbo v1, "Speech_Session_Ended"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Session_Ended:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    .line 4
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/nuance/speech/DictationEventListener$DictationEvent;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_InProgress:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_Connected:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Connection_DisConnect:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_UpdateResult:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Failed:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Canceled:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Dictation_Stopped:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Started:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Start_Of_Speech:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_End_Of_Speech:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_AudioLevel:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Language_Change:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Session_Ended:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->$VALUES:[Lcom/nuance/speech/DictationEventListener$DictationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;

    return-object v0
.end method

.method public static values()[Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/nuance/speech/DictationEventListener$DictationEvent;->$VALUES:[Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v0}, [Lcom/nuance/speech/DictationEventListener$DictationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/speech/DictationEventListener$DictationEvent;

    return-object v0
.end method
