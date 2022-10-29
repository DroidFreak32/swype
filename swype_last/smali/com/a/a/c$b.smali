.class final Lcom/a/a/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/a/a/e;

.field final b:[B


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/a/a/c$b;->b:[B

    iget-object v0, p0, Lcom/a/a/c$b;->b:[B

    invoke-static {v0}, Lcom/a/a/e;->a([B)Lcom/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c$b;->a:Lcom/a/a/e;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/c$b;-><init>(I)V

    return-void
.end method
