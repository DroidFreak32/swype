.class public final enum Lcom/nuance/speech/Dictation$RecordingState;
.super Ljava/lang/Enum;
.source "Dictation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/Dictation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/speech/Dictation$RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/speech/Dictation$RecordingState;

.field public static final enum Recording_Failed:Lcom/nuance/speech/Dictation$RecordingState;

.field public static final enum Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

.field public static final enum Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/nuance/speech/Dictation$RecordingState;

    const-string/jumbo v1, "Recording_Failed"

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/Dictation$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Failed:Lcom/nuance/speech/Dictation$RecordingState;

    .line 17
    new-instance v0, Lcom/nuance/speech/Dictation$RecordingState;

    const-string/jumbo v1, "Recording_Inprogress"

    invoke-direct {v0, v1, v3}, Lcom/nuance/speech/Dictation$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    .line 18
    new-instance v0, Lcom/nuance/speech/Dictation$RecordingState;

    const-string/jumbo v1, "Recording_Stopped"

    invoke-direct {v0, v1, v4}, Lcom/nuance/speech/Dictation$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/speech/Dictation$RecordingState;

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Failed:Lcom/nuance/speech/Dictation$RecordingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/speech/Dictation$RecordingState;->$VALUES:[Lcom/nuance/speech/Dictation$RecordingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/speech/Dictation$RecordingState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/nuance/speech/Dictation$RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/speech/Dictation$RecordingState;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/nuance/speech/Dictation$RecordingState;->$VALUES:[Lcom/nuance/speech/Dictation$RecordingState;

    invoke-virtual {v0}, [Lcom/nuance/speech/Dictation$RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/speech/Dictation$RecordingState;

    return-object v0
.end method
