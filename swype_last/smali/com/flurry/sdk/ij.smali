.class public Lcom/flurry/sdk/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ij$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/flurry/sdk/ik;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/flurry/sdk/ii;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ij;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ii;JJI)V
    .registers 9

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ij;->k:J

    .line 33
    iput-object p1, p0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 34
    iput-wide p2, p0, Lcom/flurry/sdk/ij;->b:J

    .line 35
    iput-wide p4, p0, Lcom/flurry/sdk/ij;->c:J

    .line 36
    iput p6, p0, Lcom/flurry/sdk/ij;->a:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/ij;->e:I

    .line 39
    sget-object v0, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    iput-object v0, p0, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 1147
    iget-object v0, v0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-boolean v0, p0, Lcom/flurry/sdk/ij;->d:Z

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 2131
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/ii;->l:Z

    .line 49
    :cond_10
    return-void
.end method
