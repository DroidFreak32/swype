.class public final Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
.super Lcom/a/a/h;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$PredictionResultV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredictionResultV1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FIELD_NUMBER:I = 0x4

.field public static final FULLSPELL_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/a/a/p; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHRASE_FIELD_NUMBER:I = 0x1

.field public static final SPELL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

.field private static final serialVersionUID:J


# instance fields
.field private attribute_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fullSpell_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phrase_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spell_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    new-instance v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Z)V

    sput-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;Lcom/a/a/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 0
    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->initFields()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :cond_0
    :goto_0
    if-nez v2, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, p2, v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    and-int/lit8 v1, v0, 0x1

    if-eq v1, v3, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    or-int/lit8 v1, v0, 0x1

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/a/a/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v4

    and-int/lit8 v1, v0, 0x1

    if-eq v1, v3, :cond_14

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v1

    if-lez v1, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;
    :try_end_2
    .catch Lcom/a/a/j; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    or-int/lit8 v1, v0, 0x1

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/a/a/j; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1000
    :goto_3
    :try_start_4
    iput-object p0, v0, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    :cond_2
    and-int/lit8 v2, v1, 0x4

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-ne v1, v8, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->makeExtensionsImmutable()V

    throw v0

    :cond_5
    :try_start_5
    invoke-virtual {p1, v4}, Lcom/a/a/d;->e(I)V
    :try_end_5
    .catch Lcom/a/a/j; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_3
    and-int/lit8 v1, v0, 0x2

    if-eq v1, v6, :cond_13

    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;
    :try_end_6
    .catch Lcom/a/a/j; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    or-int/lit8 v1, v0, 0x2

    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/a/a/j; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_4
    :try_start_8
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v4

    and-int/lit8 v1, v0, 0x2

    if-eq v1, v6, :cond_12

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v1

    if-lez v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;
    :try_end_8
    .catch Lcom/a/a/j; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    or-int/lit8 v1, v0, 0x2

    :goto_6
    :try_start_9
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lcom/a/a/j; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_7
    :try_start_a
    new-instance v2, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/a/a/j;-><init>(Ljava/lang/String;)V

    .line 2000
    iput-object p0, v2, Lcom/a/a/j;->a:Lcom/a/a/n;

    .line 0
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :try_start_b
    invoke-virtual {p1, v4}, Lcom/a/a/d;->e(I)V
    :try_end_b
    .catch Lcom/a/a/j; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v1, v0, 0x4

    if-eq v1, v7, :cond_11

    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;
    :try_end_c
    .catch Lcom/a/a/j; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    or-int/lit8 v1, v0, 0x4

    :goto_8
    :try_start_d
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/a/a/j; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_6
    :try_start_e
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v4

    and-int/lit8 v1, v0, 0x4

    if-eq v1, v7, :cond_10

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v1

    if-lez v1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;
    :try_end_e
    .catch Lcom/a/a/j; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    or-int/lit8 v1, v0, 0x4

    :goto_9
    :try_start_f
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7
    invoke-virtual {p1, v4}, Lcom/a/a/d;->e(I)V
    :try_end_f
    .catch Lcom/a/a/j; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v1, v0, 0x8

    if-eq v1, v8, :cond_f

    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;
    :try_end_10
    .catch Lcom/a/a/j; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    or-int/lit8 v1, v0, 0x8

    :goto_a
    :try_start_11
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Lcom/a/a/j; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_8
    :try_start_12
    invoke-virtual {p1}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/a/a/d;->d(I)I

    move-result v1

    and-int/lit8 v4, v0, 0x8

    if-eq v4, v8, :cond_8

    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    or-int/lit8 v0, v0, 0x8

    :cond_8
    :goto_b
    invoke-virtual {p1}, Lcom/a/a/d;->w()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/a/a/d;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_2
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1, v1}, Lcom/a/a/d;->e(I)V
    :try_end_12
    .catch Lcom/a/a/j; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_7

    :cond_a
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v6, :cond_c

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    :cond_c
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v7, :cond_d

    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    :cond_d
    and-int/lit8 v0, v0, 0x8

    if-ne v0, v8, :cond_e

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    :cond_e
    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->makeExtensionsImmutable()V

    return-void

    :catchall_1
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto/16 :goto_4

    :cond_f
    move v1, v0

    goto/16 :goto_a

    :cond_10
    move v1, v0

    goto/16 :goto_9

    :cond_11
    move v1, v0

    goto/16 :goto_8

    :cond_12
    move v1, v0

    goto/16 :goto_6

    :cond_13
    move v1, v0

    goto/16 :goto_5

    :cond_14
    move v1, v0

    goto/16 :goto_2

    :cond_15
    move v1, v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
        0x20 -> :sswitch_7
        0x22 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/a/a/d;Lcom/a/a/f;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/d;Lcom/a/a/f;)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/h$a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/a/a/h;-><init>(Lcom/a/a/h$a;)V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;-><init>(Lcom/a/a/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->access$1900()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom(Ljava/io/InputStream;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0}, Lcom/a/a/p;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public static parseFrom([BLcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p0, p1}, Lcom/a/a/p;->parseFrom([BLcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method


# virtual methods
.method public final getAttribute(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->defaultInstance:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public final getFullSpell(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getFullSpellCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFullSpellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/a/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<",
            "Lcom/nuance/connect/proto/Prediction$PredictionResultV1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->PARSER:Lcom/a/a/p;

    return-object v0
.end method

.method public final getPhrase(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getPhraseCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPhraseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getPhraseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSpellList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v4, v0, v1

    move v1, v2

    move v3, v2

    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getFullSpellList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int v3, v0, v1

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6000
    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    .line 0
    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int v0, v3, v1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getAttributeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getSpell(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSpellCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getSpellList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;
    .locals 1

    invoke-static {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/a/a/h;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/a/a/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSerializedSize()I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->phrase_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->spell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->fullSpell_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->attribute_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/e;->a(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
