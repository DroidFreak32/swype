.class final Lcom/flurry/sdk/ir$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ir;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ir;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flurry/sdk/ir$1;->a:Lcom/flurry/sdk/ir;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method
