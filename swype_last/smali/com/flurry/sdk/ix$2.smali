.class final Lcom/flurry/sdk/ix$2;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ix;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/ix;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ix;I)V
    .registers 3

    .prologue
    .line 165
    iput-object p1, p0, Lcom/flurry/sdk/ix$2;->b:Lcom/flurry/sdk/ix;

    iput p2, p0, Lcom/flurry/sdk/ix$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 169
    iget v0, p0, Lcom/flurry/sdk/ix$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_12

    .line 170
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 1097
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_12

    .line 1450
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/ja;->j:Z

    .line 172
    :cond_12
    return-void
.end method
