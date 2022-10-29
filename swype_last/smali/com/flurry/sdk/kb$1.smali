.class final Lcom/flurry/sdk/kb$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/jz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ka;

.field final synthetic b:Lcom/flurry/sdk/jz;

.field final synthetic c:Lcom/flurry/sdk/kb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kb;Lcom/flurry/sdk/ka;Lcom/flurry/sdk/jz;)V
    .registers 4

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flurry/sdk/kb$1;->c:Lcom/flurry/sdk/kb;

    iput-object p2, p0, Lcom/flurry/sdk/kb$1;->a:Lcom/flurry/sdk/ka;

    iput-object p3, p0, Lcom/flurry/sdk/kb$1;->b:Lcom/flurry/sdk/jz;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/kb$1;->a:Lcom/flurry/sdk/ka;

    iget-object v1, p0, Lcom/flurry/sdk/kb$1;->b:Lcom/flurry/sdk/jz;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/ka;->a(Lcom/flurry/sdk/jz;)V

    .line 137
    return-void
.end method
