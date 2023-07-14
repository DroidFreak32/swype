.class public final Lcom/a/a/h$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/a/a/n;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final c:Lcom/a/a/n;

.field final d:Lcom/a/a/h$b;


# direct methods
.method private constructor <init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/a/a/n;",
            "Lcom/a/a/h$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_0
    iget-object v0, p4, Lcom/a/a/h$b;->c:Lcom/a/a/x$a;

    .line 0
    sget-object v1, Lcom/a/a/x$a;->k:Lcom/a/a/x$a;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/a/h$c;->a:Lcom/a/a/n;

    iput-object p2, p0, Lcom/a/a/h$c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/a/a/h$c;->c:Lcom/a/a/n;

    iput-object p4, p0, Lcom/a/a/h$c;->d:Lcom/a/a/h$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/h$c;-><init>(Lcom/a/a/n;Ljava/lang/Object;Lcom/a/a/n;Lcom/a/a/h$b;)V

    return-void
.end method
