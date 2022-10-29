.class final Lcom/flurry/sdk/if$3;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/if;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/if;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if;)V
    .registers 2

    .prologue
    .line 928
    iput-object p1, p0, Lcom/flurry/sdk/if$3;->a:Lcom/flurry/sdk/if;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/flurry/sdk/if$3;->a:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;)V

    .line 932
    return-void
.end method
