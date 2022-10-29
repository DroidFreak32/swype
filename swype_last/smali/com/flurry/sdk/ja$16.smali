.class final Lcom/flurry/sdk/ja$16;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/flurry/sdk/ja$16;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 306
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 306
    invoke-virtual {v0}, Lcom/flurry/sdk/if;->b()V

    .line 307
    return-void
.end method
