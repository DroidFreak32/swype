.class public final enum Lcom/nuance/speech/SpeechPopupView$PopupViewState;
.super Ljava/lang/Enum;
.source "SpeechPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/SpeechPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/speech/SpeechPopupView$PopupViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/speech/SpeechPopupView$PopupViewState;

.field public static final enum PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

.field public static final enum PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

.field public static final enum PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

.field public static final enum PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

.field public static final enum PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    const-string v1, "PopupView_Connecting"

    invoke-direct {v0, v1, v2}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 60
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    const-string v1, "PopupView_Ready"

    invoke-direct {v0, v1, v3}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 61
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    const-string v1, "PopupView_Listening"

    invoke-direct {v0, v1, v4}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 62
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    const-string v1, "PopupView_Processing"

    invoke-direct {v0, v1, v5}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 63
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    const-string v1, "PopupView_Paused"

    invoke-direct {v0, v1, v6}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->$VALUES:[Lcom/nuance/speech/SpeechPopupView$PopupViewState;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/speech/SpeechPopupView$PopupViewState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/speech/SpeechPopupView$PopupViewState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->$VALUES:[Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {v0}, [Lcom/nuance/speech/SpeechPopupView$PopupViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    return-object v0
.end method
