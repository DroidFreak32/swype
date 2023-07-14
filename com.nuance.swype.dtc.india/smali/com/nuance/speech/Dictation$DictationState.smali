.class public final enum Lcom/nuance/speech/Dictation$DictationState;
.super Ljava/lang/Enum;
.source "Dictation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/Dictation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DictationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/speech/Dictation$DictationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/speech/Dictation$DictationState;

.field public static final enum Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

.field public static final enum Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

.field public static final enum Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

.field public static final enum Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/nuance/speech/Dictation$DictationState;

    const-string/jumbo v1, "Dictation_Failed"

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/Dictation$DictationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

    .line 23
    new-instance v0, Lcom/nuance/speech/Dictation$DictationState;

    const-string/jumbo v1, "Dictation_Inprogress"

    invoke-direct {v0, v1, v3}, Lcom/nuance/speech/Dictation$DictationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    .line 24
    new-instance v0, Lcom/nuance/speech/Dictation$DictationState;

    const-string/jumbo v1, "Dictation_Canceled"

    invoke-direct {v0, v1, v4}, Lcom/nuance/speech/Dictation$DictationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

    .line 25
    new-instance v0, Lcom/nuance/speech/Dictation$DictationState;

    const-string/jumbo v1, "Dictation_Stopped"

    invoke-direct {v0, v1, v5}, Lcom/nuance/speech/Dictation$DictationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/speech/Dictation$DictationState;

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Failed:Lcom/nuance/speech/Dictation$DictationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Canceled:Lcom/nuance/speech/Dictation$DictationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/speech/Dictation$DictationState;->$VALUES:[Lcom/nuance/speech/Dictation$DictationState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/speech/Dictation$DictationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/nuance/speech/Dictation$DictationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/Dictation$DictationState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/speech/Dictation$DictationState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/nuance/speech/Dictation$DictationState;->$VALUES:[Lcom/nuance/speech/Dictation$DictationState;

    invoke-virtual {v0}, [Lcom/nuance/speech/Dictation$DictationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/speech/Dictation$DictationState;

    return-object v0
.end method
