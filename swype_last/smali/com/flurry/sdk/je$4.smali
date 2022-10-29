.class final synthetic Lcom/flurry/sdk/je$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 134
    invoke-static {}, Lcom/flurry/sdk/je$a;->values()[Lcom/flurry/sdk/je$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flurry/sdk/je$4;->b:[I

    :try_start_9
    sget-object v0, Lcom/flurry/sdk/je$4;->b:[I

    sget-object v1, Lcom/flurry/sdk/je$a;->a:Lcom/flurry/sdk/je$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/je$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_50

    :goto_14
    :try_start_14
    sget-object v0, Lcom/flurry/sdk/je$4;->b:[I

    sget-object v1, Lcom/flurry/sdk/je$a;->b:Lcom/flurry/sdk/je$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/je$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_4e

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/flurry/sdk/je$4;->b:[I

    sget-object v1, Lcom/flurry/sdk/je$a;->c:Lcom/flurry/sdk/je$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/je$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_4c

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/flurry/sdk/je$4;->b:[I

    sget-object v1, Lcom/flurry/sdk/je$a;->d:Lcom/flurry/sdk/je$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/je$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_4a

    .line 72
    :goto_35
    invoke-static {}, Lcom/flurry/sdk/le$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flurry/sdk/je$4;->a:[I

    :try_start_3e
    sget-object v0, Lcom/flurry/sdk/je$4;->a:[I

    sget v1, Lcom/flurry/sdk/le$a;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_47} :catch_48

    :goto_47
    return-void

    :catch_48
    move-exception v0

    goto :goto_47

    :catch_4a
    move-exception v0

    goto :goto_35

    :catch_4c
    move-exception v0

    goto :goto_2a

    :catch_4e
    move-exception v0

    goto :goto_1f

    :catch_50
    move-exception v0

    goto :goto_14
.end method
