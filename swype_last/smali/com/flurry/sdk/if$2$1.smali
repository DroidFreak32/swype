.class final Lcom/flurry/sdk/if$2$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/if$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/flurry/sdk/if$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if$2;[B)V
    .registers 3

    .prologue
    .line 478
    iput-object p1, p0, Lcom/flurry/sdk/if$2$1;->b:Lcom/flurry/sdk/if$2;

    iput-object p2, p0, Lcom/flurry/sdk/if$2$1;->a:[B

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/if$2$1;->b:Lcom/flurry/sdk/if$2;

    iget-object v0, v0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iget-object v1, p0, Lcom/flurry/sdk/if$2$1;->b:Lcom/flurry/sdk/if$2;

    iget-wide v2, v1, Lcom/flurry/sdk/if$2;->a:J

    iget-object v1, p0, Lcom/flurry/sdk/if$2$1;->b:Lcom/flurry/sdk/if$2;

    iget-boolean v1, v1, Lcom/flurry/sdk/if$2;->b:Z

    iget-object v4, p0, Lcom/flurry/sdk/if$2$1;->a:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;JZ[B)V

    .line 482
    return-void
.end method
