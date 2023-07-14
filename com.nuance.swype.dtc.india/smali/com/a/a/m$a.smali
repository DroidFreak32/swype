.class final Lcom/a/a/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/m;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/a/a/m;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/m$a;->a:Lcom/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/m$a;->b:I

    invoke-virtual {p1}, Lcom/a/a/m;->b()I

    move-result v0

    iput v0, p0, Lcom/a/a/m$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/m;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/m$a;-><init>(Lcom/a/a/m;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/a/a/m$a;->a:Lcom/a/a/m;

    iget-object v0, v0, Lcom/a/a/m;->c:[B

    iget v1, p0, Lcom/a/a/m$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/m$a;->b:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/a/a/m$a;->b:I

    iget v1, p0, Lcom/a/a/m$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 1000
    invoke-virtual {p0}, Lcom/a/a/m$a;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
