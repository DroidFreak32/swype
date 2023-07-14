.class public final enum Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
.super Ljava/lang/Enum;
.source "SpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/SpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field public static final enum DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field public static final enum NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    const-string/jumbo v1, "NVC"

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 38
    new-instance v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    const-string/jumbo v1, "DRAGON_NLU"

    invoke-direct {v0, v1, v3, v3}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->$VALUES:[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->index:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->$VALUES:[Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-virtual {v0}, [Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->index:I

    return v0
.end method
