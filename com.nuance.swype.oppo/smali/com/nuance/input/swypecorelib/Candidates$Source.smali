.class public final enum Lcom/nuance/input/swypecorelib/Candidates$Source;
.super Ljava/lang/Enum;
.source "Candidates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/Candidates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/Candidates$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field public static final enum UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 10
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 11
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "RECAPTURE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 12
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "RECAPTURE_BY_TEXT_SELECTION"

    invoke-direct {v0, v1, v6}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 14
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "NEXT_WORD_PREDICTION"

    invoke-direct {v0, v1, v7}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 15
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "HWR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 16
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "SPEECH_ALTERNATES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 17
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "COMPLETIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 18
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "INVALID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 19
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "CAPS_EDIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 20
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "TOOL_TIP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 21
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    const-string v1, "UDB_EDIT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 8
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->$VALUES:[Lcom/nuance/input/swypecorelib/Candidates$Source;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->$VALUES:[Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/Candidates$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    return-object v0
.end method
