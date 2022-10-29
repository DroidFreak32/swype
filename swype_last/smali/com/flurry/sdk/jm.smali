.class public final enum Lcom/flurry/sdk/jm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/jm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/jm;

.field public static final enum b:Lcom/flurry/sdk/jm;

.field private static final synthetic e:[Lcom/flurry/sdk/jm;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/flurry/sdk/jm;

    const-string/jumbo v1, "DeviceId"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/jm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/jm;

    .line 5
    new-instance v0, Lcom/flurry/sdk/jm;

    const-string/jumbo v1, "AndroidAdvertisingId"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/jm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/jm;->b:Lcom/flurry/sdk/jm;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/jm;

    sget-object v1, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/jm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/jm;->b:Lcom/flurry/sdk/jm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/jm;->e:[Lcom/flurry/sdk/jm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/flurry/sdk/jm;->c:I

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jm;->d:Z

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/jm;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/flurry/sdk/jm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jm;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/jm;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/sdk/jm;->e:[Lcom/flurry/sdk/jm;

    invoke-virtual {v0}, [Lcom/flurry/sdk/jm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jm;

    return-object v0
.end method
