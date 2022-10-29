.class final Lcom/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/g$1;,
        Lcom/a/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/a/a/g$a",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/a/a/g;


# instance fields
.field private final a:Lcom/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/g;-><init>(B)V

    sput-object v0, Lcom/a/a/g;->d:Lcom/a/a/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->c:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/a/a/r;->a(I)Lcom/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/a/a/g;->c:Z

    invoke-static {v0}, Lcom/a/a/r;->a(I)Lcom/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    .line 1000
    iget-boolean v0, p0, Lcom/a/a/g;->b:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v0}, Lcom/a/a/r;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->b:Z

    .line 0
    :cond_18
    return-void
.end method

.method static a(Lcom/a/a/x$a;Z)I
    .registers 3

    .prologue
    .line 0
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    :goto_3
    return v0

    .line 4000
    :cond_4
    iget v0, p0, Lcom/a/a/x$a;->t:I

    goto :goto_3
.end method

.method public static a(Lcom/a/a/d;Lcom/a/a/x$a;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    sget-object v0, Lcom/a/a/g$1;->b:[I

    invoke-virtual {p1}, Lcom/a/a/x$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5000
    :pswitch_14
    invoke-virtual {p0}, Lcom/a/a/d;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 13000
    :goto_20
    return-object v0

    .line 6000
    :pswitch_21
    invoke-virtual {p0}, Lcom/a/a/d;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_20

    .line 7000
    :pswitch_2e
    invoke-virtual {p0}, Lcom/a/a/d;->t()J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_20

    .line 8000
    :pswitch_37
    invoke-virtual {p0}, Lcom/a/a/d;->t()J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_20

    .line 9000
    :pswitch_40
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v0

    .line 0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_20

    .line 10000
    :pswitch_49
    invoke-virtual {p0}, Lcom/a/a/d;->v()J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_20

    .line 11000
    :pswitch_52
    invoke-virtual {p0}, Lcom/a/a/d;->u()I

    move-result v0

    .line 0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_20

    .line 12000
    :pswitch_5b
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x1

    .line 0
    :goto_62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20

    .line 12000
    :cond_67
    const/4 v0, 0x0

    goto :goto_62

    .line 13000
    :pswitch_69
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v1

    iget v0, p0, Lcom/a/a/d;->b:I

    iget v2, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_88

    if-lez v1, :cond_88

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d;->a:[B

    iget v3, p0, Lcom/a/a/d;->d:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/a/a/d;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d;->d:I

    goto :goto_20

    :cond_88
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/a/a/d;->f(I)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_20

    .line 0
    :pswitch_95
    invoke-virtual {p0}, Lcom/a/a/d;->l()Lcom/a/a/c;

    move-result-object v0

    goto :goto_20

    :pswitch_9a
    invoke-virtual {p0}, Lcom/a/a/d;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_20

    .line 14000
    :pswitch_a4
    invoke-virtual {p0}, Lcom/a/a/d;->u()I

    move-result v0

    .line 0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_20

    .line 15000
    :pswitch_ae
    invoke-virtual {p0}, Lcom/a/a/d;->v()J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_20

    :pswitch_b8
    invoke-virtual {p0}, Lcom/a/a/d;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_20

    :pswitch_c2
    invoke-virtual {p0}, Lcom/a/a/d;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_20

    :pswitch_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_14
        :pswitch_21
        :pswitch_2e
        :pswitch_37
        :pswitch_40
        :pswitch_49
        :pswitch_52
        :pswitch_5b
        :pswitch_69
        :pswitch_95
        :pswitch_9a
        :pswitch_a4
        :pswitch_ae
        :pswitch_b8
        :pswitch_c2
        :pswitch_cc
        :pswitch_d5
        :pswitch_de
    .end packed-switch
.end method

.method private static a(Lcom/a/a/x$a;Ljava/lang/Object;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    sget-object v1, Lcom/a/a/g$1;->a:[I

    .line 3000
    iget-object v2, p0, Lcom/a/a/x$a;->s:Lcom/a/a/x$b;

    .line 0
    invoke-virtual {v2}, Lcom/a/a/x$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    :cond_16
    :goto_16
    if-nez v0, :cond_43

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_16

    :pswitch_24
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_16

    :pswitch_27
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_16

    :pswitch_2a
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_16

    :pswitch_2d
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_16

    :pswitch_30
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_16

    :pswitch_33
    instance-of v0, p1, Lcom/a/a/c;

    goto :goto_16

    :pswitch_36
    instance-of v0, p1, Lcom/a/a/i$a;

    goto :goto_16

    :pswitch_39
    instance-of v1, p1, Lcom/a/a/n;

    if-nez v1, :cond_41

    instance-of v1, p1, Lcom/a/a/k;

    if-eqz v1, :cond_16

    :cond_41
    const/4 v0, 0x1

    goto :goto_16

    :cond_43
    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/a/a/g$a;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/a/a/k;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/a/a/k;

    .line 2000
    invoke-virtual {v0}, Lcom/a/a/k;->b()V

    iget-object v0, v0, Lcom/a/a/k;->d:Lcom/a/a/n;

    .line 0
    :cond_11
    return-object v0
.end method

.method public final a(Lcom/a/a/g$a;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/g$a;->b()Z

    move-result v0

    if-eqz v0, :cond_41

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/a/a/g$a;->a()Lcom/a/a/x$a;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Ljava/lang/Object;)V

    goto :goto_21

    :cond_33
    move-object p2, v0

    :goto_34
    instance-of v0, p2, Lcom/a/a/k;

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->c:Z

    :cond_3b
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/r;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_41
    invoke-interface {p1}, Lcom/a/a/g$a;->a()Lcom/a/a/x$a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Ljava/lang/Object;)V

    goto :goto_34
.end method

.method public final b(Lcom/a/a/g$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/g$a;->b()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-interface {p1}, Lcom/a/a/g$a;->a()Lcom/a/a/x$a;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/a/a/g;->a(Lcom/a/a/x$a;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/a/a/g;->a(Lcom/a/a/g$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v1, p1, v0}, Lcom/a/a/r;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2a
    check-cast v0, Ljava/util/List;

    goto :goto_26
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 0
    .line 17000
    new-instance v2, Lcom/a/a/g;

    invoke-direct {v2}, Lcom/a/a/g;-><init>()V

    .line 16000
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v0}, Lcom/a/a/r;->c()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v0, v1}, Lcom/a/a/r;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/a/a/g;->a(Lcom/a/a/g$a;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_26
    iget-object v0, p0, Lcom/a/a/g;->a:Lcom/a/a/r;

    invoke-virtual {v0}, Lcom/a/a/r;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/g$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/a/a/g;->a(Lcom/a/a/g$a;Ljava/lang/Object;)V

    goto :goto_30

    :cond_4a
    iget-boolean v0, p0, Lcom/a/a/g;->c:Z

    iput-boolean v0, v2, Lcom/a/a/g;->c:Z

    .line 0
    return-object v2
.end method
