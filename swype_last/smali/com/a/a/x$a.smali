.class public enum Lcom/a/a/x$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/x$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/x$a;

.field public static final enum b:Lcom/a/a/x$a;

.field public static final enum c:Lcom/a/a/x$a;

.field public static final enum d:Lcom/a/a/x$a;

.field public static final enum e:Lcom/a/a/x$a;

.field public static final enum f:Lcom/a/a/x$a;

.field public static final enum g:Lcom/a/a/x$a;

.field public static final enum h:Lcom/a/a/x$a;

.field public static final enum i:Lcom/a/a/x$a;

.field public static final enum j:Lcom/a/a/x$a;

.field public static final enum k:Lcom/a/a/x$a;

.field public static final enum l:Lcom/a/a/x$a;

.field public static final enum m:Lcom/a/a/x$a;

.field public static final enum n:Lcom/a/a/x$a;

.field public static final enum o:Lcom/a/a/x$a;

.field public static final enum p:Lcom/a/a/x$a;

.field public static final enum q:Lcom/a/a/x$a;

.field public static final enum r:Lcom/a/a/x$a;

.field private static final synthetic u:[Lcom/a/a/x$a;


# instance fields
.field final s:Lcom/a/a/x$b;

.field final t:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "DOUBLE"

    sget-object v2, Lcom/a/a/x$b;->d:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->a:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "FLOAT"

    sget-object v2, Lcom/a/a/x$b;->c:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->b:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "INT64"

    sget-object v2, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->c:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "UINT64"

    sget-object v2, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->d:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->e:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "FIXED64"

    sget-object v2, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->f:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->g:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/a/a/x$b;->e:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->h:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/y;

    const-string/jumbo v1, "STRING"

    sget-object v2, Lcom/a/a/x$b;->f:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2}, Lcom/a/a/y;-><init>(Ljava/lang/String;Lcom/a/a/x$b;)V

    sput-object v0, Lcom/a/a/x$a;->i:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/z;

    const-string/jumbo v1, "GROUP"

    sget-object v2, Lcom/a/a/x$b;->i:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2}, Lcom/a/a/z;-><init>(Ljava/lang/String;Lcom/a/a/x$b;)V

    sput-object v0, Lcom/a/a/x$a;->j:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/aa;

    const-string/jumbo v1, "MESSAGE"

    sget-object v2, Lcom/a/a/x$b;->i:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2}, Lcom/a/a/aa;-><init>(Ljava/lang/String;Lcom/a/a/x$b;)V

    sput-object v0, Lcom/a/a/x$a;->k:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/ab;

    const-string/jumbo v1, "BYTES"

    sget-object v2, Lcom/a/a/x$b;->g:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2}, Lcom/a/a/ab;-><init>(Ljava/lang/String;Lcom/a/a/x$b;)V

    sput-object v0, Lcom/a/a/x$a;->l:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->m:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/a/a/x$b;->h:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->n:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->o:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->p:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/a/a/x$b;->a:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->q:Lcom/a/a/x$a;

    new-instance v0, Lcom/a/a/x$a;

    const-string/jumbo v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/a/a/x$b;->b:Lcom/a/a/x$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    sput-object v0, Lcom/a/a/x$a;->r:Lcom/a/a/x$a;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/a/a/x$a;

    sget-object v1, Lcom/a/a/x$a;->a:Lcom/a/a/x$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/x$a;->b:Lcom/a/a/x$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/x$a;->c:Lcom/a/a/x$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/a/a/x$a;->d:Lcom/a/a/x$a;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/a/a/x$a;->e:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/a/a/x$a;->f:Lcom/a/a/x$a;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/x$a;->g:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/x$a;->h:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/a/a/x$a;->i:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/a/a/x$a;->j:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/a/a/x$a;->k:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/a/a/x$a;->l:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/a/a/x$a;->m:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/a/a/x$a;->n:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/a/a/x$a;->o:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/a/a/x$a;->p:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/a/a/x$a;->q:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/a/a/x$a;->r:Lcom/a/a/x$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/x$a;->u:[Lcom/a/a/x$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/a/a/x$b;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/x$b;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/a/a/x$a;->s:Lcom/a/a/x$b;

    iput p4, p0, Lcom/a/a/x$a;->t:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/x$b;IB)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/x$a;-><init>(Ljava/lang/String;ILcom/a/a/x$b;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/x$a;
    .registers 2

    const-class v0, Lcom/a/a/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/x$a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/x$a;
    .registers 1

    sget-object v0, Lcom/a/a/x$a;->u:[Lcom/a/a/x$a;

    invoke-virtual {v0}, [Lcom/a/a/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/x$a;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
