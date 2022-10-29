.class final Lcom/flurry/sdk/lb$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lb;->a(Ljava/io/InputStream;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lb;Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/flurry/sdk/lb$2;->a:Lcom/flurry/sdk/lb;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method
