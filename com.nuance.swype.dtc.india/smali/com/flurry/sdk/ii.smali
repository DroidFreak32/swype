.class public Lcom/flurry/sdk/ii;
.super Lcom/flurry/sdk/kp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ii$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field final d:I

.field final e:Lcom/flurry/sdk/ip;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:J

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Z

.field public m:Lcom/flurry/sdk/im;

.field private final u:I

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/ii;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ii;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/ip;Ljava/util/Map;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/flurry/sdk/ip;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/kp;-><init>()V

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/flurry/sdk/ii;->u:I

    .line 25
    const/16 v0, 0x7530

    iput v0, p0, Lcom/flurry/sdk/ii;->v:I

    .line 2058
    iput-object p4, p0, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 2059
    iput-object p4, p0, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 1042
    iput-wide p5, p0, Lcom/flurry/sdk/kp;->n:J

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/ii;->a_()V

    .line 51
    iput-object p1, p0, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/flurry/sdk/ii;->b:J

    .line 1071
    iput p7, p0, Lcom/flurry/sdk/kp;->s:I

    .line 56
    iput p7, p0, Lcom/flurry/sdk/ii;->c:I

    .line 57
    iput p8, p0, Lcom/flurry/sdk/ii;->d:I

    .line 58
    iput-object p9, p0, Lcom/flurry/sdk/ii;->e:Lcom/flurry/sdk/ip;

    .line 59
    iput-object p10, p0, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    .line 60
    iput p11, p0, Lcom/flurry/sdk/ii;->h:I

    .line 61
    iput p12, p0, Lcom/flurry/sdk/ii;->i:I

    .line 62
    iput-object p13, p0, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/flurry/sdk/ii;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/flurry/sdk/ii;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ii;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/flurry/sdk/ii;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ii;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ii;->c:I

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ii;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ii;->d:I

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ii;)Lcom/flurry/sdk/ip;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ii;->e:Lcom/flurry/sdk/ip;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/ii;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/ii;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/flurry/sdk/ii;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ii;->h:I

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/ii;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ii;->i:I

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/ii;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/flurry/sdk/ii;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/flurry/sdk/ii;->l:Z

    return v0
.end method


# virtual methods
.method public final a_()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/flurry/sdk/kp;->a_()V

    .line 2026
    iget v0, p0, Lcom/flurry/sdk/kp;->p:I

    .line 77
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    .line 79
    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ij;

    .line 141
    iput-object p0, v0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
