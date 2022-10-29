.class final synthetic Lcom/flurry/sdk/ja$8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/flurry/sdk/le$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flurry/sdk/ja$8;->a:[I

    :try_start_9
    sget-object v0, Lcom/flurry/sdk/ja$8;->a:[I

    sget v1, Lcom/flurry/sdk/le$a;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_34

    :goto_12
    :try_start_12
    sget-object v0, Lcom/flurry/sdk/ja$8;->a:[I

    sget v1, Lcom/flurry/sdk/le$a;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_32

    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/flurry/sdk/ja$8;->a:[I

    sget v1, Lcom/flurry/sdk/le$a;->d:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_24} :catch_30

    :goto_24
    :try_start_24
    sget-object v0, Lcom/flurry/sdk/ja$8;->a:[I

    sget v1, Lcom/flurry/sdk/le$a;->e:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_2d

    :catch_30
    move-exception v0

    goto :goto_24

    :catch_32
    move-exception v0

    goto :goto_1b

    :catch_34
    move-exception v0

    goto :goto_12
.end method
