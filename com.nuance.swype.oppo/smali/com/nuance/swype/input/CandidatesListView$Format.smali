.class public final enum Lcom/nuance/swype/input/CandidatesListView$Format;
.super Ljava/lang/Enum;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/CandidatesListView$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/CandidatesListView$Format;

.field public static final enum DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

.field public static final enum FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

.field public static final enum NONE:Lcom/nuance/swype/input/CandidatesListView$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/nuance/swype/input/CandidatesListView$Format;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    .line 45
    new-instance v0, Lcom/nuance/swype/input/CandidatesListView$Format;

    const-string v1, "FIT_AS_MUCH"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/CandidatesListView$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

    .line 46
    new-instance v0, Lcom/nuance/swype/input/CandidatesListView$Format;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/CandidatesListView$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/CandidatesListView$Format;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->$VALUES:[Lcom/nuance/swype/input/CandidatesListView$Format;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/CandidatesListView$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$Format;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/CandidatesListView$Format;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->$VALUES:[Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/CandidatesListView$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/CandidatesListView$Format;

    return-object v0
.end method
