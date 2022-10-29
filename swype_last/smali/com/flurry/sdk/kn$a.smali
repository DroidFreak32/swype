.class public final enum Lcom/flurry/sdk/kn$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/kn$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/kn$a;

.field public static final enum b:Lcom/flurry/sdk/kn$a;

.field public static final enum c:Lcom/flurry/sdk/kn$a;

.field public static final enum d:Lcom/flurry/sdk/kn$a;

.field public static final enum e:Lcom/flurry/sdk/kn$a;

.field public static final enum f:Lcom/flurry/sdk/kn$a;

.field private static final synthetic g:[Lcom/flurry/sdk/kn$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/flurry/sdk/kn$a;

    const-string/jumbo v1, "kUnknown"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/kn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kn$a;->a:Lcom/flurry/sdk/kn$a;

    .line 67
    new-instance v0, Lcom/flurry/sdk/kn$a;

    const-string/jumbo v1, "kGet"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/kn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    .line 68
    new-instance v0, Lcom/flurry/sdk/kn$a;

    const-string/jumbo v1, "kPost"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/kn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 69
    new-instance v0, Lcom/flurry/sdk/kn$a;

    const-string/jumbo v1, "kPut"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/kn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kn$a;->d:Lcom/flurry/sdk/kn$a;

    .line 70
    new-instance v0, Lcom/flurry/sdk/kn$a;

    const-string/jumbo v1, "kDelete"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/kn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kn$a;->e:Lcom/flurry/sdk/kn$a;

    .line 71
    new-instance v0, Lcom/flurry/sdk/kn$a;

    const-string/jumbo v1, "kHead"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kn$a;->f:Lcom/flurry/sdk/kn$a;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/kn$a;

    sget-object v1, Lcom/flurry/sdk/kn$a;->a:Lcom/flurry/sdk/kn$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/kn$a;->d:Lcom/flurry/sdk/kn$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/kn$a;->e:Lcom/flurry/sdk/kn$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/kn$a;->f:Lcom/flurry/sdk/kn$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/kn$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/kn$a;
    .registers 2

    .prologue
    .line 65
    const-class v0, Lcom/flurry/sdk/kn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kn$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/kn$a;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/flurry/sdk/kn$a;->g:[Lcom/flurry/sdk/kn$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/kn$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/kn$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/flurry/sdk/kn$2;->a:[I

    invoke-virtual {p0}, Lcom/flurry/sdk/kn$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 91
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 76
    :pswitch_d
    const-string/jumbo v0, "POST"

    goto :goto_c

    .line 79
    :pswitch_11
    const-string/jumbo v0, "PUT"

    goto :goto_c

    .line 82
    :pswitch_15
    const-string/jumbo v0, "DELETE"

    goto :goto_c

    .line 85
    :pswitch_19
    const-string/jumbo v0, "HEAD"

    goto :goto_c

    .line 88
    :pswitch_1d
    const-string/jumbo v0, "GET"

    goto :goto_c

    .line 74
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method
