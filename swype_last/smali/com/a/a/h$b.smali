.class final Lcom/a/a/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/g$a",
        "<",
        "Lcom/a/a/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/i$b",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/a/a/x$a;

.field final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/i$b",
            "<*>;I",
            "Lcom/a/a/x$a;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/h$b;->a:Lcom/a/a/i$b;

    iput p2, p0, Lcom/a/a/h$b;->b:I

    iput-object p3, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    iput-boolean p4, p0, Lcom/a/a/h$b;->d:Z

    iput-boolean p5, p0, Lcom/a/a/h$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZB)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/a/a/h$b;-><init>(Lcom/a/a/i$b;ILcom/a/a/x$a;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/a/a/h$b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/h$b;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/a/a/h$b;)Lcom/a/a/x$a;
    .registers 2

    iget-object v0, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/a/a/x$a;
    .registers 2

    iget-object v0, p0, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/h$b;->d:Z

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 0
    check-cast p1, Lcom/a/a/h$b;

    .line 1000
    iget v0, p0, Lcom/a/a/h$b;->b:I

    iget v1, p1, Lcom/a/a/h$b;->b:I

    sub-int/2addr v0, v1

    .line 0
    return v0
.end method
