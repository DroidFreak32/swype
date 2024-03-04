.class public final enum Lcom/nuance/swype/input/SpeechWrapper$State;
.super Ljava/lang/Enum;
.source "SpeechWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/SpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/SpeechWrapper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/SpeechWrapper$State;

.field public static final enum Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

.field public static final enum Started:Lcom/nuance/swype/input/SpeechWrapper$State;

.field public static final enum Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper$State;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/SpeechWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper$State;

    const-string v1, "Started"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/SpeechWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper$State;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/SpeechWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->$VALUES:[Lcom/nuance/swype/input/SpeechWrapper$State;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/SpeechWrapper$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/SpeechWrapper$State;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/SpeechWrapper$State;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->$VALUES:[Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/SpeechWrapper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/SpeechWrapper$State;

    return-object v0
.end method
