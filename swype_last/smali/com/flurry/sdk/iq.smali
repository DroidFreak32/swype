.class public final enum Lcom/flurry/sdk/iq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/iq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/iq;

.field public static final enum b:Lcom/flurry/sdk/iq;

.field public static final enum c:Lcom/flurry/sdk/iq;

.field public static final enum d:Lcom/flurry/sdk/iq;

.field private static final synthetic f:[Lcom/flurry/sdk/iq;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7
    new-instance v0, Lcom/flurry/sdk/iq;

    const-string/jumbo v1, "INSTALL"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/iq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/iq;

    .line 8
    new-instance v0, Lcom/flurry/sdk/iq;

    const-string/jumbo v1, "SESSION_START"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/iq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/iq;

    .line 9
    new-instance v0, Lcom/flurry/sdk/iq;

    const-string/jumbo v1, "SESSION_END"

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/sdk/iq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/iq;

    .line 10
    new-instance v0, Lcom/flurry/sdk/iq;

    const-string/jumbo v1, "APPLICATION_EVENT"

    invoke-direct {v0, v1, v4, v6}, Lcom/flurry/sdk/iq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/iq;

    .line 6
    new-array v0, v6, [Lcom/flurry/sdk/iq;

    sget-object v1, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/iq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/iq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/iq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/iq;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/iq;->f:[Lcom/flurry/sdk/iq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/flurry/sdk/iq;->e:I

    .line 16
    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/iq;
    .registers 2

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_12

    .line 30
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 21
    :pswitch_5
    sget-object v0, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/iq;

    goto :goto_4

    .line 23
    :pswitch_8
    sget-object v0, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/iq;

    goto :goto_4

    .line 25
    :pswitch_b
    sget-object v0, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/iq;

    goto :goto_4

    .line 27
    :pswitch_e
    sget-object v0, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/iq;

    goto :goto_4

    .line 19
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/iq;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/iq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/iq;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/iq;->f:[Lcom/flurry/sdk/iq;

    invoke-virtual {v0}, [Lcom/flurry/sdk/iq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/iq;

    return-object v0
.end method
