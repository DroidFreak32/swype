.class public final enum Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
.super Ljava/lang/Enum;
.source "TextDifference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/TextDifference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/TextDifference$DiffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

.field public static final enum ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

.field public static final enum DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

.field public static final enum SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

.field public static final enum TOTAL_CHANGE:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    const-string v1, "ADDITION"

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    .line 32
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    const-string v1, "DELETION"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    .line 37
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    const-string v1, "SUBSTITUTION"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    .line 42
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    const-string v1, "TOTAL_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->TOTAL_CHANGE:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->TOTAL_CHANGE:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->$VALUES:[Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->$VALUES:[Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    return-object v0
.end method
