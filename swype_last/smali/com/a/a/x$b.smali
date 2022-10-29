.class public final enum Lcom/a/a/x$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/x$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/x$b;

.field public static final enum b:Lcom/a/a/x$b;

.field public static final enum c:Lcom/a/a/x$b;

.field public static final enum d:Lcom/a/a/x$b;

.field public static final enum e:Lcom/a/a/x$b;

.field public static final enum f:Lcom/a/a/x$b;

.field public static final enum g:Lcom/a/a/x$b;

.field public static final enum h:Lcom/a/a/x$b;

.field public static final enum i:Lcom/a/a/x$b;

.field private static final synthetic k:[Lcom/a/a/x$b;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->c:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->d:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->e:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "STRING"

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->f:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/a/a/c;->a:Lcom/a/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->g:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->h:Lcom/a/a/x$b;

    new-instance v0, Lcom/a/a/x$b;

    const-string/jumbo v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/x$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/a/a/x$b;->i:Lcom/a/a/x$b;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/a/a/x$b;

    sget-object v1, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/x$b;->c:Lcom/a/a/x$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/x$b;->d:Lcom/a/a/x$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/a/a/x$b;->e:Lcom/a/a/x$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/x$b;->f:Lcom/a/a/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/x$b;->g:Lcom/a/a/x$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/x$b;->h:Lcom/a/a/x$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/a/a/x$b;->i:Lcom/a/a/x$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/x$b;->k:[Lcom/a/a/x$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/a/a/x$b;->j:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/x$b;
    .registers 2

    const-class v0, Lcom/a/a/x$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/x$b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/x$b;
    .registers 1

    sget-object v0, Lcom/a/a/x$b;->k:[Lcom/a/a/x$b;

    invoke-virtual {v0}, [Lcom/a/a/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/x$b;

    return-object v0
.end method
