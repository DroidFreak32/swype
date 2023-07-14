.class final Lcom/flurry/sdk/ja$2;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;J)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/flurry/sdk/ja$2;->b:Lcom/flurry/sdk/ja;

    iput-wide p2, p0, Lcom/flurry/sdk/ja$2;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 329
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 329
    iget-wide v2, p0, Lcom/flurry/sdk/ja$2;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/if;->a(J)V

    .line 330
    return-void
.end method
