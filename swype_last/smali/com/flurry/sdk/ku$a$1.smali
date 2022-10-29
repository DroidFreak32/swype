.class final Lcom/flurry/sdk/ku$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ku$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ku$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ku$a;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 28
    iput-object p1, p0, Lcom/flurry/sdk/ku$a$1;->a:Lcom/flurry/sdk/ku$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method
