.class public final enum Lcom/flurry/sdk/jk$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/jk$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/jk$a;

.field public static final enum b:Lcom/flurry/sdk/jk$a;

.field public static final enum c:Lcom/flurry/sdk/jk$a;

.field public static final enum d:Lcom/flurry/sdk/jk$a;

.field private static final synthetic f:[Lcom/flurry/sdk/jk$a;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/flurry/sdk/jk$a;

    const-string/jumbo v1, "NONE_OR_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/jk$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/jk$a;

    .line 52
    new-instance v0, Lcom/flurry/sdk/jk$a;

    const-string/jumbo v1, "NETWORK_AVAILABLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/jk$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jk$a;->b:Lcom/flurry/sdk/jk$a;

    .line 53
    new-instance v0, Lcom/flurry/sdk/jk$a;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/jk$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jk$a;->c:Lcom/flurry/sdk/jk$a;

    .line 54
    new-instance v0, Lcom/flurry/sdk/jk$a;

    const-string/jumbo v1, "CELL"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/jk$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jk$a;->d:Lcom/flurry/sdk/jk$a;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/jk$a;

    sget-object v1, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/jk$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/jk$a;->b:Lcom/flurry/sdk/jk$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/jk$a;->c:Lcom/flurry/sdk/jk$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/jk$a;->d:Lcom/flurry/sdk/jk$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/jk$a;->f:[Lcom/flurry/sdk/jk$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/flurry/sdk/jk$a;->e:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/jk$a;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/flurry/sdk/jk$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jk$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/jk$a;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/flurry/sdk/jk$a;->f:[Lcom/flurry/sdk/jk$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/jk$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jk$a;

    return-object v0
.end method
