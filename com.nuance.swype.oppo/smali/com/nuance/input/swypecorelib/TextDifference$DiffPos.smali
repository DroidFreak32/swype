.class public final enum Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
.super Ljava/lang/Enum;
.source "TextDifference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/TextDifference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiffPos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

.field public static final enum END:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

.field public static final enum MIDDLE:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

.field public static final enum START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    .line 60
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->MIDDLE:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    .line 66
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->END:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->MIDDLE:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->END:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->$VALUES:[Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    return-object v0
.end method

.method public static values()[Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->$VALUES:[Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    invoke-virtual {v0}, [Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    return-object v0
.end method
